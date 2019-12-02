FactoryBot.define do
    factory :pessoa do
        nome { 'Douglas' }
        documento { '8564561088' }

        association :endereco, factory: :endereco
    end
    
end