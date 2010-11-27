require 'spec_helper'

describe "transactions/new.html.erb" do
  before(:each) do
    assign(:transaction, stub_model(Transaction,
      :shop_code => "MyString"
    ).as_new_record)
  end

  it "renders new transaction form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => transactions_path, :method => "post" do
      assert_select "input#transaction_shop_code", :name => "transaction[shop_code]"
      assert_select "input#transaction_kaizan", :name => "transaction[kaizan]"
    end
  end
end
