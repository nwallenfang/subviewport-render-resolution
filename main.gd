extends Control


func _process(_delta: float) -> void:
	$Label.text = "Root Viewport Size: " + str(get_tree().root.size) +\
	 "\n3D Viewport Size: " + str($SubViewportContainer/SubViewport.size) +\
	"\nRoot Control Size: " + str(size)
	# setting the size only works when stretch = false, in which case the viewport doesn't fill up
	# the screen anymore
	$SubViewportContainer/SubViewport.size = get_tree().root.size
