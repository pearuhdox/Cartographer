#entity_hit_player listen toggle
execute unless score @s ehp_listen matches 0.. run function entityid:listen/ehp_disable
execute if score @s[tag=!ehp_listen] ehp_listen matches 1.. run function entityid:listen/ehp_enable
execute if score @s[tag=ehp_listen] ehp_listen matches 0 run function entityid:listen/ehp_disable

#player_hit_entity listen toggle
execute unless score @s phe_listen matches 0.. run function entityid:listen/phe_disable
execute if score @s[tag=!phe_listen] phe_listen matches 1.. run function entityid:listen/phe_enable
execute if score @s[tag=phe_listen] phe_listen matches 0 run function entityid:listen/phe_disable

#checking for valid registry
execute unless score @s entityid matches 0.. run function entityid:reregister