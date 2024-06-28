team leave @s
setblock 0 0 0 decorated_pot
loot replace block 0 0 0 contents loot {pools:[{rolls:1,entries:[{type:"item",name:"stone",functions:[{function:"set_name",entity:"this",name:{selector:"@s"}}]}]}]}
scoreboard players operation $disguise_team tf2.var = @s tf2.disguise.team
function player_motion:internal/subtick/get_player_uuid
execute summon turtle run function tf2:class/spy/nametag/set_data
team join RED @s[scores={tf2.team=1}]
team join BLU @s[scores={tf2.team=2}]