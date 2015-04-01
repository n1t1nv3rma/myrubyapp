class CreateRegisters < ActiveRecord::Migration
  def change
    create_table :registers do |t|
      t.string :email
      t.string :name
      t.boolean :notify

      t.timestamps null: false
    end
    add_index :registers, :email, unique: true
  end
end
