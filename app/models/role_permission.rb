# == Schema Information
#
# Table name: role_permissions
#
#  id            :bigint           not null, primary key
#  permission_id :bigint
#  role_id       :bigint
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class RolePermission < ApplicationRecord
  belongs_to :permission
  belongs_to :role


end
