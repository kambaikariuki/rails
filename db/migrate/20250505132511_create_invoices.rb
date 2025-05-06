class CreateInvoices < ActiveRecord::Migration[8.0]
  def change
    create_table :invoices, id: :uuid do |t|
      t.uuid :member_id
      t.float :total_amount_cents

      t.timestamps
    end
  end
end
