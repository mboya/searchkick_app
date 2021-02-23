class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products, id: :uuid do |t|
      t.string :code
      t.string :name
      t.string :vanity_name

      t.timestamps
    end

    add_index :products, :code
    add_index :products, :name
    add_index :products, :vanity_name
  end
end
