require 'rails_helper'

RSpec.describe Produto, type: :model do
    context 'validações gerais' do
      it { should validate_presence_of(:nome) }
      it { should validate_presence_of(:unidade) }
      it { should validate_uniqueness_of(:nome) }
      it { should belong_to(:unidade) }
      it { should belong_to(:gprod) }
      
  end
  end