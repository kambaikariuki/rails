require 'rails_helper'

RSpec.describe Invoice, type: :model do
  it "is not valid with zero or negative total_amount_cents" do
    invoice = Invoice.new(member_id: 23, total_amount_cents: -23)
    expect(invoice).to_not be_valid
  end

  it "is not valid with zero total_amount_cents" do
    invoice = Invoice.new(member_id: 23, total_amount_cents: 0)
    expect(invoice).to_not be_valid
  end
end