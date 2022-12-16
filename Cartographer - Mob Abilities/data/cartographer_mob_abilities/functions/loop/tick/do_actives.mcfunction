execute if entity @s[tag=ca.laser,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..32] run function cartographer_mob_abilities:animations/laser
execute if entity @s[tag=ca.barrage,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..18] run function cartographer_mob_abilities:animations/barrage
execute if entity @s[tag=ca.sniper_shot,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..24] run function cartographer_mob_abilities:animations/sniper_shot
execute if entity @s[tag=ca.volley,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..24] run function cartographer_mob_abilities:animations/volley


execute if entity @s[tag=ca.nova,tag=!ca.pulse,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..16] run function cartographer_mob_abilities:animations/nova
execute if entity @s[tag=ca.nova,tag=ca.pulse,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..8] run function cartographer_mob_abilities:animations/nova

execute if entity @s[tag=ca.ambush,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..25] run function cartographer_mob_abilities:animations/ambush

execute if entity @s[tag=ca.command,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:animations/command

execute if entity @s[tag=ca.hookshot,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:animations/hookshot

execute if entity @s[type=!blaze,tag=ca.smash,tag=!leaping,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:animations/smash
execute if entity @s[type=blaze,tag=ca.smash,tag=!leaping,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:animations/smash/blaze

execute if entity @s[tag=ca.orbit,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..16] run function cartographer_mob_abilities:animations/orbit

execute if entity @s[tag=ca.duplicator,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:animations/duplicator

execute if entity @s[tag=ca.haunt,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:animations/haunt

execute if entity @s[tag=ca.summoner,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:animations/summoner


execute if entity @s[tag=ca.augmenter,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:animations/augmenter

execute if entity @s[tag=ca.healer,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..20] run function cartographer_mob_abilities:animations/healer

execute if entity @s[tag=ca.charge,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..16] run function cartographer_mob_abilities:animations/charge

execute if entity @s[tag=ca.quickdraw,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..11] run function cartographer_mob_abilities:animations/quickdraw

execute unless block ~ ~-1 ~ #bb:raycast if entity @s[tag=ca.rift,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..18] run function cartographer_mob_abilities:animations/rift

execute if entity @s[tag=ca.sweep,scores={cooldown=0}] unless score @s ca.sweep_animation matches 1.. if entity @a[gamemode=!spectator,gamemode=!creative,distance=..8] run function cartographer_mob_abilities:animations/sweep

execute if entity @s[tag=ca.storm,scores={cooldown=0}] if entity @a[gamemode=!spectator,gamemode=!creative,distance=..18] run function cartographer_mob_abilities:animations/storm

#Run Sidearm after ability here
execute if score @s[tag=ca.sidearm_after] ca.sidearm_windup matches 1.. run function cartographer_mob_abilities:passive/sidearm/channel

