class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.string :skill_name
      t.integer :seeker_id

      t.timestamps
    end
    add_index :skills, :seeker_id

  end
end
