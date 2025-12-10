# AI-Assisted Godot Development Guide

This guide explains how to effectively use Claude AI to develop your Godot game.

## Setup Complete!

Your project is now configured for AI-assisted development with:

- **Organized folder structure** following Godot best practices
- **Context documentation** that helps Claude understand Godot
- **Example templates** for common patterns
- **GameManager singleton** ready to use
- **Main scene** set up and configured

## How It Works

### 1. Claude Understands Godot

I have access to [GODOT_CONTEXT.md](GODOT_CONTEXT.md) which contains:
- Godot 4.x syntax and conventions
- Common patterns and best practices
- Project structure and organization
- Scene file format and node hierarchies
- GDScript coding standards

### 2. What I Can Do For You

#### Create Scenes & Scripts
```
You: "Create a player character with CharacterBody2D, sprite, and movement"
```
I will:
- Create `scenes/characters/player.tscn` with proper node hierarchy
- Create `scripts/player.gd` with typed GDScript
- Set up collision shapes and sprites
- Implement movement logic

#### Add UI Elements
```
You: "Add a HUD with health bar and score display"
```
I will:
- Create `scenes/ui/hud.tscn` with Control nodes
- Use proper anchors and containers for responsive layout
- Create script to update UI based on game state
- Connect to GameManager signals

#### Implement Game Features
```
You: "Add an inventory system"
```
I will:
- Design the data structure (Resource or Dictionary)
- Create UI for displaying items
- Implement add/remove/use item logic
- Set up signals for inventory changes

#### Modify Existing Code
```
You: "Add a dash ability to the player"
```
I will:
- Read your existing player script
- Add dash mechanic following your current code style
- Maintain compatibility with existing systems

### 3. Best Practices for Working Together

#### Be Specific About What You Want
- **Good**: "Create a 2D top-down player controller with 8-direction movement using WASD keys"
- **Better**: "Create a CharacterBody2D player that moves at 200px/s with keyboard input and smooth animation"

#### Tell Me About Your Game Vision
The more I know about your game design, the better I can help:
- Game genre (roguelike, platformer, puzzle, etc.)
- Core mechanics you want to implement
- Art style considerations (pixel art, hand-drawn, etc.)
- Target platform (PC, mobile, web)

#### Start Simple, Then Iterate
1. "Create a basic player that can move left and right"
2. "Add jumping to the player"
3. "Add wall jumping and coyote time"

This is better than asking for everything at once!

#### Ask Me to Explain Godot Concepts
- "How do signals work in Godot 4?"
- "What's the difference between Node2D and CharacterBody2D?"
- "When should I use @export vs regular variables?"

### 4. Example Development Session

Here's how a typical development session might look:

```
You: I want to start building the core gameplay. Create a player character
that can move in 8 directions in a top-down view.

Me: [Creates player scene and script with movement]

You: Great! Now create a simple enemy that follows the player when nearby.

Me: [Creates enemy scene with AI behavior]

You: Add health systems to both player and enemy, and let them damage each other.

Me: [Implements health, damage, and creates a health component]

You: Create a UI that shows the player's health as hearts in the top-left.

Me: [Creates HUD scene with heart containers]
```

### 5. Scene Creation Pattern

When I create scenes, they follow this pattern:

**For a Player Scene:**
```
scenes/characters/player.tscn
scripts/player.gd (or scripts/characters/player.gd)
```

**The scene file includes:**
- Root node (CharacterBody2D, Area2D, etc.)
- Child nodes (Sprite2D, CollisionShape2D, AnimationPlayer, etc.)
- Script attachment
- Basic property setup

**The script includes:**
- Class documentation
- Signals for communication
- Exported variables for inspector
- Proper type hints
- Built-in methods (_ready, _process, etc.)
- Custom methods
- Signal handlers

### 6. Common Requests & How to Ask

