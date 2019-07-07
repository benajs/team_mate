class CreateSkillMaps < ActiveRecord::Migration
  def change
    create_table :skill_maps do |t|
      t.references :skill, index: true, foreign_key: true
      t.references :profile, index: true, foreign_key: true
      t.integer :range

      t.timestamps null: false
    end
  end
end
