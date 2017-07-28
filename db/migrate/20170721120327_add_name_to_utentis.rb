class AddNameToUtentis < ActiveRecord::Migration[5.1]
  def change
    add_column :utentis, :nome, :string
  end
end
