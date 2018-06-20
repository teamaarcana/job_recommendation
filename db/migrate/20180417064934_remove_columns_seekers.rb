class RemoveColumnsSeekers < ActiveRecord::Migration[5.1]
  def change
    remove_column :seekers, :experience, :float
    remove_column :seekers, :location, :string
  end
end
