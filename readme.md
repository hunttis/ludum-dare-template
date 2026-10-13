# Godot 4.7 Ludum Dare Template

## Includes:

### Basic scene structure

- Main menu
- Options
- Game

### Volume settings

- Master, Music and Audio sound buses
- Volume sliders for different buses

### Example player sprite

- ColorRect generated sprite (no graphics)
- Keyboard controls

### Github workflow for deploying a web build to itch.io

- Uses https://github.com/abarichello/godot-ci to deploy to itch.io
- See instructions, you need to set some env variables into your github repo
  -> Repo settings
  -> Secrets and variables
  -> Actions
  - BUTLER_API_KEY
  - ITCHIO_USERNAME
  - ITCHIO_GAME
- The project is deployed here:
  - https://hunttis.itch.io/ludum-dare-template
