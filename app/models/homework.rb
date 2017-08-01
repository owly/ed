class Homework < ActiveRecord::Base
    has_many :assignments
    has_many :submissions
    belongs_to :user
    validates :user, presence: true
    validates :question, presence: true
    validates :title, presence: true
    validates :due_date, presence: true
        
end
