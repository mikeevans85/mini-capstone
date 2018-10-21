class Api::QuiltsController < ApplicationController
  def index
    @quilts = Product.all
    @quilts = @quilts.order(:id => :desc)
    input_name = params["name"]
    input_price = params["price"]
    if input_name
      @quilts = @quilts.where("name ILIKE ?", "%#{input_name}%")
    elsif input_price
      @quilts = @quilts.where("price = ?", "#{input_price}")
    end
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
    if @quilt.save
      render "show.json.jbuilder"
    else
      render json: {errors: @quilt.errors.full_messages}, status: 422
    end
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
    # @quilt.image_url = params["image"] || @quilt.image_url
    @quilt.save
    if @quilt.save
      render "show.json.jbuilder"
    else
      render json: {errors: @quilt.errors.full_messages}, status: 422
    end
  end

  def destroy
    @quilt = Product.find_by(id: params["id"])
    @quilt.destroy
    render json: {message: "Your quilt has sadly and successfully been deleted."}
  end
end
