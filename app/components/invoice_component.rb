class InvoiceComponent
  def initialize(member_id, total_amount_cents)
    @member_id = member_id
    @total_amount_cents = total_amount_cents
  end

  def call
    raise ArgumentError, "Total amount cents should be greater than zero" if @total_amount_cents <= 0
      
    Invoice.create!(
    member_id: @member_id,
    total_amount_cents: @total_amount_cents,
    status: 'pending'
    )
  end
end