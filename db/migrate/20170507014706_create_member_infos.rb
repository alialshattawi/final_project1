class CreateMemberInfos < ActiveRecord::Migration
  def change
    create_table :member_infos do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :address
      t.string :email
      t.string :gender
      t.string :age
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
