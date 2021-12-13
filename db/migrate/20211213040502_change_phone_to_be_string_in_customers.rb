class ChangePhoneToBeStringInCustomers < ActiveRecord::Migration[6.1]
  def up
    change_column :customers, :phone_number, :string
  end

  def down
    change_column :customers, :phone_number, :numeric
  end
end
