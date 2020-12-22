require 'rails_helper'
describe "GET responde de todos os veiculos", :type => :request do
  before(:all) do
    @veiculo = FactoryBot.create(:veiculo)
    get '/api/v1/veiculos'
  end

  it 'retornar todos os veiculos' do
    expect(JSON.parse(response.body).size).to eq(1)
    end
  it 'retornar status code 200' do
    expect(response).to have_http_status(:success)
  end
end
describe "GET responde de todos os veiculos", :type => :request do
    before(:all) do
      @veiculo = FactoryBot.create(:veiculo)
      get "/api/v1/veiculos/#{@veiculo.id}"
    end

    it 'retornar o veiculo ao acessar sua rota' do
      expect(response.body).to eq(@veiculo.to_json)
    end
end
