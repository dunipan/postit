class Vote < ActiveRecord::Base
	belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
	belongs_to :voteable, polymorphic: true
end

#polymorphic good for mutually exclusive problems see Solution polymorphic votes