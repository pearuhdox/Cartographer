#Tell Cartographer this pack is in use
advancement revoke @a only cartographer_custom_durability:a_test_use


execute as @r[tag=ca.run_dur_fixer] at @s run function cartographer_custom_durability:durability/branch

scoreboard players set @a ca.total_hit 0