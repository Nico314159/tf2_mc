execute as @e[type=chicken,tag=stickybomb_marker] store result score @s entity_HP run data get entity @s Health 10
execute as @e[type=chicken,tag=stickybomb_marker,scores={entity_HP=..499}] run tag @s add tagged
execute unless score @s team = @e[tag=tagged,sort=nearest,limit=1] team run tag @e[tag=tagged,sort=nearest,limit=1] add delete
execute as @e[tag=delete] as @e[type=armor_stand,tag=deployed_stickybomb,sort=nearest,limit=1] at @s run function tf:legacy/demoman/delete_stickybomb
tag @e remove delete
tag @e[type=chicken] remove tagged
advancement revoke @s only tf:hit_stickybomb