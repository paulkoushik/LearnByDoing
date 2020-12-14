class StoreController < ApplicationController
  def index
      @topics = Topics.order(:title)
  end
end
