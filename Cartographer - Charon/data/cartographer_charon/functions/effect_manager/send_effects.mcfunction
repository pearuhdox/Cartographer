function suso.player_data:get/do

summon area_effect_cloud ~ ~1 ~ {Tags:["ca.charon_effect_mgr_reapply"],Particle:"block air",ReapplicationDelay:0,Radius:0.1f,RadiusOnUse:-5.0f,Duration:10,DurationOnUse:0f,Age:-1,WaitTime:0,Potion:"minecraft:awkward",Effects:[]}
data modify entity @e[type=area_effect_cloud,tag=ca.charon_effect_mgr_reapply,limit=1,sort=nearest] Effects set from storage suso:pldata working_data.DeathRestoreEffects