class AddUserIdToMemberInfos < ActiveRecord::Migration
  def change
    add_column :member_infos, :user_id, :integer
  end
end
