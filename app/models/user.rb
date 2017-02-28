class User < ApplicationRecord
  belongs_to :user_role

  validates :first_name, presence: true
  validates :middle_name, presence: true
  validates :last_name, presence: true

  def self.convert_users_with_user_roles
    User.all.each do |user|
      if user.user_role
        user.role = user.user_role.name
        user.save
      end
    end
  end

  def self.convert_users_with_roles
    User.all.each do |user|
      if user.role
        user.user_role = UserRole.create(name: user.role)
        user.save
      end
    end
  end

  def full_name
    "#{first_name} #{middle_name} #{last_name}"
  end
end
