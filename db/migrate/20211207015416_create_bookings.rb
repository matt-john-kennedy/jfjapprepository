class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.timestamp :start_time
      t.timestamp :end_time
      t.integer :duration
      t.boolean :terms_agreement
      t.numeric :total
      t.boolean :paid
      t.references :castle, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true
      t.references :enquiry, null: false, foreign_key: true
      t.string :notes

      t.timestamps
    end
  end
end
