module OrdersHelper
  def form_title_order
    @order.new_record? ? "Crear Pedido" : "Editar Pedido"
  end
end
