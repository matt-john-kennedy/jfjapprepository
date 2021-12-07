class CreateEnquiries < ActiveRecord::Migration[6.1]
  def change
    create_table :enquiries do |t|
      t.references :castle, null: false, foreign_key: true
      t.timestamp :end_time
      t.integer :duration
      t.string :notes
      t.boolean :terms_agreement
      t.numeric :total
      t.boolean :paid
      t.references :customer, null: false, foreign_key: true
      t.timestamp :start_time

      t.timestamps
    end
  end
end
