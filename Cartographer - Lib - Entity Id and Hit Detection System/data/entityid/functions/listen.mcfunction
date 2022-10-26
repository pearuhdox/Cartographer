#entity_hurt_player listen toggle
execute unless score @s ehp_listen matches 0.. run function entityid:listen/ehp_disable
execute if score @s[tag=!ehp_listen] ehp_listen matches 1.. run function entityid:listen/ehp_enable
execute if score @s[tag=ehp_listen] ehp_listen matches 0 run function entityid:listen/ehp_disable

#player_hurt_entity listen toggle
execute unless score @s phe_listen matches 0.. run function entityid:listen/phe_disable
execute if score @s[tag=!phe_listen] phe_listen matches 1.. run function entityid:listen/phe_enable
execute if score @s[tag=phe_listen] phe_listen matches 0 run function entityid:listen/phe_disable

#entity_killed_player listen toggle
execute unless score @s ekp_listen matches 0.. run function entityid:listen/ekp_disable
execute if score @s[tag=!ekp_listen] ekp_listen matches 1.. run function entityid:listen/ekp_enable
execute if score @s[tag=ekp_listen] ekp_listen matches 0 run function entityid:listen/ekp_disable

#player_hurt_entity listen toggle
execute unless score @s pke_listen matches 0.. run function entityid:listen/pke_disable
execute if score @s[tag=!pke_listen] pke_listen matches 1.. run function entityid:listen/pke_enable
execute if score @s[tag=pke_listen] pke_listen matches 0 run function entityid:listen/pke_disable

#checking for valid registry
execute unless score @s entityid matches 0.. run function entityid:reregister

#clearing advancement failsafe
advancement revoke @s[tag=ehp_listen,advancements={entityid:entity_hurt_player={entity=true}}] only entityid:entity_hurt_player
advancement revoke @s[tag=phe_listen,advancements={entityid:player_hurt_entity={entity=true}}] only entityid:player_hurt_entity
advancement revoke @s[tag=ekp_listen,advancements={entityid:entity_killed_player={entity=true}}] only entityid:entity_killed_player
advancement revoke @s[tag=pke_listen,advancements={entityid:player_killed_entity={entity=true}}] only entityid:player_killed_entity