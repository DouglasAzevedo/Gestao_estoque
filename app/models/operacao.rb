class Operacao < ApplicationRecord

    validates :descricao, presence: true
    validates :descricao, uniqueness: true

end
