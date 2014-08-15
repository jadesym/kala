class CreateContactusmsgs < ActiveRecord::Migration
  def change
    create_table :contactusmsgs do |t|
      t.string :first_name
      t.string :last_name
      t.integer :user_id
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
