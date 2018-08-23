class CreateSocks < ActiveRecord::Migration[5.2]
  def change
    create_table :socks do |t|
      t.string :color
      t.integer :size
      t.string :department
      t.boolean :pattern

      t.timestamps
    end
  end
end
