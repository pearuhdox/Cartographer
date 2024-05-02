scoreboard players set @s cooldown 8

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0

function cartographer_mob_abilities:abilities/quickdraw/normal

data merge entity @s {NoAI:0}

effect give @s speed 4 0 true

playsound minecraft:entity.blaze.death hostile @a[distance=..16] ~ ~ ~ 1.5 1.75
playsound minecraft:entity.firework_rocket.twinkle_far hostile @a[distance=..16] ~ ~ ~ 2 1.25

#Gap CLose Runs After Ability
execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit


#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/mob_manage/check_accelerate