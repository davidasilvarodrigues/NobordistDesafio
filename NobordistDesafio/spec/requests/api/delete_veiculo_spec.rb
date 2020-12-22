require 'rails_helper'
describe "Deletar veiculo" do
  before(:each) do
    @veiculo = FactoryBot.create(:veiculo)
    end
  it 'should delete the question' do
      get "/api/v1/veiculos"
      expect {
        delete api_v1_veiculo_url(@veiculo), as: :json
      }.to change(Veiculo, :count).by(-1)
  end
end
