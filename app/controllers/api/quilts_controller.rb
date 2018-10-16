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
    @quilt = Product.find_by(id: params["id"])
    render "show.json.jbuilder"
  end

  def update
    @quilt = Product.find_by(id: params["id"])
    @quilt.name = params["name"] || @quilt.name
    @quilt.size = params["size"] || @quilt.size
    @quilt.description = params["description"] || @quilt.description
    @quilt.price = params["price"] || @quilt.price
    @quilt.save
    render "show.json.jbuilder"
  end
end
