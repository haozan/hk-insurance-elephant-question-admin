class HomeController < ApplicationController
  include HomeDemoConcern

  def index
    @full_render = true
    @question_bank_stats = ContentSnapshot.question_bank_stats
    @paper_count = @question_bank_stats.length
    @question_count = @question_bank_stats.sum { |paper| paper.fetch(:question_count) }
  end
end
