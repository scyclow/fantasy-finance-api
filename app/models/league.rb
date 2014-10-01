class League < ActiveRecord::Base
	has_one :commissioner, :class_name => "User"
end
