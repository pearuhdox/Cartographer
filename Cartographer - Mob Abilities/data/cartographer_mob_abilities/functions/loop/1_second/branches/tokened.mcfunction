#Check if mobs with abilities have needed players in range.
execute if entity @s[tag=ca.charge,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..16] run tag @s add avail_target
execute if entity @s[tag=ca.nova,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..16] run tag @s add avail_target
execute if entity @s[tag=ca.ambush,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..25] run tag @s add avail_target
execute if entity @s[tag=ca.healer,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..20] run tag @s add avail_target
execute if entity @s[tag=ca.augmenter,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..20] run tag @s add avail_target
execute if entity @s[tag=ca.command,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..20] run tag @s add avail_target
execute if entity @s[tag=ca.hookshot,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..20] run tag @s add avail_target
execute if entity @s[tag=ca.laser,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..32] run tag @s add avail_target
execute if entity @s[tag=ca.orbit,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..16] run tag @s add avail_target
execute if entity @s[tag=ca.smash,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..15] run tag @s add avail_target
execute if entity @s[tag=ca.sniper_shot,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..24] run tag @s add avail_target
execute if entity @s[tag=ca.volley,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..20] run tag @s add avail_target
execute if entity @s[tag=ca.duplicator,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..20] run tag @s add avail_target
execute if entity @s[tag=ca.sidearm,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..16] run tag @s add avail_target
execute if entity @s[tag=ca.haunt,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..20] run tag @s add avail_target
execute if entity @s[tag=ca.summoner,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..20] run tag @s add avail_target

#Half Second Checks
execute if entity @s[tag=ca.barrage,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..18] run tag @s add avail_target
execute if entity @s[tag=ca.rift,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..18] run tag @s add avail_target
execute if entity @s[tag=ca.sweep,tag=tokened,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..12] run tag @s add avail_target
execute if entity @s[tag=ca.quickdraw,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..11] run tag @s add avail_target
execute if entity @s[tag=ca.storm,scores={cooldown=0}] if entity @a[gamemode=!creative,gamemode=!spectator,distance=..18] run tag @s add avail_target
