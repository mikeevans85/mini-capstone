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
      )
    if @carted_product.save
      render "show.json.jbuilder"
    else
      render json: {errors: @carted_product.errors.full_messages}, status: :bad_request
    end
  end

  def destroy
    @carted_product = CartedProduct.find_by(id: params[:id])
    @carted_product.status = "removed"
    @carted_product.save
    render json: {message: "Product successfully deleted!"}
  end
end
