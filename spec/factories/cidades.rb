FactoryBot.define do
    factory :cidade do
      nome { 'Francisco Beltrao' }
  
      association :estado, factory: :estado
    end
  end