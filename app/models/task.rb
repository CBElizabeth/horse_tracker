class Task < ActiveRecord::Base

	belongs_to :project
	has_many :task_entries
	has_many :tasks, through: :task_entries
    
end
