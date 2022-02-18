# frozen_string_literal: true

class CardsController < ApplicationController
  before_action :set_card, only: %i[show edit update destroy]

  def index
    @cards = Card.all
  end

  def show; end

  def new
    @card = Card.new
  end

  def edit; end

  def create
    @card = CreateCardDate.new.call(card_params)

    if @card.save
      redirect_to @card, notice: I18n.t('controllers.notices.create')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @card = CreateUpdateCard.new.call(@card)

    if @card.update(card_params)
      redirect_to @card, notice: I18n.t('controllers.notices.update')
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @card.destroy!

    redirect_to cards_path
  end

  private

  def set_card
    @card = Card.find(params[:id])
  end

  def card_params
    params.require(:card).permit(:original_text, :translated_text)
  end
end
