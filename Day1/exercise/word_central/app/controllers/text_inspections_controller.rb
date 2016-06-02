# app/controllers/text_inspections_controller.rb

class TextInspectionsController < ApplicationController
  def new
    render "new"
  end

  # ***** New *****
  def create
    @text = params[:text_inspection][:user_text].inspect

    @word_count = @text.split(" ").length

    @estimated_reading_time = ((@word_count.to_f * 60.to_f) / 275.to_f)

    counted_words = @text.split(" ").each_with_object(Hash.new(0)) {|word,counts| counts[word] += 1}
    @counted_sorted_words = counted_words.sort_by {|word, counts| counts}
    @counted_sorted_words = @counted_sorted_words.to_a.reverse.to_h

    @ten_words = @counted_sorted_words.first(10)

    render "results"
  end
end
