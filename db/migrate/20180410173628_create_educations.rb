class CreateEducations < ActiveRecord::Migration[5.1]
  def change
    create_table :educations do |t|
      t.string :educationLevel
      t.integer :seeker_id
      t.timestamps
    end
    add_index :educations, :seeker_id

  end
end
