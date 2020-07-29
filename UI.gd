extends Control

#nothing to see here really. this is just for demonstration.
#but hey, have another dope AF coding-tip:
#listen to "Grimes - 4ÆM" on repeat!

onready var tpl = $VBoxContainer/TagProcessingLabel

func _ready():
	tpl.set_original_text("This is a sample game tutorial text.\nPress {CONFIRM} to confirm.\nPress {SKIP} to skip.\nPress {DOUBT} to doubt. \nPress {BUTWHYTHO?!} to ask \"why\".\nUse {LEFTSTICK} to move and {RIGHTSTICK} to look around. Open your inventory with {START}.\nTo instantly win the game, enter the following Cheatcode:\n{L3}{D_UP}{D_UP}{DOUBT}{CONFIRM}{LB}{RT}{D_DOWN}{BUTWHYTHO?!}{D_LEFT}{R3}")

func _on_NIN_Button_pressed():
	tpl.update_text("Pro Controller")


func _on_PS_Button_pressed():
	tpl.update_text("PS4 Controller")


func _on_XBOX_Button_pressed():
	tpl.update_text("XInput Gamepad")


func _on_PC_Button_pressed():
	tpl.update_text("")


func _on_Nothing_Button_toggled(button_pressed):
	tpl.process_tags = button_pressed
	tpl.update_text(Input.get_joy_name(0))
