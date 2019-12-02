FactoryBot.define do
    factory :endereco do
      rua { 'Av. julio..' }
      cep { '85601000' }
      numero { '1' }

      association :cidade, factory: :cidade
      association :estado, factory: :estado
      
    end
  end