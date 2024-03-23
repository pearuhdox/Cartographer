
#Store health to be healed
scoreboard players operation @s bbl.hth.amount = @s bbl.heal_queue
#Store current health
execute store result score @s bbl.hth.pre_hp run data get entity @s Health
#Get max health
execute store result score $hth.max_hp bbl.storage run attribute @s minecraft:generic.max_health get
#Cancel heal check if already at full health
execute if score @s bbl.hth.pre_hp = $hth.max_hp bbl.storage run scoreboard players set @s bbl.hth.amount 0

#Attempt heal
function bb:lib/hpm/player_heal/main

#Reset score
scoreboard players reset @s bbl.heal_queue

schedule function bb:lib/hpm/player_heal/check_healed/global 2t