FactoryBot.define do
    factory :venda, class: 'Movimento' do
      tipo { :1 }
    end
  
    factory :compra, class: 'Movimento' do
        tipo { :2 }
    end

    factory :dvenda, class: 'Movimento' do
        tipo { :3 }
    end

    factory :dcompra, class: 'Movimento' do
        tipo { :4 }
    end

    end