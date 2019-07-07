class CreateProjectMaps < ActiveRecord::Migration
  def change
    create_table :project_maps do |t|
      t.references :user, index: true, foreign_key: true
      t.references :project, index: true, foreign_key: true
      t.text :description

      t.timestamps null: false
    end
  end
end
