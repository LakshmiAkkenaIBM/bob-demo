# ⚠️ IMPORTANT: Install Node.js 22 First!

## Current Status
❌ Node.js is **NOT** installed on your system
❌ Cannot run `npm install` until Node.js is installed

## What You Need to Do NOW

### Step 1: Download Node.js 22

**Choose ONE of these methods:**

#### Method A: Official Installer (RECOMMENDED for IBM Windows)

1. **Open your web browser**
2. **Go to:** https://nodejs.org/en/download
3. **Download:** Windows Installer (.msi) - 64-bit
   - Look for "LTS" (Long Term Support) or version 22.x
4. **Save the file** to your Downloads folder

#### Method B: Direct Download Link
- **LTS Version:** https://nodejs.org/dist/v22.11.0/node-v22.11.0-x64.msi
- **Latest:** https://nodejs.org/en/download/current

### Step 2: Install Node.js

1. **Locate the downloaded file** (usually in Downloads folder)
   - File name: `node-v22.x.x-x64.msi`

2. **Double-click the installer** to run it

3. **Follow the installation wizard:**
   - ✅ Click "Next"
   - ✅ Accept the license agreement
   - ✅ Keep default installation location: `C:\Program Files\nodejs\`
   - ✅ **IMPORTANT:** Check "Automatically install the necessary tools"
   - ✅ Click "Install"
   - ⏳ Wait for installation to complete (2-3 minutes)
   - ✅ Click "Finish"

### Step 3: Verify Installation

1. **Close VS Code completely** (important!)

2. **Reopen VS Code**

3. **Open a NEW terminal** in VS Code:
   - Menu: Terminal → New Terminal
   - Or press: `Ctrl + Shift + ` (backtick)

4. **Run these commands:**
   ```powershell
   node --version
   ```
   Should show: `v22.x.x`

   ```powershell
   npm --version
   ```
   Should show: `10.x.x` or higher

### Step 4: If Commands Still Not Found

If you still see "command not recognized" errors:

**Option 1: Restart Computer**
- Close all applications
- Restart your computer
- Reopen VS Code
- Try the commands again

**Option 2: Check PATH Environment Variable**
1. Press `Windows + R`
2. Type: `sysdm.cpl` and press Enter
3. Click "Advanced" tab
4. Click "Environment Variables"
5. Under "System variables", find "Path"
6. Verify these entries exist:
   - `C:\Program Files\nodejs\`
   - `%APPDATA%\npm`
7. If missing, add them and restart

**Option 3: Use Full Path**
```powershell
& "C:\Program Files\nodejs\node.exe" --version
& "C:\Program Files\nodejs\npm.cmd" --version
```

### Step 5: Once Node.js is Installed

After successful installation, return to the project directory and run:

```powershell
# Navigate to project (if not already there)
cd C:\Users\LakshmiAkkena\OneDrive` - IBM\Desktop\Laks\AI\bob-demo\bob-get-started\express-todo-api

# Install project dependencies
npm install

# Run the application
npm run dev
```

---

## Troubleshooting

### Issue: "Access Denied" during installation
**Solution:** Right-click the installer → "Run as Administrator"

### Issue: Installation fails
**Solution:** 
1. Uninstall any existing Node.js versions
2. Restart computer
3. Try installation again

### Issue: npm command not found after installation
**Solution:**
1. Close ALL terminal windows
2. Close VS Code completely
3. Reopen VS Code
4. Open a NEW terminal
5. Try again

### Issue: Still not working after restart
**Solution:** Check if Node.js was installed to a different location:
```powershell
where.exe node
where.exe npm
```

---

## Alternative: Portable Node.js (If Installation Blocked)

If you cannot install Node.js due to IBM restrictions:

1. **Download portable version:**
   - Go to: https://nodejs.org/dist/v22.11.0/
   - Download: `node-v22.11.0-win-x64.zip`

2. **Extract to a folder:**
   - Extract to: `C:\Users\LakshmiAkkena\nodejs-portable\`

3. **Use full paths:**
   ```powershell
   cd C:\Users\LakshmiAkkena\OneDrive` - IBM\Desktop\Laks\AI\bob-demo\bob-get-started\express-todo-api
   
   C:\Users\LakshmiAkkena\nodejs-portable\npm.cmd install
   C:\Users\LakshmiAkkena\nodejs-portable\npm.cmd run dev
   ```

---

## Quick Check: Is Node.js Installed?

Run this in PowerShell:
```powershell
node --version
```

- ✅ **Shows version number** → Node.js is installed, proceed to `npm install`
- ❌ **"not recognized" error** → Node.js NOT installed, follow steps above

---

## Next Steps After Installation

Once Node.js is successfully installed:

1. ✅ Run `npm install` in the project directory
2. ✅ Run `npm run dev` to start the application
3. ✅ Test the API at http://localhost:3000/api/todos
4. ✅ Complete the tutorial!

---

**Need Help?** 
- Check if your organization has specific Node.js installation procedures
- Contact your IT department if installation is blocked
- Try the portable version as an alternative