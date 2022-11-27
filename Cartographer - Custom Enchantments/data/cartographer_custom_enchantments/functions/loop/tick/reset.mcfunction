scoreboard players set @s ca.kill_entity 0
scoreboard players set @s ca.take_dmg 0
scoreboard players set @s ca.resist_dmg 0
scoreboard players set @s ca.deal_mel_dmg 0
scoreboard players set @s ca.deal_mel_dmg2 0
scoreboard players set @s ca.deal_mel_dmg3 0
scoreboard players set @s ca.mine_spawner 0
scoreboard players set @s ca.fire_bow 0
scoreboard players set @s ca.fire_cbow 0
scoreboard players set @s ca.throw_trident 0
scoreboard players set @s[scores={ca.sprint=5..}] ca.sprint 5
scoreboard players remove @s[scores={ca.sprint=1..}] ca.sprint 1
scoreboard players set @s[scores={ca.walk=5..}] ca.walk 5
scoreboard players remove @s[scores={ca.walk=1..}] ca.walk 1
scoreboard players set @s[scores={ca.swim=1..}] ca.swim 0
scoreboard players set @s[scores={ca.water_walk=201..}] ca.water_walk 200
scoreboard players remove @s[scores={ca.water_walk=5..}] ca.water_walk 5

scoreboard players set @s helper_potion 0
scoreboard players set @s ca.use_splashpot 0
scoreboard players set @s ca.use_lingerpot 0
scoreboard players set @s ca.use_pearl 0
scoreboard players set @s helper_eye 0

scoreboard players remove @s[scores={ca.rpt_cdl=2..}] ca.rpt_cdl 1

scoreboard players set @s ca.sneak 0

scoreboard players set @s ca.dmg_resist_sw 0
scoreboard players set @s ca.sw_fall 0

scoreboard players set @s ca.rally_amount 0
scoreboard players set @s ca.rally_damage 0

scoreboard players set @s ca.dmg_resist_check 0
scoreboard players set @s ca.dmg_resist_evaded 0

advancement revoke @s only cartographer_custom_enchantments:second_wind_projectile
advancement revoke @s only cartographer_custom_enchantments:second_wind_explosion