class ProductsController < ApplicationController
  before_action :set_product, only: [:edit, :update, :destroy]
  before_action :authenticate_vendor!, except: [:index]

    def index
      @products = Product.all.order(created_at: :desc)
    end

    def new
      @product = Product.new
    end

    def create
      @product = Product.new(product_params)
      if @product.save
        redirect_to products_path, notice: 'Producto creado correctamente.'
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @product.update(product_params)
        redirect_to products_path, notice: 'Producto editado correctamente.'
      else
        render :edit
      end
    end

    def destroy
      @product.destroy
      redirect_to products_path, notice: 'Producto eliminado correctamente.'
    end

  private

    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:width, :height, :unit, :quantity, :price, :code)
    end
end
