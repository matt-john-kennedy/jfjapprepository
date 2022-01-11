class AddImgUrlToCastles < ActiveRecord::Migration[6.1]
  def change
    add_column :castles, :img_url, :string
  end
end
