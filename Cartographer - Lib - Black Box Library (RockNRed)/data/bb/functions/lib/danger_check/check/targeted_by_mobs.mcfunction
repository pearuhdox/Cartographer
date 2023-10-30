
#Check nearby hostile mobs targeting player
execute as @e[type=#bb:hostile,distance=..16] on target run tag @s add bbl.targeted

#If so, tag feedback
execute if entity @s[tag=bbl.targeted] run function bb:lib/danger_check/targeted_by_mobs

#Remove target tags
tag @a remove bbl.targeted
