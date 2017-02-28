class CreateUserRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :user_roles do |t|
      t.string :name
      t.boolean :approved, default: false

      t.timestamps
    end
  end
end
