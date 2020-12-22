require 'rails_helper'
describe "PUT /api/v1/veiculo/:id" do
  before(:each) do
    @veiculo = FactoryBot.create(:veiculo)
    @veiculo_novo = FactoryBot.create(:veiculo_novo)
    put api_v1_veiculo_url(@veiculo), params: { veiculo: { "ano": 1997, "vendido": true}}
  end
  it 'updates veiculo' do
    expect(response).to have_http_status(:success)
  end
  it 'retornando veiculo\ano' do
    expect(JSON.parse(response.body)['ano']).to eq(@veiculo_novo.ano)
  end
  it 'retornando veiculo\vendido' do
    expect(JSON.parse(response.body)['vendido']).to eq(@veiculo_novo.vendido)
  end
end
