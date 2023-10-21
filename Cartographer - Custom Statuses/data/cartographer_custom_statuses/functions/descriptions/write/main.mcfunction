execute unless entity @s[tag=ca.st.e_bleeding] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.StatusInflict[{Id:"bleeding"}].Amount
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_bleeding] run function cartographer_custom_statuses:descriptions/write/status/bleeding

execute unless entity @s[tag=ca.st.e_blindness] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.ApplyEffects[{Id:15}].Duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_blindness] run function cartographer_custom_statuses:descriptions/write/status/blindness

execute unless entity @s[tag=ca.st.e_brittle] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.StatusInflict[{Id:"brittle"}].Duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_brittle] run function cartographer_custom_statuses:descriptions/write/status/brittle

execute unless entity @s[tag=ca.st.e_exposed] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.StatusInflict[{Id:"expose"}].Duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_exposed] run function cartographer_custom_statuses:descriptions/write/status/exposed

execute unless entity @s[tag=ca.st.e_infected] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.StatusInflict[{Id:"infection"}].Duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_infected] run function cartographer_custom_statuses:descriptions/write/status/infected

execute unless entity @s[tag=ca.st.e_morph] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.StatusInflict[{Id:"morph"}].Chance
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_morph] run function cartographer_custom_statuses:descriptions/write/status/morph

execute unless entity @s[tag=ca.st.e_oiled] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.StatusInflict[{Id:"oiled"}].Duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_oiled] run function cartographer_custom_statuses:descriptions/write/status/oiled

execute unless entity @s[tag=ca.st.e_possessed] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.StatusInflict[{Id:"possession"}].Chance
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_possessed] run function cartographer_custom_statuses:descriptions/write/status/possessed

execute unless entity @s[tag=ca.st.e_oiled] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.StatusInflict[{Id:"oiled"}].Duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_oiled] run function cartographer_custom_statuses:descriptions/write/status/oiled

execute unless entity @s[tag=ca.st.e_shackled] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.StatusInflict[{Id:"shackled"}].Duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_shackled] run function cartographer_custom_statuses:descriptions/write/status/shackled

execute unless entity @s[tag=ca.st.e_shocked] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.StatusInflict[{Id:"shocking"}].Duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_shocked] run function cartographer_custom_statuses:descriptions/write/status/shocked

execute unless entity @s[tag=ca.st.e_stunned] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.StatusInflict[{Id:"stun"}].Duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_stunned] run function cartographer_custom_statuses:descriptions/write/status/stunned



execute unless entity @s[tag=ca.st.e_bleeding] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.CustomStatuses[{Id:"bleeding"}].Amount
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_bleeding] run function cartographer_custom_statuses:descriptions/write/status/bleeding

execute unless entity @s[tag=ca.st.e_blindness] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.CustomPotionEffects[{Id:15}].Duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_blindness] run function cartographer_custom_statuses:descriptions/write/status/blindness

execute unless entity @s[tag=ca.st.e_brittle] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.CustomStatuses[{Id:"brittle"}].Duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_brittle] run function cartographer_custom_statuses:descriptions/write/status/brittle

execute unless entity @s[tag=ca.st.e_exposed] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.CustomStatuses[{Id:"expose"}].Duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_exposed] run function cartographer_custom_statuses:descriptions/write/status/exposed

execute unless entity @s[tag=ca.st.e_infected] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.CustomStatuses[{Id:"infection"}].Duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_infected] run function cartographer_custom_statuses:descriptions/write/status/infected

execute unless entity @s[tag=ca.st.e_morph] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.CustomStatuses[{Id:"morph"}].Chance
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_morph] run function cartographer_custom_statuses:descriptions/write/status/morph

execute unless entity @s[tag=ca.st.e_oiled] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.CustomStatuses[{Id:"oiled"}].Duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_oiled] run function cartographer_custom_statuses:descriptions/write/status/oiled

execute unless entity @s[tag=ca.st.e_possessed] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.CustomStatuses[{Id:"possession"}].Chance
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_possessed] run function cartographer_custom_statuses:descriptions/write/status/possessed

execute unless entity @s[tag=ca.st.e_oiled] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.CustomStatuses[{Id:"oiled"}].Duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_oiled] run function cartographer_custom_statuses:descriptions/write/status/oiled

execute unless entity @s[tag=ca.st.e_shackled] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.CustomStatuses[{Id:"shackled"}].Duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_shackled] run function cartographer_custom_statuses:descriptions/write/status/shackled

execute unless entity @s[tag=ca.st.e_shocked] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.CustomStatuses[{Id:"shocking"}].Duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_shocked] run function cartographer_custom_statuses:descriptions/write/status/shocked

execute unless entity @s[tag=ca.st.e_stunned] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.CustomStatuses[{Id:"stun"}].Duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_stunned] run function cartographer_custom_statuses:descriptions/write/status/stunned