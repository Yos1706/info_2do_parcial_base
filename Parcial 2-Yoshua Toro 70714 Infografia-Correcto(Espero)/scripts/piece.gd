extends Node2D

@export var color: String;
@export (Texture) var column_bomb_texture
@export (Texture) var row_bomb_texture
@export (Texture) var color_bomb_texture

var matched = false
var is_color_bomb = false;
var is_column_bomb = false;
var is_row_bomb = false;

func move(target):
	var move_tween = create_tween()
	move_tween.set_trans(Tween.TRANS_ELASTIC)
	move_tween.set_ease(Tween.EASE_OUT)
	move_tween.tween_property(self, "position", target, 0.4)

func make_column_bomb():
	is_column_bomb = true;
	$Sprite.texture = column_bomb_texture

func make_row_bomb():
	is_row_bomb = true;
	$Sprite.texture = row_bomb_texture

func make_color_bomb():
	is_color_bomb = true;
	$Sprite.texture = color_bomb_texture
	$Sprite.modulate = Color(1, 1, 1, 1)
	color = "Color"

func dim():
	$Sprite2D.modulate = Color(1, 1, 1, 0.5)
