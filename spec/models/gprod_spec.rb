require 'rails_helper'

RSpec.describe Gprod, type: :model do
  context 'validações gerais' do
    it { should validate_presence_of(:nome) }
    
  end
end