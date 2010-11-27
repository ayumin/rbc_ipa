require 'spec_helper'

describe Transaction do
  before do
    @trn = Transaction.new(:shop_code => "001")
  end
  context "店舗コード" do
    subject { @trn.valid? }
    it { should be_true }
  end

end
