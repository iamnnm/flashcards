# frozen_string_literal: true

class CreateCard < BaseCard
  def call(card_params)
    card = Card.new(card_params)
    assign_a_date(card, DateTime.now)
  end
end
