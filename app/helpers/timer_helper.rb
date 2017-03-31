module TimerHelper

	def countdown_to_display
      launch_day = Time.local(2016, 4, 12, 12, 0)
      if Time.now < launch_day
      	return false
      else
      	return true
      end  	
	end

	def audio_card_display
		show_date = Time.local(2017, 4, 4, 12, 0)
		if Time.now < show_date
			return false
		else
			return true
		end
	end

	def event_day_display
		show_date = Time.local(2017, 4, 1, 8, 0)
		if Time.now < show_date
			return false
		else
			return true
		end
	end
	def day_after_event_display
		show_date = Time.local(2017, 4, 2, 8, 0)
		if Time.now < show_date
			return false
		else
			return true
		end
	end

end

# SC - Use this conditional to show or hide content depending on the Time.local set in this helper
# <% if time_to_display %>
# or
# <% if audio_card_display %>