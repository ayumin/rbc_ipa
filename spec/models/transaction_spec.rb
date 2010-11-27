require 'spec_helper'

describe Transaction do

  context "店舗コード" do
    before do
      @trn = Transaction.new(:shop_code => "001")
    end
    subject { @trn.valid? }
    it { should be_true }
  end

  context "買掛残高" do
    before do
      @trn = Transaction.new(:kaizan => "Kaizan.data")
    end
    subject { @trn.valid? }
    it { should be_true }
  end
end
