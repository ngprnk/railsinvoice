class CreateParticulars < ActiveRecord::Migration
  def change
    create_table :particulars do |t|
      t.string :itemname
      t.integer :quantity
      t.integer :rate

      t.timestamps null: false
    end
  end
end
