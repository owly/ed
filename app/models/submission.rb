class Submission < ActiveRecord::Base
    belongs_to :homework
    belongs_to :user
    validates :answer, presence: true
    validates :user_id, presence: true
    validates :homework_id, presence: true
end
