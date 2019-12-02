FactoryBot.define do
    factory :produto do
      nome { 'Laranja' }
  
      association :unidade, factory: :unidade
      association :gprod, factory: :gprod
    end
  end