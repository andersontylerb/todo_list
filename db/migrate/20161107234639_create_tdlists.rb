class CreateTdlists < ActiveRecord::Migration[5.0]
  def change
    create_table :tdlists do |t|
      t.string :item
      t.string :title

      t.timestamps
    end
  end
end
