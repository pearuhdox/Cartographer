execute if entity @s[tag=ca.laser,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..32] run function cartographer_mob_abilities:charge/laser
execute if entity @s[tag=ca.barrage,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..18] run function cartographer_mob_abilities:charge/barrage
execute if entity @s[tag=ca.sniper_shot,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..24] run function cartographer_mob_abilities:charge/sniper_shot
execute if entity @s[tag=ca.volley,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..24] run function cartographer_mob_abilities:charge/volley


execute if entity @s[tag=ca.nova,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..16] run function cartographer_mob_abilities:charge/nova

execute if entity @s[tag=ca.ambush,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..25] run function cartographer_mob_abilities:charge/ambush

execute if entity @s[tag=ca.command,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:charge/command

execute if entity @s[tag=ca.hookshot,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:charge/hookshot

execute if entity @s[type=!blaze,tag=ca.smash,tag=tokened,tag=!leaping,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:charge/smash
execute if entity @s[type=blaze,tag=ca.smash,tag=tokened,tag=!leaping,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:charge/smash/blaze

execute if entity @s[tag=ca.orbit,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..16] run function cartographer_mob_abilities:charge/orbit

execute if entity @s[tag=ca.duplicator,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:charge/duplicator

execute if entity @s[tag=ca.haunt,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:charge/haunt

execute if entity @s[tag=ca.summoner,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:charge/summoner


execute if entity @s[tag=ca.augmenter,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:charge/augmenter

execute if entity @s[tag=ca.healer,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:charge/healer

execute if entity @s[tag=ca.charge,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..16] run function cartographer_mob_abilities:charge/charge

execute if entity @s[tag=ca.quickdraw,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..11] run function cartographer_mob_abilities:charge/quickdraw

execute unless block ~ ~-1 ~ #bb:raycast if entity @s[tag=ca.rift,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..18] run function cartographer_mob_abilities:charge/rift

execute if entity @s[tag=ca.sweep,tag=tokened,scores={cooldown=0}] unless score @s ca.sweep_animation matches 1.. if entity @a[gamemode=!spectator,gamemode=!creative,distance=..10] run function cartographer_mob_abilities:charge/sweep

execute if entity @s[tag=ca.storm,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..18] run function cartographer_mob_abilities:charge/storm

#Run Sidearm after ability here
execute if score @s[tag=ca.sidearm_after] ca.sidearm_windup matches 1.. run function cartographer_mob_abilities:passive/sidearm/channel

