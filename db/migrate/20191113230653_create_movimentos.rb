class CreateMovimentos < ActiveRecord::Migration[5.2]
  def change
    create_table :movimentos do |t|
      t.datetime :data
      t.float :quantidade
      t.belongs_to :pessoa, foreign_key: true
      t.belongs_to :operacao, foreign_key: true
      t.belongs_to :produto, foreign_key: true

      t.timestamps
    end
  end
end
