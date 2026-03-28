# Append blank
function trident_all_weather_channeling:image/process/append/blank

data modify storage trident_all_weather_channeling:image data.tellraw append \
  from storage trident_all_weather_channeling:image data.current.description_text

# Append blank
function trident_all_weather_channeling:image/process/append/blank

# Append line_break
execute unless score $index.image_data trident_all_weather_channeling.image = $length trident_all_weather_channeling.image \
  run function trident_all_weather_channeling:image/process/append/line_break

# Remove first element from the description
data remove storage trident_all_weather_channeling:image data.current.description[0]
 