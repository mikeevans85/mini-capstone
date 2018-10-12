class Api::QuiltsController < ApplicationController
  def all_quilts_method
    @quilts = Product.all
    render "all_quilts.json.jbuilder"
  end
end
