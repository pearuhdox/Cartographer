execute store result score @s charon.xp_return run data get storage cartographer_charon:player temp.tag.XpStored

execute if score @s charon.xp_return matches 1.. run function cartographer_charon:xp/return/rec