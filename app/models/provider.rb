class Provider < ActiveRecord::Base
   has_many :appointments
   has_many :patients, through: :appointments
   belongs_to :user
   validates :user_id, presence: true
end
