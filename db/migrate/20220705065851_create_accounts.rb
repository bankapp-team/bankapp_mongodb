class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.integer :accountnum
      t.integer :customerid
      t.string :accounttype
      t.decimal :balance
      t.string :ifsc

      t.timestamps
    end
  end
end
