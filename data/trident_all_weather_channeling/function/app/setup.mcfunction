scoreboard objectives add jodek.config dummy
execute unless score &trident_all_weather_channeling_load_message jodek.config = &trident_all_weather_channeling_load_message jodek.config run scoreboard players set &trident_all_weather_channeling_load_message jodek.config 1
execute unless score &trident_all_weather_channeling_advancements jodek.config = &trident_all_weather_channeling_advancements jodek.config run scoreboard players set &trident_all_weather_channeling_advancements jodek.config 1

scoreboard objectives add trident_all_weather_channeling.image dummy

# Print the image
function trident_all_weather_channeling:config/image