class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.string :employee_id
      t.text :im
      t.references :designation, index: true, foreign_key: true
      t.integer :manager_id
      t.boolean :is_admin

      t.timestamps null: false
    end
  end
end
