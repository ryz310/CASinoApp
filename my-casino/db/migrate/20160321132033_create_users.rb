class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_hash
      t.string :email
      t.string :fullname
      t.integer :role

      t.timestamps null: false
    end
  end
end
