# How to Upload Dungeon Inc to GitHub

## Step-by-Step Guide

### 1. Create a GitHub Repository

1. Go to [github.com](https://github.com) and sign in
2. Click the **"+"** icon in the top-right corner
3. Select **"New repository"**
4. Fill in:
   - **Repository name**: `dungeon-inc`
   - **Description**: "A dungeon management game built with Godot Engine 4.4, developed with AI assistance"
   - **Public** or **Private**: Your choice
   - **DO NOT** initialize with README, .gitignore, or license (we already have these)
5. Click **"Create repository"**

### 2. Add All Your Files to Git

Open your terminal in the project folder and run:

```bash
# Add all the new files
git add .

# Commit everything
git commit -m "feat: initial project setup with AI-assisted development framework

- Set up Godot 4.4 project structure
- Add GameManager singleton for global game state
- Create organized folder structure (scenes, scripts, assets)
- Add comprehensive AI development documentation
- Configure main scene and project settings"
```

### 3. Connect to GitHub

Replace `YOUR_USERNAME` with your actual GitHub username:

```bash
# Add the remote repository
git remote add origin https://github.com/YOUR_USERNAME/dungeon-inc.git

# Verify it was added
git remote -v
```

### 4. Push to GitHub

```bash
# Push your code to GitHub
git push -u origin main
```

### 5. Authenticate (If Needed)

If this is your first time pushing, you'll need to authenticate.

**Option A: Personal Access Token (Recommended)**

1. Go to GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic)
2. Click "Generate new token (classic)"
3. Give it a name like "dungeon-inc-dev"
4. Select scopes: `repo` (full control of private repositories)
5. Click "Generate token"
6. **Copy the token** (you won't see it again!)
7. When prompted for password during `git push`, paste the token

**Option B: GitHub CLI**

```bash
# Install GitHub CLI if you don't have it
# macOS: brew install gh
# Windows: winget install GitHub.cli

# Authenticate
gh auth login

# Then push again
git push -u origin main
```

**Option C: SSH Key**

```bash
# Generate SSH key (if you don't have one)
ssh-keygen -t ed25519 -C "your_email@example.com"

# Copy the public key
cat ~/.ssh/id_ed25519.pub

# Add it to GitHub:
# GitHub → Settings → SSH and GPG keys → New SSH key

# Change remote to use SSH
git remote set-url origin git@github.com:YOUR_USERNAME/dungeon-inc.git

# Push
git push -u origin main
```

### 6. Verify Upload

Visit your repository:
```
https://github.com/YOUR_USERNAME/dungeon-inc
```

You should see all your files including:
- README.md with project info
- AI_DEVELOPMENT_GUIDE.md
- GODOT_CONTEXT.md
- All your project files and folders

### 7. Optional: Add a License

If you want to add a license:

```bash
# Create a LICENSE file (example: MIT License)
# You can do this on GitHub's web interface or locally

# On GitHub:
# Go to your repo → Add file → Create new file
# Name it "LICENSE"
# GitHub will offer license templates

# Then pull the changes:
git pull origin main
```

### 8. Optional: Add GitHub Topics

On your GitHub repository page:
1. Click the gear icon next to "About"
2. Add topics: `godot`, `godot-engine`, `game-development`, `ai-assisted`, `dungeon-crawler`
3. Save changes

## Future Workflow

After the initial upload, use this workflow:

```bash
# After making changes, check what changed
git status

# Add changed files
git add .

# Commit with a message
git commit -m "feat: add player movement system"

# Push to GitHub
git push
```

### Good Commit Message Patterns

```bash
# New features
git commit -m "feat: add player combat system"

# Bug fixes
git commit -m "fix: correct enemy pathfinding issue"

# Documentation
git commit -m "docs: update AI development guide"

# New scenes/assets
git commit -m "feat: add dungeon room scenes"

# Refactoring
git commit -m "refactor: reorganize UI scripts"
```

## Collaborate with Others

### Clone on Another Computer

```bash
git clone https://github.com/YOUR_USERNAME/dungeon-inc.git
cd dungeon-inc
# Open in Godot
```

### Pull Latest Changes

```bash
git pull origin main
```

## Troubleshooting

### Issue: "failed to push"
```bash
# Pull first, then push
git pull origin main --rebase
git push
```

### Issue: "Permission denied"
- Check your authentication method
- Verify your token/SSH key is correct
- Make sure the remote URL is correct: `git remote -v`

### Issue: "Large files"
If you have large asset files, consider using Git LFS:
```bash
git lfs install
git lfs track "*.png"
git lfs track "*.wav"
git lfs track "*.ogg"
git add .gitattributes
git commit -m "chore: configure Git LFS for assets"
git push
```

## What's in Your Repository

Your repository will include:

**Documentation:**
- README.md - Project overview
- AI_DEVELOPMENT_GUIDE.md - How to develop with AI
- GODOT_CONTEXT.md - Godot conventions
- SETUP_COMPLETE.md - Setup summary
- GITHUB_UPLOAD.md - This file

**Code:**
- scenes/ - All game scenes
- scripts/ - All game scripts
- assets/ - Game assets (sprites, audio, fonts)
- project.godot - Godot project file

**AI Config:**
- .claude/ - Claude configuration files

**Git:**
- .gitignore - Files to ignore
- .gitattributes - Git attributes

## Ready to Upload!

Just follow the steps above, and your Dungeon Inc project will be on GitHub!

**Quick checklist:**
- [ ] Created GitHub repository
- [ ] Committed all files locally
- [ ] Added remote origin
- [ ] Pushed to GitHub
- [ ] Verified files on GitHub
- [ ] (Optional) Added license
- [ ] (Optional) Added topics

After uploading, share your repository URL and start building your game with AI assistance!
