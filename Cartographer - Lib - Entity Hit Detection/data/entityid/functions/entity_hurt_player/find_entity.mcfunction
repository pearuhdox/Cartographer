#adding instruction tag
tag @s add entityid.entity_hurt_player

#finding the entity that hit the player
#getting entity id value
scoreboard players set attacker= entityid 0
execute if entity @s[advancements={entityid:entity_hurt_player={bit0=true}}] run scoreboard players add attacker= entityid 1
execute if entity @s[advancements={entityid:entity_hurt_player={bit1=true}}] run scoreboard players add attacker= entityid 2
execute if entity @s[advancements={entityid:entity_hurt_player={bit2=true}}] run scoreboard players add attacker= entityid 4
execute if entity @s[advancements={entityid:entity_hurt_player={bit3=true}}] run scoreboard players add attacker= entityid 8
execute if entity @s[advancements={entityid:entity_hurt_player={bit4=true}}] run scoreboard players add attacker= entityid 16
execute if entity @s[advancements={entityid:entity_hurt_player={bit5=true}}] run scoreboard players add attacker= entityid 32
execute if entity @s[advancements={entityid:entity_hurt_player={bit6=true}}] run scoreboard players add attacker= entityid 64
execute if entity @s[advancements={entityid:entity_hurt_player={bit7=true}}] run scoreboard players add attacker= entityid 128
execute if entity @s[advancements={entityid:entity_hurt_player={bit8=true}}] run scoreboard players add attacker= entityid 256
execute if entity @s[advancements={entityid:entity_hurt_player={bit9=true}}] run scoreboard players add attacker= entityid 512
execute if entity @s[advancements={entityid:entity_hurt_player={bit10=true}}] run scoreboard players add attacker= entityid 1024
execute if entity @s[advancements={entityid:entity_hurt_player={bit11=true}}] run scoreboard players add attacker= entityid 2048
execute if entity @s[advancements={entityid:entity_hurt_player={bit12=true}}] run scoreboard players add attacker= entityid 4096
execute if entity @s[advancements={entityid:entity_hurt_player={bit13=true}}] run scoreboard players add attacker= entityid 8192
execute if entity @s[advancements={entityid:entity_hurt_player={bit14=true}}] run scoreboard players add attacker= entityid 16384
execute if entity @s[advancements={entityid:entity_hurt_player={bit15=true}}] run scoreboard players add attacker= entityid 32768

#getting receiver id
scoreboard players operation receiver= entityid = @s entityid
tag @s add entityid.receiver

#tagging nearby attacker projectiles
execute if entity @s[advancements={entityid:entity_hurt_player={is_projectile=true}}] as @e[type=#entityid:projectile,distance=..8] if score @s entityid = attacker= entityid run tag @s add entityid.attacker.projectile

#executing instructed function on entity
execute as @e[type=!#entityid:id_skip] if score @s entityid = attacker= entityid run function entityid:entity_hurt_player/entity_found

#removing instruction tag and advancement
tag @s remove entityid.entity_hurt_player
tag @s remove entityid.receiver

#removing projectile tag if needed
execute if entity @s[advancements={entityid:entity_hurt_player={is_projectile=true}}] run tag @e[type=#entityid:projectile,tag=entityid.attacker.projectile] remove entityid.attacker.projectile

#revoking advancement
advancement revoke @s only entityid:entity_hurt_player