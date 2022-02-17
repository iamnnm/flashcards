# frozen_string_literal: true

class Card < ApplicationRecord
  before_validation :set_or_update_review_date

  validates :original_text, presence: true, length: { maximum: 11 }
  validates :translated_text, presence: true
  validates :review_date, presence: true
  validate :original_and_translated_texts_cannot_be_similar

  private

  # Adding a date of creation or renewed date of changing cards info
  def set_or_update_review_date
    if self.review_date == nil
      self.review_date = DateTime.now
    else
      self.review_date = review_date.next_day(3)
    end
  end

  def original_and_translated_texts_cannot_be_similar
    if original_text == translated_text
      errors.add(:original_and_translated_text, I18n.t('errors.messages.original_and_translated_text'))
    end
  end
end
