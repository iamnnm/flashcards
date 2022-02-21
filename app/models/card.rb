# frozen_string_literal: true

class Card < ApplicationRecord
  validates :original_text, presence: true
  validates :translated_text, presence: true
  validates :review_date, presence: true
  validate :original_and_translated_texts_cannot_be_similar

  private

  def original_and_translated_texts_cannot_be_similar
    if original_text == translated_text
      errors.add :original_text, :similar_with_translated_text
      errors.add :translated_text, :similar_with_original_text
    end
  end
end
