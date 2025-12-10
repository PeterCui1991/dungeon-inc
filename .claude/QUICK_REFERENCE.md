# Quick Reference for AI-Assisted Godot Development

## Common Request Templates

### Creating Scenes

**Player/Character:**
```
"Create a [CharacterBody2D/Area2D] [character type] with [features]"

Examples:
- "Create a CharacterBody2D player with top-down 8-direction movement"
- "Create an Area2D collectible coin that gives 10 points"
- "Create a CharacterBody2D enemy that patrols between two points"
```

**UI Elements:**
```
"Create a [UI type] with [elements]"

Examples:
- "Create a main menu with Play, Settings, and Quit buttons"
- "Create a HUD with health bar and score counter"
- "Create a pause menu overlay"
```

**Game Objects:**
```
"Create a [node type] [object] that [behavior]"

Examples:
- "Create a StaticBody2D wall with collision"
- "Create a door that opens when player is near and presses E"
- "Create a chest that contains random loot"
```

### Adding Features

**To Existing Objects:**
```
"Add [feature] to [object]"

Examples:
- "Add a dash ability to the player"
- "Add health regeneration to the player"
- "Add a death animation to enemies"
```

**New Systems:**
```
"Implement a [system] that [functionality]"

Examples:
- "Implement a save/load system"
- "Implement a dialogue system with portraits"
- "Implement a quest tracking system"
```

### Modifying Code

```
"Modify [file/script] to [change]"

Examples:
- "Modify the player script to use acceleration instead of instant movement"
- "Modify the GameManager to track high scores"
- "Modify the enemy AI to only chase when player is in line of sight"
```

### Learning

```
"Explain [concept]"
"How does [feature] work in Godot?"
"What's the difference between [A] and [B]?"

Examples:
- "Explain how signals work in Godot 4"
- "How does the physics engine handle collisions?"
- "What's the difference between Node2D and CharacterBody2D?"
```

## Godot Node Types Quick Reference

### 2D Nodes

- **Node2D**: Basic 2D node (position, rotation, scale)
- **CharacterBody2D**: For player/NPCs with movement (has move_and_slide)
- **RigidBody2D**: Physics-based objects (affected by gravity, forces)
- **StaticBody2D**: Non-moving solid objects (walls, floors)
- **Area2D**: Trigger zones (detects overlaps, no collision)
- **Sprite2D**: Displays a texture/image
- **AnimatedSprite2D**: Displays sprite animations
- **TileMap**: Grid-based level layouts
- **Camera2D**: Controls what player sees

### UI Nodes

- **Control**: Base UI node
- **Button**: Clickable button
- **Label**: Text display
- **TextureRect**: Display images in UI
- **Panel**: Background container
- **MarginContainer**: Adds margins around children
- **VBoxContainer**: Vertical layout
- **HBoxContainer**: Horizontal layout
- **GridContainer**: Grid layout
- **ProgressBar**: Health bars, loading bars, etc.

### Useful Nodes

- **AnimationPlayer**: Plays animations
- **Timer**: Delays and intervals
- **AudioStreamPlayer2D**: Positional sound effects
- **CollisionShape2D**: Defines collision area
- **ParticleSystemNode2D**: Particle effects

## Common Godot Patterns

### Movement (Top-Down)
```gdscript
func _physics_process(delta):
    var direction = Input.get_vector("left", "right", "up", "down")
    velocity = direction * speed
    move_and_slide()
```

### Movement (Platformer)
```gdscript
func _physics_process(delta):
    if not is_on_floor():
        velocity.y += gravity * delta

    if Input.is_action_just_pressed("jump") and is_on_floor():
        velocity.y = jump_velocity

    var direction = Input.get_axis("left", "right")
    velocity.x = direction * speed
    move_and_slide()
```

### Signal Connection
```gdscript
# In emitter
signal health_changed(new_health: int)

func take_damage(amount: int):
    health -= amount
    health_changed.emit(health)

# In receiver
func _ready():
    player.health_changed.connect(_on_player_health_changed)

func _on_player_health_changed(new_health: int):
    health_label.text = str(new_health)
```

### Area Detection
```gdscript
func _ready():
    body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node2D):
    if body.is_in_group("player"):
        print("Player entered!")
```

### Timer
```gdscript
func _ready():
    var timer = Timer.new()
    add_child(timer)
    timer.wait_time = 2.0
    timer.timeout.connect(_on_timer_timeout)
    timer.start()

func _on_timer_timeout():
    print("Timer finished!")
```

## Input Actions

Common input action names (define in Project Settings > Input Map):

**Movement:**
- `move_left`, `move_right`, `move_up`, `move_down`
- Or use: `ui_left`, `ui_right`, `ui_up`, `ui_down`

**Actions:**
- `jump`, `attack`, `interact`, `dash`, `pause`

**UI:**
- `ui_accept`, `ui_cancel`, `ui_select`

## GDScript Quick Tips

**Type Hints:**
```gdscript
var health: int = 100
var speed: float = 200.0
var player: CharacterBody2D
var items: Array[String] = []

func calculate(a: int, b: float) -> float:
    return a * b
```

**Export (shows in inspector):**
```gdscript
@export var speed: float = 300.0
@export_range(0, 100) var health: int = 100
@export var player_scene: PackedScene
```

**Onready (initialized when node enters tree):**
```gdscript
@onready var sprite = $Sprite2D
@onready var health_bar = %HealthBar  # % finds unique nodes
```

**Groups:**
```gdscript
# Add to group
add_to_group("enemies")

# Check if in group
if body.is_in_group("player"):
    pass

# Get all in group
var all_enemies = get_tree().get_nodes_in_group("enemies")
```

## File Naming Conventions

**Scenes:** `snake_case.tscn`
- `player.tscn`, `main_menu.tscn`, `health_bar.tscn`

**Scripts:** `snake_case.gd`
- `player.gd`, `enemy_ai.gd`, `game_manager.gd`

**Folders:** `lowercase`
- `scenes/`, `scripts/`, `assets/`

## What Claude Will Do

✅ **I will:**
- Create `.tscn` scene files with proper node hierarchy
- Create `.gd` script files with typed GDScript
- Follow Godot 4.x syntax (not 3.x)
- Use proper naming conventions
- Add helpful comments
- Read existing files before modifying
- Organize files in proper folders

✅ **You should:**
- Open created files in Godot to see the result
- Test the game after changes
- Tell me if something doesn't work
- Ask me to explain anything unclear
- Provide feedback on the implementation

## Next Steps

Ready to start building? Try asking:

1. **For a basic game loop:**
   - "Create a player character with movement"
   - "Create a basic enemy"
   - "Add collision between player and enemy"

2. **For UI:**
   - "Create a main menu"
   - "Add a HUD with health and score"
   - "Create a game over screen"

3. **For game feel:**
   - "Add a camera that follows the player"
   - "Add particle effects when enemy dies"
   - "Add screen shake on damage"

Let's build your game!
