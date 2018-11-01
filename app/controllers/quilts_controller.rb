class QuiltsController < ApplicationController
  def index
    @quilts = Product.all
    render "index.html.erb"
  end

  def show
    @quilt = Product.find_by(id: params[:id])
    render "show.html.erb"
  end
end
