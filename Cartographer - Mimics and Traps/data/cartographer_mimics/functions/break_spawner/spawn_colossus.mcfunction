say test

$execute align xyz positioned ~0.5 ~0.8 ~0.5 run summon marker ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["ca.colossus_anim","ca.type_$(colossus_type)"]}
execute align xyz positioned ~0.5 ~0.8 ~0.5 run scoreboard players set @e[type=marker,limit=1,sort=nearest,tag=ca.colossus_anim] ca.colo_animation 1