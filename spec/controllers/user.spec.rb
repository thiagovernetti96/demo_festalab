# spec/controllers/users_controller_spec.rb
require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "GET #index" do
    it "retorna uma lista de usuários filtrados por cada termo " do
      user1 = User.create(name: "Thiago Vernetti", email: "thiago@example.com",
      cpf: "123.456.789-01", phone: "1234567890")
      user2 = User.create(name: "Maria Vernetti", email: "maria@example.com", 
      cpf: "987.654.321-09", phone: "9876543210")
      get :index, params: { search: "thiago" }

      expect(assigns(:users)).to include(user1)
      expect(assigns(:users)).not_to include(user2)
    end
  end
end
