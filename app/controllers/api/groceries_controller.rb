class Api::GroceriesController < ApplicationController
  def index
    groceries = Grocery.all
    render json: { groceries: groceries }
  end

  def create
    new_item = Grocery.create(name: params[:name])
    render status: 201
  end

  def destroy
    Grocery.delete(params[:id])
  end
end
