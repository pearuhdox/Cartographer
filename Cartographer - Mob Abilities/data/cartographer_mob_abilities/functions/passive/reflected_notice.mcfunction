#execute run playsound minecraft:entity.player.attack.nodamage player @a[distance=..12] ~ ~ ~ 1 2
#execute run playsound minecraft:item.shield.block player @a[distance=..12] ~ ~ ~ 0.5 2

scoreboard players set $invul_time_check invul 25

kill @e[type=armor_stand,tag=invulnerable_notice]

summon armor_stand ~ ~1.8 ~ {CustomNameVisible:1b,NoGravity:1b,Marker:1b,Invisible:1b,Tags:["invulnerable_notice"],CustomName:'{"text":"🛡 Reflected 🛡","color":"#25f4e6","bold":true,"italic":false}'}