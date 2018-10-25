class Api::OrdersController < ApplicationController
  def create
    @order = Order.new(
    user_id: current_user.id,
    product_id: params["product_id"],
    quantity: params["quantity"]
    # subtotal
    # tax
    # total
    )
    @order.save
    render json: {message: "Order submitted successfully!"}
  end
end
