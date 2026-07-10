function tf2:building/sentry/get_owner
tag @p[tag=tf2.owner] add tf2.cause
tag @p[tag=tf2.owner] remove tf2.owner
execute store result storage tf2:vars level int 1 run scoreboard players get @s tf2.sentry.level
data modify storage tf2:lookup damages[-1].weapon set value []
data modify storage tf2:lookup damages[-1].weapon append value {text:"Level ",italic:true,color:"gray"}
data modify storage tf2:lookup damages[-1].weapon append string storage tf2:vars level 0
data modify storage tf2:lookup damages[-1].weapon append value ' Sentry Gun'