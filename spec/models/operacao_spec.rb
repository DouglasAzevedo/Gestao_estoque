require 'rails_helper'

RSpec.describe Operacao, type: :model do
  context 'validações gerais' do
    it { should validate_presence_of(:descricao) }
    it { should validate_uniqueness_of(:descricao) }
    it { should define_enum_for(:tipo) }
  end
end