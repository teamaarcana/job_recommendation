# frozen_string_literal: true

class DeviseCreateSeekers < ActiveRecord::Migration[5.1]
  def change
    create_table :seekers do |t|
      ## Database authenticatable
      t.string :first_name
      t.string :last_name
      t.string :phone_no
      t.string :location
      t.string :photo
      t.string :prefered_loc
      t.string :experience
      t.integer :salary
      t.float :experience
      t.datetime :dob
      t.string :nationality
      t.string :perm_address
      t.string :temp_address
      t.string :cv
      t.string :sex
      t.boolean :job_status
      t.string :description
      t.string :certificate
      t.string :email,             null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.inet     :current_sign_in_ip
      t.inet     :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at


      t.timestamps null: false
    end

    add_index :seekers, :email,                unique: true
    add_index :seekers, :reset_password_token, unique: true
    # add_index :seekers, :confirmation_token,   unique: true
    # add_index :seekers, :unlock_token,         unique: true
  end
end