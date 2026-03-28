# Copy current pixel
data modify storage trident_all_weather_channeling:image data.current.pixel_color set \
  from storage trident_all_weather_channeling:image data.current.image_data[0]
data modify storage trident_all_weather_channeling:image data.current.description_text set \
  from storage trident_all_weather_channeling:image data.current.description[0]

scoreboard players add $index.image_data trident_all_weather_channeling.image 1

# Calculate column
scoreboard players operation $index.column trident_all_weather_channeling.image = $index.image_data trident_all_weather_channeling.image
scoreboard players operation $index.column trident_all_weather_channeling.image %= $width trident_all_weather_channeling.image

# Calculate row
scoreboard players operation $index.row trident_all_weather_channeling.image = $index.image_data trident_all_weather_channeling.image
scoreboard players operation $index.row trident_all_weather_channeling.image /= $width trident_all_weather_channeling.image

# Append start spacing
execute if score $index.column trident_all_weather_channeling.image matches 1 run \
  function trident_all_weather_channeling:image/process/append/blank

# Append colored pixel
execute unless data storage trident_all_weather_channeling:image data.current{pixel_color: ''} run \
  function trident_all_weather_channeling:image/process/append/pixel
# Append background pixel
execute if data storage trident_all_weather_channeling:image data.current{pixel_color: ''} run \
  function trident_all_weather_channeling:image/process/append/background

# Append description
execute if score $index.column trident_all_weather_channeling.image matches 0 run \
    function trident_all_weather_channeling:image/process/image_end/description

# Remove first element from the image_data array
data remove storage trident_all_weather_channeling:image data.current.image_data[0]
# Loop over rows
execute if score $index.row trident_all_weather_channeling.image < $height trident_all_weather_channeling.image run \
  function trident_all_weather_channeling:image/process/loop_over_image_data
 