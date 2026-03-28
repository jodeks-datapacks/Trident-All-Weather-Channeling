#> trident_all_weather_channeling:image/process/generate
#
# This function generates the image data.

data modify storage trident_all_weather_channeling:image data.current.image_data set from storage trident_all_weather_channeling:image data.image_data
data modify storage trident_all_weather_channeling:image data.current.description set from storage trident_all_weather_channeling:image data.description
data modify storage trident_all_weather_channeling:image data.current.pixel_character set from storage trident_all_weather_channeling:image data.pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data trident_all_weather_channeling.image 0
# Set width
execute store result score $width trident_all_weather_channeling.image run data get storage trident_all_weather_channeling:image data.width
# Set height
execute store result score $height trident_all_weather_channeling.image run data get storage trident_all_weather_channeling:image data.height
# Set length
scoreboard players operation $length trident_all_weather_channeling.image = $width trident_all_weather_channeling.image
scoreboard players operation $length trident_all_weather_channeling.image *= $height trident_all_weather_channeling.image
# Clear remaining entries in tellraw
data remove storage trident_all_weather_channeling:image data.tellraw

# Add spacing on top
function trident_all_weather_channeling:image/process/append/line_break
# Loop over image data
function trident_all_weather_channeling:image/process/loop_over_image_data
# Add spacing on bottom
function trident_all_weather_channeling:image/process/append/line_break