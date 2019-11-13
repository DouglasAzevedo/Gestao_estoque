class CreateGprods < ActiveRecord::Migration[5.2]
  def change
    create_table :gprods do |t|
      t.string :nome

      t.timestamps
    end
  end
end
