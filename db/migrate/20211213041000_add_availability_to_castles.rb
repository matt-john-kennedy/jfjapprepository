class AddAvailabilityToCastles < ActiveRecord::Migration[6.1]
  def change
    add_column :castles, :available, :boolean
  end
end
