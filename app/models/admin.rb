# == Schema Information
#
# Table name: admins
#
#  id                 :integer          not null, primary key
#  email              :string           default(""), not null
#  encrypted_password :string           default(""), not null
#  sign_in_count      :integer          default(0), not null
#  current_sign_in_at :datetime
#  last_sign_in_at    :datetime
#  current_sign_in_ip :inet
#  last_sign_in_ip    :inet
#  failed_attempts    :integer          default(0), not null
#  unlock_token       :string
#  locked_at          :datetime
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :trackable, :lockable, :timeoutable
end
