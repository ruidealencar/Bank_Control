module ApplicationHelper
    def valor_formatado(number)
        number_to_currency number,
          unit: "R$",
          separator: ",",
          delimiter: "."
      end
end

#método para sacar e creditar no saldo.
def saque(value)
    # account = Account.find(params[:id]).
    # account = Account.find(self.account_id)
    if value <= 0 
      return false
    else
        account.balance += value
    end
  end

  #método para depositar e debitar no saldo.  
  def deposito(value)
    if account.balance >= value
      account.balance -= value
    else
      return false
    end  
  end
