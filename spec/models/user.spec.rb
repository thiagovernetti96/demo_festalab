# spec/models/user_spec.rb
require 'rails_helper'

RSpec.describe User, type: :model do
  it "valida o formato de email" do
    user = User.new(name: "Thiago Vernetti", email: "invalid-email", cpf: "123.456.789-01", phone: "123456789")
    expect(user).not_to be_valid
    expect(user.errors[:email]).to include("Formato de e-mail inválido")
  end

  it "valida o formato do cpf" do
    user = User.new(name: "Thiago Vernetti", email: "thiago@example.com", cpf: "1243543534534", phone: "123456789")
    expect(user).not_to be_valid
    expect(user.errors[:cpf]).to include("Formato de CPF inválido")
  end

  it "valida o formato de telefone" do
    user = User.new(name: "Thiago Vernetti", email: "thiago@example.com", cpf: "123.456.789-01", phone: "invalid-phone")
    expect(user).not_to be_valid
    expect(user.errors[:phone]).to include("Formato de telefone inválido")
  end
end

