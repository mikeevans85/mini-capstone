class Api::CartedProductsController < ApplicationController
  def index
    @list = CartedProduct.where(user_id: current_user.id, status: "Carted")
    @list = @list.order(:user_id => :asc)
    render "index.json.jbuilder"
  end

  def create
    @carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params["product_id"].to_i,
      quantity: params["quantity"].to_i,
      status: "Carted",
      order_id: nil
      )
    @carted_product.save
    if @carted_product.save
      render "show.json.jbuilder"
    else
      render json: {errors: @carted_product.errors.full_messages}, status: :bad_request
    end
  end
end
