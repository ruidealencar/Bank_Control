require 'rails_helper'

RSpec.describe User, type: :model do
 context "Validade de um Usuário" do
  it "Usuário válido" do
    user = User.new
    user.email = 'test@example.com'
    user.password = '123456'
    user.password_confirmation = '123456'

    expect(user.valid?).to be_truthy 
  end  
 end
end
