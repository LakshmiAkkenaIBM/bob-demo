# 🚀 Quick Start Guide

## Prerequisites
✅ Node.js 22.x installed
✅ npm 10.x or higher

## Installation & Setup

```bash
# 1. Navigate to project
cd bob-get-started/express-todo-api

# 2. Install dependencies
npm install

# 3. Run in development mode
npm run dev

# 4. Test the API
curl http://localhost:3000/api/todos
```

## Available Commands

```bash
npm run dev      # Start development server with hot reload
npm run build    # Compile TypeScript to JavaScript
npm start        # Run production build
npm test         # Run tests with Node.js test runner
```

## API Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET | `/api/todos` | Get all todos |
| GET | `/api/todos/:id` | Get specific todo |
| POST | `/api/todos` | Create new todo |
| PUT | `/api/todos/:id` | Update todo |
| DELETE | `/api/todos/:id` | Delete todo |

## Example Requests

### Create a Todo
```bash
curl -X POST http://localhost:3000/api/todos \
  -H "Content-Type: application/json" \
  -d '{"title": "Learn Node.js 22"}'
```

### Update a Todo
```bash
curl -X PUT http://localhost:3000/api/todos/{id} \
  -H "Content-Type: application/json" \
  -d '{"completed": true}'
```

## Need Help?

- 📖 **Detailed Guide**: See `MODERNIZATION_COMPLETE.md`
- 🔧 **Setup Instructions**: See `SETUP_INSTRUCTIONS.md`
- 📚 **Technical Details**: See `MODERNIZATION_GUIDE.md`

## Troubleshooting

**Node.js not installed?**
→ See `SETUP_INSTRUCTIONS.md`

**TypeScript errors?**
→ Run `npm install` first

**Port 3000 in use?**
→ Use: `PORT=3001 npm run dev`