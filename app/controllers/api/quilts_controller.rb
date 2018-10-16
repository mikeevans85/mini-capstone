class Api::QuiltsController < ApplicationController
  def index
    @quilts = Product.all
    render "index.json.jbuilder"
  end

  def create
    @quilt = Product.new(
      name: params["name"],
      size: params["size"],
      description: params["description"],
      price: params["price"],
      )
    @quilt.save
    render "show.json.jbuilder"
  end

  def show
    input = params["id"]
    @quilt = Product.find_by(id: input)
    render "show.json.jbuilder"
  end
end
