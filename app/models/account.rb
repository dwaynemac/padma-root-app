class Account < ActiveRecord::Base

  attr_accessible :name

  validates_presence_of :name
  validates_uniqueness_of :name

  has_many :current_users, :class_name => "User", :foreign_key => "current_account_id"
end
