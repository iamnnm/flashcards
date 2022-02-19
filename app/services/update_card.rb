# frozen_string_literal: true

class UpdateCard < BaseCard
  def call
    card = Card.find(params[:id])
    assign_a_date(card, card.review_date.next_day(3))
  end
end
