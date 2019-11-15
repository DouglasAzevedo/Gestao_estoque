class Produto < ApplicationRecord
  belongs_to :unidade
  belongs_to :gprod

  validates :nome, :unidade, presence: true
  validates :nome, uniqueness: true

end
