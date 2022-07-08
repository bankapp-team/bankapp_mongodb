class CreateBanks < ActiveRecord::Migration[7.0]
  def change
    create_table :banks do |t|
      t.string :bankname
      t.string :branchname
      t.string :ifsc
      t.string :district
      t.string :state
      t.string :address
      t.integer :pincode

      t.timestamps
    end
  end
end
