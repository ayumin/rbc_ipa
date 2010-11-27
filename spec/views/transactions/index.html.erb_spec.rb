require 'spec_helper'

describe "transactions/index.html.erb" do
  before(:each) do
    assign(:transactions, [
      stub_model(Transaction,
        :shop_code => "Shop Code"
      ),
      stub_model(Transaction,
        :shop_code => "Shop Code"
      )
    ])
  end

  it "renders a list of transactions" do
    render
    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Shop Code".to_s, :count => 2
  end
end
