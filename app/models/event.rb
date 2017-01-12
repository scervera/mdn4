class Event < ActiveRecord::Base
	default_scope { order("priority ASC") }

	scope :ongoing, -> { where(repeatable: true) }
	scope :onetime, -> { where(repeatable: false || nil) }

end
