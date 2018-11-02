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

  def edit
    @quilt = Product.find_by(id: params[:id])
    render "edit.html.erb"
  end

  def update
    @quilt = Product.find_by(id: params[:id])
    @quilt.name = params[:Quilt],
    @quilt.price = params[:Price].to_i,
    @quilt.size = params[:Size],
    @quilt.description = params[:Description],
    @quilt.save
    redirect_to "/quilts"
  end

  def destroy
    @quilt = Product.find_by(id: params[:id])
    @quilt.destroy
    redirect_to "/quilts"
  end
end
