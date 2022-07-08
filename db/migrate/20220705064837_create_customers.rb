class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.integer :customerid
      t.string :fname
      t.string :ifsc
      t.string :lname
      t.string :mobile
      t.string :pancard
      t.string :email
      t.string :district
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
