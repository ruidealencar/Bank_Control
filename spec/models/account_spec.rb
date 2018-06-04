require 'rails_helper'

RSpec.describe Account, type: :model do
  context "Validade de um Conta" do
    it "Conta válida" do
      ag = Agency.new
      ag.agency_number = '2345-0'
      ag.address = 'Rua X - 12'
      
      a = Account.new
      a.agency =  ag
      a.account_number = '1804-0'
      a.balance = '10000'
      
      expect(a.valid?).to be_truthy 
    end
  end
end
