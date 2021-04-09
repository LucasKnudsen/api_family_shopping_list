class Api::GroceriesController < ApplicationController
  def index
    groceries = Grocery.all
    render json: { groceries: groceries }
  end
end
