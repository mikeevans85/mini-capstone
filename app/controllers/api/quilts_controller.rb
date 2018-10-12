class Api::QuiltsController < ApplicationController
  def all_quilts_method
    @quilts = Product.all
    render "all_quilts.json.jbuilder"
  end

  def quilt_one_method
    @quiltone = Product.first
    render "quiltone.json.jbuilder"
  end

  def quilt_two_method
    @quilttwo = Product.second
    render "quilttwo.json.jbuilder"
  end

  def quilt_three_method
    @quiltthree = Product.third
    render "quiltthree.json.jbuilder"
  end

  def quilt_four_method
    @quiltfour = Product.fourth
    render "quiltfour.json.jbuilder"
  end
end
