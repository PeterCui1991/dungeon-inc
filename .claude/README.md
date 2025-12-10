# Claude AI Assistant Configuration for Godot

This directory contains configuration files to help Claude assist with Godot development.

## How to Use Claude for Godot Development

### Initial Setup (Done!)
- Project structure is organized following Godot best practices
- `GODOT_CONTEXT.md` contains all the context Claude needs
- Example templates are provided

### Working with Claude

#### 1. Creating New Scenes
Ask Claude to create scenes like this:
```
"Create a player character scene with sprite, collision, and movement script"
"Add a UI scene with health bar and score display"
"Create a dungeon room scene with tilemap"
```

Claude will:
- Create the `.tscn` file with proper node hierarchy
- Create the accompanying `.gd` script
- Use proper Godot 4.x syntax
- Follow the project's coding conventions

#### 2. Adding Features
Be specific about what you want:
```
"Add a jump mechanic to the player"
"Implement a inventory system"
"Create a dialogue system with UI"
```

#### 3. Modifying Existing Code
Claude will read your files first:
```
"Modify the player script to add double jump"
"Update the GameManager to track high scores"
```

#### 4. Adding UI Elements
Claude can help create Control node hierarchies:
```
"Add a pause menu with Resume and Quit buttons"
"Create a HUD with health bar and coin counter"
```

### Best Practices for AI-Assisted Godot Dev

1. **Be Specific**: Describe what you want clearly
   - Good: "Create a CharacterBody2D player with WASD movement and jump"
   - Vague: "Make a player"

2. **Reference the Context**: Claude has read `GODOT_CONTEXT.md`
   - Ask about Godot patterns: "Use the signal pattern for health changes"
   - Request specific node types: "Use a VBoxContainer for the menu"

3. **Iterate**: Start simple, then add features
   - First: "Create a basic enemy that moves left and right"
   - Then: "Add health and damage to the enemy"
   - Finally: "Make the enemy chase the player when close"

4. **Ask for Explanations**: Claude can teach Godot concepts
   - "Explain how signals work in Godot 4"
   - "What's the difference between _process and _physics_process?"

5. **Review Scene Files**: Claude creates .tscn files as text
   - Open them in Godot to see the visual result
   - The Godot editor will automatically reload changed files

### Example Workflow

1. **Plan**: "I want to create a dungeon crawler with player movement, enemies, and rooms"

2. **Create Core Systems**:
   - "Create a player character with 8-direction movement"
   - "Create a basic enemy that patrols"
   - "Create a room scene template"

3. **Add Features**:
   - "Add combat system where player can attack enemies"
   - "Add health system with UI health bar"
   - "Add room transitions"

4. **Polish**:
   - "Add particle effects when enemy dies"
   - "Add sound effects for movement and combat"
   - "Create a game over screen"

### Tips

- Claude reads files before modifying them
- Scene files (.tscn) are text-based and version control friendly
- Always test in Godot editor after Claude creates/modifies files
- Use the Godot documentation alongside Claude for learning
- Claude follows Godot 4.x syntax (not Godot 3.x)

### Common Requests

- "Create a [NodeType] scene for [purpose]"
- "Add [feature] to [existing script]"
- "Implement [game mechanic] using Godot's [system]"
- "Create a UI for [purpose] with [specific controls]"
- "Explain how [Godot concept] works"

### Project Organization

Claude will:
- Put scenes in `scenes/[category]/`
- Put scripts in `scripts/` or with their scenes
- Use autoload scripts in `scripts/autoload/` for singletons
- Keep assets organized in `assets/[type]/`

Enjoy building your dungeon game!
