# frozen_string_literal: true

# Adds a date of creation or renewed date of changing cards info
class CreateUpdateCard
  def call(obj)
    set_or_update_review_date(obj)
  end

  private

  def set_or_update_review_date(obj)
    if obj.class == ActionController::Parameters
      card = Card.new(obj)
      card.assign_attributes(review_date: DateTime.now)
      return card
    else
      obj.assign_attributes(review_date: obj.review_date.next_day(3))
      return obj
    end
  end
end
