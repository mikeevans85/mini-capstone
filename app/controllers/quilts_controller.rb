class QuiltsController < ApplicationController
  def index
    @quilts = Product.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @quilt = Product.new(
      name: params[:Quilt],
      price: params[:Price].to_i,
      size: params[:Size],
      description: params[:Description],
      supplier_id: 1
      )
    @quilt.save
    id = @quilt.id
    redirect_to "/quilts/#{id}"
  end

  def show
    @quilt = Product.find_by(id: params[:id])
    render "show.html.erb"
  end
end
