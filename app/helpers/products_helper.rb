module ProductsHelper
  def form_title_product
    @product.new_record? ? "Crear Producto" : "Editar Producto"
  end
end
