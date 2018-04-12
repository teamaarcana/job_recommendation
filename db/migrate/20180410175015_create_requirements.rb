class CreateRequirements < ActiveRecord::Migration[5.1]
  def change
    create_table :requirements do |t|
      t.string :title
      t.string  :description
      t.float :experience
      t.string :category
      t.string :skills
      t.string :recuitor_id
      t.timestamps
    end
    add_index :requirements, :recuitor_id

  end
end
