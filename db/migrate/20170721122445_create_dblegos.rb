class CreateDblegos < ActiveRecord::Migration[5.1]
  def change
    create_table :dblegos do |t|
      t.string :part
      t.integer :color
      t.integer :quantity

      t.timestamps
    end
  end
end
