# frozen_string_literal: true

class Card < ApplicationRecord
  validates :original_text, presence: true, length: { maximum: 11 }
  validates :translated_text, presence: true
  validates :review_date, presence: true
end
