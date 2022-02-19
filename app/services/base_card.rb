#  frozen_string_literal: true

class BaseCard < ApplicationService
  attr_reader :params

  def initialize(params)
    @params = params
  end

  private

  def assign_a_date(card, date)
    card.assign_attributes(review_date: date)
    card
  end
end
