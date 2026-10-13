extends Node2D

func _ready() -> void:
  $OptionsContainer/ButtonContainer/MasterVolumeSlider.value = AudioServer.get_bus_volume_linear(AudioServer.get_bus_index("Master"))
  $OptionsContainer/ButtonContainer/MusicVolumeSlider.value = AudioServer.get_bus_volume_linear(AudioServer.get_bus_index("Music"))
  $OptionsContainer/ButtonContainer/SoundVolumeSlider.value = AudioServer.get_bus_volume_linear(AudioServer.get_bus_index("Sound"))
  $OptionsContainer/ButtonContainer/MasterVolumeSlider.grab_focus()

func _on_music_button_toggled(toggled_on: bool) -> void:
  AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"), linear_to_db($Slider.value))
  print("Music mute toggled to: ", !toggled_on)

func _on_sound_button_toggled(toggled_on: bool) -> void:
  AudioServer.set_bus_mute(1, !toggled_on)
  print("Sound mute toggled to: ", !toggled_on)

func _on_master_volume_slider_value_changed(value: float) -> void:
  AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Master"), linear_to_db(value))

func _on_music_volume_slider_value_changed(value: float) -> void:
  AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Music"), linear_to_db(value))

func _on_sound_volume_slider_value_changed(value: float) -> void:
  AudioServer.set_bus_volume_db(AudioServer.get_bus_index("Audio"), linear_to_db(value))

func _on_return_to_menu_button_pressed() -> void:
  Events.go_to_menu.emit()
