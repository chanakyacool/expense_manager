class Bill < ActiveRecord::Base
  belongs_to :paid_by, class_name: "User", foreign_key: "user_id" 
  belongs_to :group, :touch => true

  validates_presence_of :item, :amount, :location
end
