class CreateUsersTable < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.text :username
      t.timestamps
    end
  end
end
