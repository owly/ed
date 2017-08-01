class Assignment < ActiveRecord::Base
    belongs_to :homework
    belongs_to :user
    validates :homework_id, presence: true
    validates :user_id, presence: true
end
