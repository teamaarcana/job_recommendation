class AddColumnsSeekers < ActiveRecord::Migration[5.1]
  def change
    add_column :seekers, :experience, :string
  end
end
