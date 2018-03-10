class Event < ActiveRecord::Base
	scope :prioritized, -> { order("priority ASC") }

	scope :ongoing, -> { where(repeatable: true) }
	scope :onetime, -> { where(repeatable: false) }

end
