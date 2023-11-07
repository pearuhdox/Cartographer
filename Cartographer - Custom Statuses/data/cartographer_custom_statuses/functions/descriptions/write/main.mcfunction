execute unless entity @s[tag=ca.st.e_bleeding] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.apply_status[{id:"bleeding"}].amplifier
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_bleeding] run function cartographer_custom_statuses:descriptions/write/status/bleeding

execute unless entity @s[tag=ca.st.e_blindness] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.apply_effects[{id:"minecraft:blindness"}].duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_blindness] run function cartographer_custom_statuses:descriptions/write/status/blindness

execute unless entity @s[tag=ca.st.e_brittle] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.apply_status[{id:"brittle"}].duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_brittle] run function cartographer_custom_statuses:descriptions/write/status/brittle

execute unless entity @s[tag=ca.st.e_exposed] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.apply_status[{id:"exposed"}].duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_exposed] run function cartographer_custom_statuses:descriptions/write/status/exposed

execute unless entity @s[tag=ca.st.e_infected] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.apply_status[{id:"infected"}].duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_infected] run function cartographer_custom_statuses:descriptions/write/status/infected

execute unless entity @s[tag=ca.st.e_morph] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.apply_status[{id:"polymorphed"}].duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_morph] run function cartographer_custom_statuses:descriptions/write/status/morph

execute unless entity @s[tag=ca.st.e_charmed] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.apply_status[{id:"charmed"}].duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_charmed] run function cartographer_custom_statuses:descriptions/write/status/charmed

execute unless entity @s[tag=ca.st.e_oiled] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.apply_status[{id:"oiled"}].duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_oiled] run function cartographer_custom_statuses:descriptions/write/status/oiled

execute unless entity @s[tag=ca.st.e_shackled] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.apply_status[{id:"shackled"}].duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_shackled] run function cartographer_custom_statuses:descriptions/write/status/shackled

execute unless entity @s[tag=ca.st.e_shocked] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.apply_status[{id:"shocked"}].duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_shocked] run function cartographer_custom_statuses:descriptions/write/status/shocked

execute unless entity @s[tag=ca.st.e_stunned] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.apply_status[{id:"stunned"}].duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_stunned] run function cartographer_custom_statuses:descriptions/write/status/stunned



execute unless entity @s[tag=ca.st.e_bleeding] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.custom_statuses[{id:"bleeding"}].amplifier
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_bleeding] run function cartographer_custom_statuses:descriptions/write/status/bleeding

execute unless entity @s[tag=ca.st.e_blindness] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.[{id:"minecraft:blindness"}].duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_blindness] run function cartographer_custom_statuses:descriptions/write/status/blindness

execute unless entity @s[tag=ca.st.e_brittle] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.custom_statuses[{id:"brittle"}].duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_brittle] run function cartographer_custom_statuses:descriptions/write/status/brittle

execute unless entity @s[tag=ca.st.e_exposed] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.custom_statuses[{id:"exposed"}].duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_exposed] run function cartographer_custom_statuses:descriptions/write/status/exposed

execute unless entity @s[tag=ca.st.e_infected] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.custom_statuses[{id:"infected"}].duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_infected] run function cartographer_custom_statuses:descriptions/write/status/infected

execute unless entity @s[tag=ca.st.e_morph] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.custom_statuses[{id:"polymorphed"}].duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_morph] run function cartographer_custom_statuses:descriptions/write/status/morph

execute unless entity @s[tag=ca.st.e_charmed] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.custom_statuses[{id:"charmed"}].duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_charmed] run function cartographer_custom_statuses:descriptions/write/status/charmed

execute unless entity @s[tag=ca.st.e_oiled] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.custom_statuses[{id:"oiled"}].duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_oiled] run function cartographer_custom_statuses:descriptions/write/status/oiled

execute unless entity @s[tag=ca.st.e_shackled] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.custom_statuses[{id:"shackled"}].duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_shackled] run function cartographer_custom_statuses:descriptions/write/status/shackled

execute unless entity @s[tag=ca.st.e_shocked] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.custom_statuses[{id:"shocked"}].duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_shocked] run function cartographer_custom_statuses:descriptions/write/status/shocked

execute unless entity @s[tag=ca.st.e_stunned] store result score $temp ca.write_status run data get storage cartographer_custom_statuses:player_equip main.tag.custom_statuses[{id:"stunned"}].duration
execute if score $temp ca.write_status matches 1.. unless entity @s[tag=ca.st.e_stunned] run function cartographer_custom_statuses:descriptions/write/status/stunned