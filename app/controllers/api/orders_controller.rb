class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @list = Order.all
    @list = @list.order(:id => :asc)
    render "index.json.jbuilder"
  end

  def create
    @quilt = Product.find_by(id: params["product_id"])
    @order = Order.new(
    user_id: current_user.id,
    product_id: params["product_id"],
    quantity: params["quantity"].to_i,
    subtotal: @quilt.price * params["quantity"].to_i,
    tax: @quilt.tax * params["quantity"].to_i,
    total: @quilt.total * params["quantity"].to_i
   )
    @order.save
    render "order.json.jbuilder"
  end
end
