class Api::QuiltsController < ApplicationController
  def index
    @quilts = Product.all
    render "index.json.jbuilder"
  end

  def show
    input = params["id"]
    @quilt = Product.find_by(id: input)
    render "show.json.jbuilder"
  end
end
