class ChangePostcodeToBeIntegerInCustomers < ActiveRecord::Migration[6.1]
  def up
    change_column :customers, :postcode, :integer
  end

  def down
    change_column :customers, :postcode, :numeric
  end
end
