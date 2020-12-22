FactoryBot.define do
  factory :veiculo do
    marca { "John" }
    modelo  { "Doe" }
    ano { 1111 }
    descricao { "lorem ipsum"}
    vendido { false }

      factory :veiculo_novo do
        marca { "John" }
        modelo  { "Doe" }
        ano { 1997 }
        descricao { "lorem ipsum"}
        vendido { true }
      end
    end
end
