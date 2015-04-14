class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.text :from
      t.text :to
      t.string :billno
      t.datetime :invoicedate
      t.datetime :duedate

      t.timestamps null: false
    end
  end
end
