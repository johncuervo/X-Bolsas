class CustomersController < ApplicationController
  before_action :set_customer, only: [:edit, :update, :destroy]
  before_action :authenticate_vendor!, except: [:index]

    def index
      @customers = Customer.all.order(created_at: :desc)
    end

    def new
      @customer = Customer.new
    end

    def create
      @customer = Customer.create(customer_params)
      @customer.vendor = current_vendor
      if @customer.save
        redirect_to customers_path, notice: 'Cliente creado correctamente.'
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @customer.update(customer_params)
        redirect_to customers_path, notice: 'Cliente editado correctamente.'
      else
        render :edit
      end
    end

    def destroy
      @customer.destroy
      redirect_to customers_path, notice: 'Cliente eliminado correctamente.'
    end

  private

    def set_customer
      @customer = Customer.find(params[:id])
    end

    def customer_params
      params.require(:customer).permit(:name, :email, :phone, :vendor_id)
    end

end
