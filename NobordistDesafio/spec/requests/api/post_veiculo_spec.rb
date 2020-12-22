require 'rails_helper'
describe "Testando POST de veiculos", :type => :request do
  before do
    @veiculo = FactoryBot.create(:veiculo)
    post '/api/v1/veiculos', params: { veiculo: { "marca": "John", modelo: "Doe", "ano": 1111, "descricao": "lorem ipsum", "vendido": false}}
  end
  it 'retornando veiculo\marca' do
    expect(JSON.parse(response.body)['marca']).to eq(@veiculo.marca)
  end
  it 'retornando veiculo\veiculo' do
    expect(JSON.parse(response.body)['modelo']).to eq(@veiculo.modelo)
  end
  it 'retornando veiculo\ano' do
    expect(JSON.parse(response.body)['ano']).to eq(@veiculo.ano)
  end
  it 'retornando veiculo\descricao' do
    expect(JSON.parse(response.body)['descricao']).to eq(@veiculo.descricao)
  end
  it 'retornando veiculo\vendido' do
    expect(JSON.parse(response.body)['vendido']).to eq(@veiculo.vendido)
  end
  it 'returno status' do
    expect(response).to be_created
  end
end