#### Creating Characters/Entities
```
"Create a [CharacterBody2D/Area2D/RigidBody2D] [entity type] that [behavior]"
Example: "Create a CharacterBody2D enemy that patrols between two points"
```

#### Adding Game Systems
```
"Implement a [system name] that [functionality]"
Example: "Implement a dialogue system that shows text boxes with character portraits"
```

#### Building UI
```
"Create a [UI type] with [elements]"
Example: "Create a pause menu with Resume, Settings, and Quit buttons"
```

#### Modifying Features
```
"Modify [file/system] to [change]"
Example: "Modify the player script to add a sprint ability"
```

### 7. Understanding Scene Files

I create scene files (.tscn) as text. Here's what you should know:

```tscn
[gd_scene load_steps=2 format=3 uid="uid://unique"]

[ext_resource type="Script" path="res://scripts/player.gd" id="1"]

[node name="Player" type="CharacterBody2D"]
script = ExtResource("1")

[node name="Sprite2D" type="Sprite2D" parent="."]

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
```

- Open these files in Godot to see the visual result
- Godot auto-reloads when files change
- You can edit properties in the Godot editor
- The editor will add more details (UIDs, shapes, etc.)

### 8. Project Organization

I'll keep your project organized:

```
scenes/
  main/          - Main game scenes (main menu, game world)
  ui/            - All UI screens and HUD
  characters/    - Player, enemies, NPCs
  levels/        - Level/room scenes

scripts/
  autoload/      - Singleton scripts (GameManager, AudioManager, etc.)
  resources/     - Custom Resource types
  utils/         - Helper functions

assets/
  sprites/       - All 2D graphics
  audio/         - Music and sound effects
  fonts/         - Font files
```

### 9. Using the GameManager

The GameManager autoload is available globally:

```gdscript
# In any script:
func _ready():
    GameManager.game_started.connect(_on_game_started)
    GameManager.score_changed.connect(_on_score_changed)

func collect_coin():
    GameManager.add_score(10)

func _on_player_died():
    GameManager.end_game()
```

### 10. Tips for Success

1. **Review in Godot**: Always open created scenes in Godot to verify
2. **Test Frequently**: Run your game after each major change
3. **Ask Questions**: If something doesn't work, ask me to debug
4. **Iterate**: Start with basic functionality, add complexity gradually
5. **Learn as You Go**: Ask me to explain the code I write

### 11. What to Expect

✅ **I Will:**
- Create properly structured Godot scenes and scripts
- Follow Godot 4.x best practices
- Use typed GDScript with proper conventions
- Explain concepts when asked
- Read existing code before modifying
- Maintain consistency with your project

❌ **I Cannot:**
- Run Godot engine or test the game (you'll need to do this)
- Create art assets (sprites, sounds) - but I can integrate them
- Know if something "looks good" visually - you'll need to judge

### 12. Ready to Build!

Your project is set up and ready. Here are some ideas to get started:

**Basic Gameplay:**
- "Create a player character with movement and animation"
- "Create enemies that chase the player"
- "Add a combat system with melee attacks"

**Game Feel:**
- "Add particle effects when enemies die"
- "Create a camera that follows the player with smoothing"
- "Add screen shake when the player takes damage"

**Systems:**
- "Implement a room-based dungeon generation system"
- "Create a procedural dungeon layout"
- "Add an upgrade/progression system"

**UI/UX:**
- "Create a main menu with Play, Settings, and Quit"
- "Add a game over screen with restart option"
- "Create a settings menu for audio and controls"

---

## Quick Reference

**Current Project Status:**
- Godot Version: 4.4
- Main Scene: [scenes/main/main.tscn](scenes/main/main.tscn)
- GameManager: Available globally
- Folder structure: Ready

**Ask me to:**
- Create scenes and scripts
- Implement game mechanics
- Build UI interfaces
- Explain Godot concepts
- Debug issues
- Refactor code

Let's build your dungeon game! What would you like to create first?
