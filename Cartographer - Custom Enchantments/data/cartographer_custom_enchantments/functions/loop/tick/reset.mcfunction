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


scoreboard players set @s helper_potion 0

scoreboard players set @s ca.use_splashpot 0
scoreboard players set @s ca.use_lingerpot 0
scoreboard players set @s ca.use_pearl 0
scoreboard players set @s ca.use_snowball 0
scoreboard players set @s ca.use_egg 0

scoreboard players set @s ca.use_water_bucket 0
scoreboard players set @s ca.use_lava_bucket 0

scoreboard players set @s helper_eye 0

scoreboard players remove @s[scores={ca.rpt_cdl=2..}] ca.rpt_cdl 1

execute if score @s ca.sw_lava_timer matches 1.. run scoreboard players remove @s ca.sw_lava_timer 1

scoreboard players set @s ca.dmg_resist_sw 0
scoreboard players set @s ca.sw_fall 0

scoreboard players set @s ca.rally_amount 0
scoreboard players set @s ca.rally_damage 0

scoreboard players set @s ca.dmg_resist_check 0
scoreboard players set @s ca.dmg_resist_evaded 0

scoreboard players set @s ca.gravity_fall 0

scoreboard players set @s ca.take_damage 0
scoreboard players set @s ca.take_damage_a 0

advancement revoke @s only cartographer_custom_enchantments:second_wind_projectile
advancement revoke @s only cartographer_custom_enchantments:second_wind_explosion