# frozen_string_literal: true

class UpdateCard < BaseCard
  attr_reader :id

  def initialize(id)
    @id = id
  end

  def call(card_params)
    card = Card.find(@id)
    card.assign_attributes(card_params)
    assign_a_date(card, card.review_date.next_day(3))
  end
end
