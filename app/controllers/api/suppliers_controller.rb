class Api::SuppliersController < ApplicationController
  def index
    @supplier = Supplier.all
    @supplier = @supplier.order(:id => :desc)
    input_name = params["name"]
    if input_name
      @supplier = @supplier.where("name ILIKE ?", "%#{input_name}%")
    end
    render "index.json.jbuilder"
  end

  def create
    @supplier = Supplier.new(
      name: params["name"],
      email: params["email"],
      phone_number: params["phone_number"],
      )
    @supplier.save
    if @supplier.save
      render "show.json.jbuilder"
    else
      render json: {errors: @supplier.errors.full_messages}, status: 422
    end
  end

  def show
    @supplier = Supplier.find_by(id: params["id"])
    render "show.json.jbuilder"
  end

  def update
    @supplier = Supplier.find_by(id: params["id"])
    @supplier.name = params["name"] || @supplier.name
    @supplier.email = params["email"] || @supplier.email
    @supplier.phone_number = params["phone_number"] || @supplier.phone_number
    @supplier.save
    if @supplier.save
      render "show.json.jbuilder"
    else
      render json: {errors: @supplier.errors.full_messages}, status: 422
    end
  end

  def destroy
    @supplier = Supplier.find_by(id: params["id"])
    @supplier.destroy
    render json: {message: "Your supplier has sadly and successfully been deleted."}
  end
end