# Game Studio Cursor Setup

Welcome to the unified Cursor development environment setup for our game studio! This repository contains everything needed to get engineers, artists, and designers up and running with a consistent AI-assisted development environment.

## 🚀 Quick Start

### Prerequisites
- Windows 10/11
- Administrator access (recommended)
- Internet connection
- Your studio's repository URL

### One-Command Setup

1. **Download this repository** as a ZIP file
2. **Extract** to a temporary location (e.g., `C:\temp\cursor-setup`)
3. **Open Command Prompt** or **PowerShell** as Administrator
4. **Navigate** to the extracted folder:
   ```cmd
   cd C:\temp\cursor-setup
   ```
5. **Run the setup**:
   ```cmd
   SETUP.bat "https://github.com/YOUR-STUDIO/cursor-config.git"
   ```
   Replace the URL with your studio's actual configuration repository.

## 📦 What Gets Installed

The setup script will automatically install:

- **Git** - Version control system
- **Cursor** - AI-powered code editor
- **Node.js** (optional) - For MCP servers and tools
- **Studio Configuration** - Rules, settings, and MCP configs

## 🎮 What's Included

### For Engineers
- Performance-focused coding rules
- Game engine-specific guidelines
- Platform optimization tips
- Debugging and profiling helpers

### For Artists
- Asset pipeline integration rules
- Naming convention enforcement
- Performance budget awareness
- Shader and material helpers

### For Designers
- Gameplay prototyping assistance
- Balance and tuning helpers
- Level design patterns
- Playtesting documentation

## 📁 Repository Structure

```
cursor-setup/
├── .cursor/                    # Cursor configuration
│   ├── rules/                 # AI behavior rules
│   │   ├── game_studio_rules.md
│   │   └── ai_agent_rules.md
│   ├── tools/                 # Custom tools and scripts
│   ├── docs/                  # Documentation
│   │   └── mcp-setup.md
│   └── notes/                 # Project notes templates
│       ├── project_checklist.md
│       ├── notebook.md
│       └── agentnotes.md
├── cursor-settings.json       # Cursor editor settings
├── setup-cursor-environment.ps1  # Main setup script
├── SETUP.bat                  # Easy launcher
└── README.md                  # This file
```

## 🔧 Manual Setup (Alternative)

If you prefer to set up manually or the script fails:

### 1. Install Git
```powershell
winget install Git.Git
```

### 2. Install Cursor
Download from [https://cursor.sh](https://cursor.sh)

### 3. Clone This Repository
```bash
git clone https://github.com/YOUR-STUDIO/cursor-config.git
cd cursor-config
```

### 4. Copy Configuration
- Copy `.cursor` folder to your project root
- Import `cursor-settings.json` in Cursor settings

## 🎯 Using Cursor for Game Development

### First Time Setup
1. Open Cursor
2. Open your game project folder
3. Check the `.cursor/rules` folder is present
4. Review the rules files to understand AI behavior

### Daily Workflow
1. **Start of Day**: Pull latest changes
2. **Before Coding**: Update project checklist
3. **During Work**: Let AI follow game dev rules
4. **After Features**: Update documentation
5. **End of Day**: Commit and push changes

### AI Assistant Tips
- Be specific about performance requirements
- Mention target platform constraints
- Ask for profiling when optimizing
- Request platform-specific code when needed

## 🔌 MCP (Model Context Protocol) Setup

MCP servers extend Cursor's capabilities. See `.cursor/docs/mcp-setup.md` for:
- Recommended MCP servers
- Installation instructions
- Custom game development MCPs
- Troubleshooting guide

### Quick MCP Setup
1. Install Node.js (if not already installed)
2. Create MCP config directory
3. Add MCP configuration file
4. Restart Cursor

## 🛠️ Customization

### Modifying Rules
Edit files in `.cursor/rules/` to:
- Add engine-specific guidelines
- Include studio coding standards
- Define project-specific patterns
- Set performance targets

### Adding Tools
Place scripts in `.cursor/tools/` for:
- Asset pipeline automation
- Build helpers
- Performance analysis
- Deployment scripts

## ❓ Troubleshooting

### Setup Script Issues
- **"Access Denied"**: Run as Administrator
- **"Winget not found"**: Install from Microsoft Store
- **"Git clone failed"**: Check repository URL and access

### Cursor Issues
- **Rules not working**: Verify `.cursor` folder location
- **Settings not applied**: Restart Cursor
- **MCP not starting**: Check Node.js installation

### Common Problems
1. **Antivirus blocking**: Add exceptions for Cursor
2. **Firewall issues**: Allow Cursor network access
3. **Permissions**: Ensure write access to project folders

## 📚 Additional Resources

### Documentation
- [Cursor Documentation](https://docs.cursor.sh)
- [MCP Protocol Spec](https://modelcontextprotocol.io)
- Studio Wiki: [Your Wiki URL]

### Support
- Studio Discord: #cursor-help
- IT Support: [Email/Ticket System]
- Team Lead: [Contact Info]

## 🔄 Updating

To update your Cursor configuration:

```bash
cd [your-cursor-config-directory]
git pull origin main
```

Then restart Cursor to apply changes.

## 🤝 Contributing

To improve this setup:
1. Fork the repository
2. Make your changes
3. Test thoroughly
4. Submit a pull request
5. Get team review

### Areas for Contribution
- Engine-specific rules
- Platform optimizations
- Tool integrations
- Documentation improvements

## 📝 License

[Your Studio License]

---

**Happy Game Development! 🎮**

*Remember: AI assists, but game feel comes from human creativity!*
