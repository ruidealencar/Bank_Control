require 'rails_helper'

RSpec.describe Agency, type: :model do
  context "Validade de um Agência" do
    it "Agência válida" do
      a = Agency.new
      a.agency_number = '2345-0'
      a.address = 'Rua X - 12'
      
      expect(a.valid?).to be_truthy

      

  
    end
  end
end
