#  frozen_string_literal: true

class BaseCard
  attr_reader :id

  def initialize(id=nil)
    @card = if id.nil?
              Card.new
            else
              Card.find(id)
            end
  end

  private

  def assign_a_date(card_params)
    @card.assign_attributes(card_params)
    @card
  end
end
