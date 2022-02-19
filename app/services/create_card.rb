# frozen_string_literal: true

class CreateCard < BaseCard
  def call(card_params)
    card_params[:review_date] = DateTime.now
    assign_a_date(card_params)
  end
end
