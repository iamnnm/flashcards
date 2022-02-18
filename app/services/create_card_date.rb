# frozen_string_literal: true

# Adds the date creation card
class CreateCardDate < BaseCardDate
  def call(obj)
    create_card_date(obj)
  end

  private

  def create_card_date(obj)
    card = Card.new(obj)
    card.assign_attributes(review_date: DateTime.now)
    card
  end
end
