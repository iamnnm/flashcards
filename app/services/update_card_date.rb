# frozen_string_literal: true

# Updates the date creation card to a new date
class UpdateCardDate < BaseCardDate
  def call(obj)
    update_card_date(obj)
  end

  private

  def update_card_date(obj)
    obj.assign_attributes(review_date: obj.review_date.next_day(3))
    obj
  end
end
