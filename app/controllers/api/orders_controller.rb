class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @list = Order.all
    @list = @list.order(:id => :asc)
    render "index.json.jbuilder"
  end

  def create
    calc_subtotal = 0
    calc_tax = 0
    calc_total = 0

    carted_products = current_user.carted_products.where(status: "Carted")
    carted_products.each do |carted_product|
      calc_subtotal += carted_product.product.price * carted_product.quantity
      calc_tax += carted_product.product.tax * carted_product.quantity
    end

    calc_total = calc_subtotal + calc_tax

    product = CartedProduct.where(user_id: current_user.id, status: "Carted")
    product= product.order(:id => :asc)
    @order = Order.new(
      user_id: current_user.id,
      subtotal: calc_subtotal,
      tax: calc_tax,
      total: calc_total)

    if @order.save
      render json: {message: "Order successfully submitted!"}
    else
      render json: {errors: @order.errors.full_messages, status: :bad_request}
    end

    carted_products.each do |carted_product|
      carted_product.update(status: "Purchased", order_id: @order.id)
    end

  end
end
