#Run Ability Canceling
execute if entity @s[tag=ca.needle,tag=tokened,scores={cooldown=0}] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.sweep,tag=tokened,scores={cooldown=0}] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.rift,tag=tokened,scores={cooldown=0}] run function cartographer_mob_abilities:charge/rift
execute if entity @s[tag=ca.quickdraw,tag=tokened,scores={cooldown=0}] run function cartographer_mob_abilities:helper/token/cancel_ability

execute if entity @s[tag=ca.augmenter,tag=tokened,scores={cooldown=0}] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.charge,tag=tokened,scores={cooldown=0}] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.healer,tag=tokened,scores={cooldown=0}] run function cartographer_mob_abilities:helper/token/cancel_ability