class CreateInvoices < ActiveRecord::Migration[8.0]
  def change
    create_table :invoices do |t|
      t.string :id
      t.string :uuid
      t.uuid :member_id
      t.string :total_amount_cents
      t.string :number
      t.timestamp :created_at
      t.timestamp :updated_at

      t.timestamps
    end
  end
end
