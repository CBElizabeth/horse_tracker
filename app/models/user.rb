class User < ActiveRecord::Base

	has_secure_password
	
	has_many :task_entries
    has_many :tasks, through: :task_entries
    has_many :projects
    has_many :projects, through: :tasks
    
end
