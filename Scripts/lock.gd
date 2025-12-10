extends Node2D

func _process(_delta):
	var time_api = Engine.get_singleton("Time")
	var now = time_api.get_datetime_dict_from_system()

	var hour24 = now["hour"]
	var minute = now["minute"]

	# Convert 24h → 12h
	var hour12 = hour24 % 12
	if hour12 == 0:
		hour12 = 12

	var am_pm = "AM" if hour24 < 12 else "PM"

	# Remove leading zero from hour
	$SystemTime.text = "%d:%02d %s" % [hour12, minute, am_pm]

	var day_api = Engine.get_singleton("Time")
	var nowaswell = day_api.get_datetime_dict_from_system()

	var year = now["year"]
	var month = now["month"]
	var day = now["day"]
	var weekday = now["weekday"]  # 1 = Monday, 7 = Sunday

	# Optional: Convert weekday number to name
	var weekday_names = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]
	var weekday_name = weekday_names[weekday - 1]

	# Format date string
	$SystemDate.text = "%s %d/%d/%d" % [weekday_name, month, day, year]
