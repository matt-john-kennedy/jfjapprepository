class CreateCastles < ActiveRecord::Migration[6.1]
  def change
    create_table :castles do |t|
      t.string :name
      t.string :description
      t.numeric :price

      t.timestamps
    end
  end
end
