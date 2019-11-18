FactoryBot.define do
    factory :venda, class: 'Movimento' do
      tipo { :1 }
    end
  
    factory :compra, class: 'Movimento' do
        tipo { :2 }
    end

    factory :devVenda, class: 'Movimento' do
        tipo { :3 }
    end

    factory :devcompra, class: 'Movimento' do
        tipo { :4 }
    end

    end