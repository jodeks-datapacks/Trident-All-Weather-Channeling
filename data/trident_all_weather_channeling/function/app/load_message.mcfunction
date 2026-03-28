#> trident-all-weather-channeling:app/load_message
# Called on load

execute if score &trident_all_weather_channeling_load_message jodek.config matches 1 run tellraw @a [\
  {\
    "text": "[",\
    "color": "#aaaaaa"\
  },\
  {\
    "text": "Trident All Weather Channeling",\
    color: "#ffffff",\
    "hover_event": {\
      "action": "show_text",\
      "value": [\
        {\
          "nbt":"tellraw[]",\
          "storage": "trident_all_weather_channeling:image",\
          interpret: true,\
          separator: ""\
        }\
      ]\
    },\
    click_event:\
    {\
    action:"open_url",\
    url:"https://modrinth.com/datapack/trident-all-weather-channeling/"\
    }\
  },\
  {\
    text: "]",\
    color: "#aaaaaa",\
    hover_event: {\
      action: "show_text",\
      value: [\
        {\
          nbt:"tellraw[]",\
          storage: "trident_all_weather_channeling:image",\
          interpret: true,\
          separator: ""\
        }\
      ]\
    },\
    click_event:\
    {\
    action:"open_url",\
    url:"https://modrinth.com/datapack/trident-all-weather-channeling/"\
    }\
  },\
  {\
    translate: "jodek.loaded", fallback: " loaded! ",\
    color: "#ffffff",\
    hover_event: {\
      action: "show_text",\
      value: [\
        {\
          nbt:"tellraw[]",\
          storage: "trident_all_weather_channeling:image",\
          interpret: true,\
          separator: ""\
        }\
      ]\
    },\
    click_event:\
    {\
    action:"open_url",\
    url:"https://modrinth.com/datapack/trident-all-weather-channeling/"\
    }\
  },\
  {\
    translate: "jodek.hover_for_more_info", fallback: "hover for more info",\
    color: "#929796",\
    hover_event: {\
      action: "show_text",\
      value: [\
        {\
          nbt:"tellraw[]",\
          storage: "trident_all_weather_channeling:image",\
          interpret: true,\
          separator: ""\
        }\
      ]\
    },\
    click_event:\
    {\
    action:"open_url",\
    url:"https://modrinth.com/datapack/trident-all-weather-channeling/"\
    }\
  }\
]