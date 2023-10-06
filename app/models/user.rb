class User < ApplicationRecord
  class User < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "Formato de e-mail inválido" }
    validates :cpf, presence: true, format: { with: /\A\d{3}\.\d{3}\.\d{3}-\d{2}\z/, message: "Formato de CPF inválido" }
    validates :phone, presence: true, format: { with: /\A\d{10}\z/, message: "Formato de telefone inválido" }
  end
end
