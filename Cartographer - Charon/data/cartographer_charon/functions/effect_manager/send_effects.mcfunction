function bb:lib/pldata/read

summon area_effect_cloud ~ ~1 ~ {Tags:["ca.charon_effect_mgr_reapply"],Particle:"block air",ReapplicationDelay:0,Radius:0.1f,RadiusOnUse:-5.0f,Duration:10,DurationOnUse:0,Age:-1,WaitTime:0,Potion:"minecraft:awkward",effects:[]}
data modify entity @e[type=area_effect_cloud,tag=ca.charon_effect_mgr_reapply,limit=1,sort=nearest] effects set from storage bbl:pldata sudo_root.working_data.DeathRestoreEffects