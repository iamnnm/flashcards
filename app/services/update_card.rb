# frozen_string_literal: true

class UpdateCard < BaseCard
  def call(card_params)
    card_params[:review_date] = @card.review_date.next_day(3)
    assign_a_date(card_params)
  end
end
