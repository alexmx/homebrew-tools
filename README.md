# Homebrew Tools

A Homebrew tap for alexmx's CLI tools.

## Installation

Add this tap:

```bash
brew tap alexmx/tools
```

## Tools

### peek

macOS app inspector and automation tool via accessibility API.

**Install:**
```bash
brew install peek
```

**Setup:**
After installation, grant accessibility permissions:
```bash
peek doctor --prompt
```

**Usage:**
```bash
peek apps              # List running applications
peek tree <app>        # Inspect UI tree
peek mcp               # Start MCP server for AI integration
peek --help            # See all commands
```

**Repository:** [alexmx/peek](https://github.com/alexmx/peek)
