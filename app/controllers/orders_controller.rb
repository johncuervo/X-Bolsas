class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_vendor!, except: [:index]

    def index
      @orders = Order.all.order(created_at: :desc)
      
    end

    def new
      @order = Order.new
    end

    def create
      @order = Order.new(order_params)
      @order.vendor = current_vendor
      if @order.save
        redirect_to order_path(@order), notice: 'Pedido creado correctamente.'
      else
        render :new
      end
    end

    def show
      @order.sumatoria
    end

    def edit
    end

    def update
      if @order.update(order_params)
        redirect_to order_path, notice: 'Pedido editado correctamente.'
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
