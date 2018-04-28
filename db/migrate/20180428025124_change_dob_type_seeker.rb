class ChangeDobTypeSeeker < ActiveRecord::Migration[5.1]
  def change
  	 change_column :seekers, :dob, :date
  end
end
