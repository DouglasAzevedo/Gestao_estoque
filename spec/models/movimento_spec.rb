require 'rails_helper'

RSpec.describe Movimento, type: :model do
    context 'validações gerais' do
      it { should validate_presence_of(:data) }
      it { should validate_presence_of(:quantidade) }
      it { should validate_presence_of(:pessoa) }
      it { should validate_presence_of(:produto) }
      it { should validate_presence_of(:operacao) }
      it { belong_to(:pessoa) }
      it { belong_to(:operacao) }
      it { belong_to(:produto) }
    end

    context 'validar a quantidade do movimento' do
        it { should validate_numericality_of(:quantidade).is_greater_than(0) }
    end
end