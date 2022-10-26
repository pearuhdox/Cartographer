#adding instruction tag
tag @s add entityid.player_killed_entity

#finding the entity that was killed
#getting entity id value
scoreboard players set receiver= entityid 0
execute if entity @s[advancements={entityid:player_killed_entity={bit0=true}}] run scoreboard players add receiver= entityid 1
execute if entity @s[advancements={entityid:player_killed_entity={bit1=true}}] run scoreboard players add receiver= entityid 2
execute if entity @s[advancements={entityid:player_killed_entity={bit2=true}}] run scoreboard players add receiver= entityid 4
execute if entity @s[advancements={entityid:player_killed_entity={bit3=true}}] run scoreboard players add receiver= entityid 8
execute if entity @s[advancements={entityid:player_killed_entity={bit4=true}}] run scoreboard players add receiver= entityid 16
execute if entity @s[advancements={entityid:player_killed_entity={bit5=true}}] run scoreboard players add receiver= entityid 32
execute if entity @s[advancements={entityid:player_killed_entity={bit6=true}}] run scoreboard players add receiver= entityid 64
execute if entity @s[advancements={entityid:player_killed_entity={bit7=true}}] run scoreboard players add receiver= entityid 128
execute if entity @s[advancements={entityid:player_killed_entity={bit8=true}}] run scoreboard players add receiver= entityid 256
execute if entity @s[advancements={entityid:player_killed_entity={bit9=true}}] run scoreboard players add receiver= entityid 512
execute if entity @s[advancements={entityid:player_killed_entity={bit10=true}}] run scoreboard players add receiver= entityid 1024
execute if entity @s[advancements={entityid:player_killed_entity={bit11=true}}] run scoreboard players add receiver= entityid 2048
execute if entity @s[advancements={entityid:player_killed_entity={bit12=true}}] run scoreboard players add receiver= entityid 4096
execute if entity @s[advancements={entityid:player_killed_entity={bit13=true}}] run scoreboard players add receiver= entityid 8192
execute if entity @s[advancements={entityid:player_killed_entity={bit14=true}}] run scoreboard players add receiver= entityid 16384
execute if entity @s[advancements={entityid:player_killed_entity={bit15=true}}] run scoreboard players add receiver= entityid 32768

#getting attacker id
scoreboard players operation attacker= entityid = @s entityid
tag @s add entityid.attacker

#runung attacker function on player
function #player_killed_entity/as_attacker

#removing tags
tag @s remove entityid.player_killed_entity
tag @s remove entityid.attacker

#revoking advancement
advancement revoke @s only entityid:player_killed_entity