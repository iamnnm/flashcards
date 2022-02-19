#  frozen_string_literal: true

class BaseCard
  private

  def assign_a_date(card, date)
    card.assign_attributes(review_date: date)
    card
  end
end
