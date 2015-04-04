entering = true
occupied = true

def keep_lights_on
	timer_trigger = 10
	timer = 0
	until timer == timer_trigger do
		timer += 1
		sleep(1)
		puts "#{timer} minutes elapsed."
	end
	button_press
	return press_on = true
end

def enter_room
	button_press
	occupied = true
	return occupied
end

def button_press
	puts "Pressing the on button"
end


if entering
	enter_room
	while occupied == true
		keep_lights_on
	end
end



