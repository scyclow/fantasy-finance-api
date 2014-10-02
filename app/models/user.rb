class User < ActiveRecord::Base
	has_many :commissioned_leagues, 
					 :foreign_key => :commissioner_id,
					 :class_name => "League"
end
