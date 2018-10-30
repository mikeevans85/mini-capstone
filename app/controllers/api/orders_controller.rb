class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def index
    @list = Order.all
    @list = @list.order(:id => :asc)
    render "index.json.jbuilder"
  end

  def create
    @order = CartedProduct.where(status: "Carted")
    @order = @order.order(:id => :asc)
    @x = Order.new(
      )
    subtotal = 
    render "order.json.jbuilder"
  end
end
