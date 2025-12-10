# Dungeon Inc

A dungeon management game built with Godot Engine 4.4.

## About

Dungeon Inc is a game project developed using the Godot Engine.

## Getting Started

### Prerequisites

- [Godot Engine 4.4](https://godotengine.org/download) or later

### Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/YOUR_USERNAME/dungeon-inc.git
   cd dungeon-inc
   ```

2. Open the project in Godot Engine:
   - Launch Godot Engine
   - Click "Import"
   - Navigate to the project folder and select `project.godot`
   - Click "Import & Edit"

### Running the Game

Once the project is open in Godot:
- Press `F5` or click the "Play" button in the top-right corner to run the game

## Development

This project is currently in early development.

### AI-Assisted Development

This project is set up for AI-assisted development with Claude. See [AI_DEVELOPMENT_GUIDE.md](AI_DEVELOPMENT_GUIDE.md) for details on how to effectively use AI to build your game.

**Quick Start with AI:**
- Read [AI_DEVELOPMENT_GUIDE.md](AI_DEVELOPMENT_GUIDE.md) for best practices
- See [GODOT_CONTEXT.md](GODOT_CONTEXT.md) for Godot conventions used in this project
- Start creating by asking Claude to build scenes, scripts, and features

## Project Structure

```
dungeon-inc/
├── scenes/          # Scene files (.tscn)
│   ├── main/       # Main game scenes
│   ├── ui/         # UI scenes
│   ├── characters/ # Character/entity scenes
│   └── levels/     # Level scenes
├── scripts/        # GDScript files (.gd)
│   ├── autoload/   # Singleton/autoload scripts
│   ├── resources/  # Custom resource scripts
│   └── utils/      # Utility scripts
├── assets/         # Game assets
│   ├── sprites/    # 2D sprites and textures
│   ├── audio/      # Sound effects and music
│   └── fonts/      # Font files
├── resources/      # Godot resource files
├── addons/         # Third-party plugins
├── project.godot   # Main project configuration
├── GODOT_CONTEXT.md       # Godot development conventions
└── AI_DEVELOPMENT_GUIDE.md # Guide for AI-assisted development
```

## License

[Choose a license - e.g., MIT, GPL-3.0, etc.]

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## Contact

[Your contact information or links]
