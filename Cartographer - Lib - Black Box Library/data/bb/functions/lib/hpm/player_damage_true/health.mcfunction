
#Checking if damage was taken from max health clear
scoreboard players operation $player.health bbl.storage = @s bbl.p_health
execute if score $player.health_before_hbc bbl.storage > $player.health bbl.storage store result score $player.lost_health bbl.storage run scoreboard players operation $player.health bbl.storage -= $player.health_before_hbc bbl.storage
execute if score $player.health bbl.storage matches -99..-1 run scoreboard players operation @s bbl.damage_queue += $player.health bbl.storage

#Setting health offset
execute store result score $player.health bbl.storage run attribute @s minecraft:generic.max_health get
scoreboard players operation $player.max_health bbl.storage = $player.health bbl.storage
scoreboard players operation $player.health bbl.storage -= @s bbl.p_health
scoreboard players operation @s bbl.damage_queue += $player.health bbl.storage

#Setting up to initialize health
effect give @s minecraft:health_boost 1 3 true

#Setting health
execute if score @s bbl.damage_queue matches 1..15 run function bb:lib/hpm/player_damage_true/damage_intervals/1-15
execute if score @s bbl.damage_queue matches 16..30 run function bb:lib/hpm/player_damage_true/damage_intervals/16-30
execute if score @s bbl.damage_queue matches 31.. run function bb:lib/hpm/player_damage_true/damage_intervals/31-40

#Finalization
effect clear @s minecraft:health_boost
attribute @s minecraft:generic.max_health modifier remove 31514192-0114-2651-8151-950000000006

execute if score @s bbl.damage_queue matches -99..-1 run function bb:lib/hpm/player_damage_true/heal_from_hb_damage

