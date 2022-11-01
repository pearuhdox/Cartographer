scoreboard players set @s cooldown 8

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0

execute unless entity @s[tag=ca.pulse_shot] run function cartographer_mob_abilities:abilities/quickdraw/normal
execute if entity @s[tag=ca.pulse_shot] run function cartographer_mob_abilities:abilities/quickdraw/pulse_shot/create

execute if entity @s[tag=ca.warpshot] run function cartographer_mob_abilities:abilities/quickdraw/warpshot

data merge entity @s {NoAI:0}

effect give @s speed 4 0 true

execute unless entity @s[tag=ca.predator] unless score @s ca.accelerate_stacks matches 2.. run function cartographer_mob_abilities:abilities/quickdraw/knockback

playsound minecraft:entity.blaze.death hostile @a[distance=..16] ~ ~ ~ 1.5 1.75
playsound minecraft:entity.firework_rocket.twinkle_far hostile @a[distance=..16] ~ ~ ~ 2 1.25

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/mob_manage/check_accelerate

#say test