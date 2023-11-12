scoreboard players set $cancel ca.mob_var 0

execute if entity @s[tag=ca.laser,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..32] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.barrage,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..18] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.sniper_shot,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..24] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.volley,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..24] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.nova,tag=!ca.pulse,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..16] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.nova,tag=ca.pulse,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..8] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.ambush,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..25] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.command,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.hookshot,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.smash,tag=tokened,tag=!leaping,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.orbit,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..16] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.duplicator,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.haunt,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.summoner,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.augmenter,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.healer,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.infuser,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.charge,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..16] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.quickdraw,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..11] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.rift,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..18] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.sweep,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..8] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.storm,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..18] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.cutter,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..8] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.multihit,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..8] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.fling,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.reflect,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..16] run function cartographer_mob_abilities:helper/token/cancel_ability
execute if entity @s[tag=ca.spin_shot,tag=tokened,scores={cooldown=0}] unless entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:helper/token/cancel_ability

function #minecraft:cartographer/events/mob_abilities/ability/cancel_routine
