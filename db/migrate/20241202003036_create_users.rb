class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :username, null: false

      t.timestamps
    end

    # Add unique index to the username column
    add_index :users, :username, unique: true
  end
end
