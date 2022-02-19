# frozen_string_literal: true

class CreateCard < BaseCard
  def call
    card = Card.new(params)
    assign_a_date(card, DateTime.now)
  end
end
