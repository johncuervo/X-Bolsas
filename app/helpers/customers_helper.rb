module CustomersHelper
  def form_title_customer
    @customer.new_record? ? "Crear Cliente" : "Editar Cliente"
  end
end
