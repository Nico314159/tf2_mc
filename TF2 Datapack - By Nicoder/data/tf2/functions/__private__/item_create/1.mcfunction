execute if score tf2.attack_delay:@s tf2.var matches 1.. run return 0
scoreboard players operation $current tf2.team = @s tf2.team
data merge storage retina:input {HorizontalCount:3,VerticalCount:3,CenteredCount:false,EndpointEntity:true,SpreadFactor:[30,170]}
scoreboard players set $end_particle retina.__variable__ 1
function retina:traverse/multicast
execute as @e[type=#tf2:player_like,scores={retina.hit=1..}] run function tf2:__private__/anonymous/3
scoreboard players set $end_particle retina.__variable__ 0
scoreboard players add @s tf2.attack_delay 1250