require 'rails_helper'

RSpec.describe Release, type: :model do
  
  context "Validade de um Lançamento" do
    it "Lançamento válido" do
      ag = Agency.new
      ag.agency_number = '2345-0'
      ag.address = 'Rua X - 12'
      
      a = Account.new
      a.agency =  ag
      a.account_number = '1804-0'
      a.balance = '10000'

      r = Release.new
      r.account = a
      r.release_type = 'Depósito'
      r.value = '250'
      
      expect(r.valid?).to be_truthy 
    end
  end
end
