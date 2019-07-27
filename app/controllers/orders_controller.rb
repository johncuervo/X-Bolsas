class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_vendor!, except: [:index, :show]

    def index
      @orders = Order.all.order(created_at: :desc)
    end

    def new
      @order = Order.new
    end

    def create
      @order = Order.new(order_params)
      @order.vendor = current_vendor
      @order.sumatoria
      if @order.save
        redirect_to orders_path, notice: 'Pedido creado correctamente.'
      else
        render :new
      end
    end

    def show

    end

    def edit
    end

    def update
      if @order.update(order_params)
        @order.sumatoria
        redirect_to orders_path, notice: 'Pedido editado correctamente.'
      else
        render :edit
      end
    end

    def destroy
      @order.destroy
      redirect_to orders_path, notice: 'Pedido eliminado correctamente.'
    end

  private

    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:total, :subtotal, :iva, :vendor_id, :customer_id, product_ids:[])
    end

end
