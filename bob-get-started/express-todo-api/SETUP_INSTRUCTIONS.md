# Setup Instructions - Node.js 22 Installation

## Installing Node.js 22 on Windows

Since Node.js is not currently installed on your system, follow these steps to install Node.js 22:

### Option 1: Official Installer (Recommended)

1. **Download Node.js 22**
   - Visit: https://nodejs.org/
   - Download the **LTS (Long Term Support)** version or **Current** version (22.x)
   - Choose the Windows Installer (.msi) - 64-bit

2. **Run the Installer**
   - Double-click the downloaded `.msi` file
   - Follow the installation wizard
   - **Important**: Check the box "Automatically install necessary tools"
   - Accept the license agreement
   - Choose installation location (default is fine)
   - Click "Install"

3. **Verify Installation**
   - Open a **new** PowerShell or Command Prompt window
   - Run: `node --version`
   - Should show: `v22.x.x`
   - Run: `npm --version`
   - Should show: `10.x.x` or higher

### Option 2: Using Winget (Windows Package Manager)

If you have Windows 11 or Windows 10 with winget installed:

```powershell
# Install Node.js 22
winget install OpenJS.NodeJS

# Verify installation
node --version
npm --version
```

### Option 3: Using Chocolatey

If you have Chocolatey package manager:

```powershell
# Run PowerShell as Administrator
choco install nodejs-lts

# Verify installation
node --version
npm --version
```

---

## After Node.js Installation

Once Node.js 22 is installed, return to VS Code and we'll continue with:

1. ✅ Installing project dependencies
2. ✅ Modernizing the codebase for Node.js 22
3. ✅ Testing the application

---

## Important Notes

- **Close and reopen VS Code** after installing Node.js for the PATH to update
- **Open a new terminal** in VS Code (Terminal → New Terminal)
- If `node` command still not found, restart your computer

---

## Quick Start After Installation

```bash
# Navigate to project directory
cd bob-get-started/express-todo-api

# Install dependencies
npm install

# Run the application
npm run dev
```

---

## Need Help?

If you encounter any issues during installation:
1. Make sure you downloaded the correct version (Windows 64-bit)
2. Try restarting VS Code or your computer
3. Check if Node.js was added to your PATH environment variable
4. Run PowerShell as Administrator if permission issues occur

---

**Ready to proceed?** Once Node.js 22 is installed, let me know and we'll continue with the modernization!