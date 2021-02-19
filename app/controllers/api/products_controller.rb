class Api::ProductsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def index
    products = Product.all 
    render json: { products: products }
  end

  def create
    product = current_user.products.create(product_params)
    if product.persisted?
      render json: { message: 'Your product was successfully created!' }, status: 201
    else
      render json: { message: product.errors.full_messages.to_sentence }, status: 422
    end
  end

  private

  def product_params
    params.require(:product).permit(:title, :user_id)
  end
end
