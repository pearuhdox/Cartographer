data remove storage cartographer:duplicate Data.Pos
data remove storage cartographer:duplicate Data.UUID
execute if entity @s[tag=ca.mitosis,tag=!cycle_3] run data modify storage cartographer:duplicate Data.DeathLootTable set value "nothing"
execute unless entity @s[tag=ca.mitosis] run data modify storage cartographer:duplicate Data.DeathLootTable set value "nothing"
data modify storage cartographer:duplicate Data.Tags append value "ca.duplicate"

execute store result score $dupe_health dupe_health run data get storage cartographer:duplicate Data.Health
scoreboard players operation $dupe_health dupe_health /= $2 ca.CONSTANT
execute if score $dupe_health dupe_health matches ..0 run scoreboard players set $dupe_health dupe_health 1

data modify entity @s {} merge from storage cartographer:duplicate Data

execute store result entity @s Health float 1 run scoreboard players add $dupe_health dupe_health 0

execute unless entity @s[tag=ca.mitosis] run scoreboard players set @s cooldown 18
execute if entity @s[tag=ca.mitosis] run scoreboard players set @s cooldown 5
execute if entity @s[tag=ca.mitosis,tag=!cycle_3] run tag @s remove ca.duplicate
execute unless entity @s[tag=ca.mitosis] run tag @s remove ca.duplicator
execute if entity @s[tag=cycle_3] run tag @s remove ca.duplicator

execute if entity @s[tag=ca.mitosis,tag=cycle_2] run tag @s add cycle_3
execute if entity @s[tag=ca.mitosis,tag=cycle_1] run tag @s add cycle_2
execute if entity @s[tag=ca.mitosis,tag=!cycle_1] run tag @s add cycle_1

function cartographer_core:helper/unregister_ehid

tag @s remove colossus_greed

tag @s add done_dupe

tag @s add ca.has_death

tag @s remove attacking
tag @s remove tokened

