class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.numeric :phone_number
      t.string :street_number
      t.string :street_name
      t.string :suburb
      t.numeric :postcode
      t.string :notes

      t.timestamps
    end
  end
end
