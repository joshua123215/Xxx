#!/usr/bin/env bash
set -e

ROOT_DIR="screamtok"
if [ -d "$ROOT_DIR" ]; then
  echo "Directory $ROOT_DIR already exists. Delete or move it before running this script."
  exit 1
fi

mkdir -p "$ROOT_DIR"
cd "$ROOT_DIR"

# Root .gitignore
cat > .gitignore <<'EOF'
node_modules/
backend/dev.db
backend/uploads/
frontend/node_modules/
.env
.env.local
.DS_Store
EOF

# README
cat > README.md <<'EOF'
# ScreamTok — TikTok-like MVP (Local Scaffold)

Overview
- Backend: Node.js + Express + Prisma (SQLite)
- Frontend: React
- Auth: JWT + bcrypt
- Uploads: Saved to backend/uploads/ (local). Replace with S3 in prod.

Quick start

1. Backend
   cd backend
   npm install
   cp .env.example .env
   # edit backend/.env and set JWT_SECRET (do not commit)
   npx prisma migrate dev --name init
   npm run dev
   # Backend runs at http://localhost:4000

2. Frontend
   cd frontend
   npm install
   npm start
   # Frontend runs at http://localhost:3000
EOF

# (File truncated for brevity in environment; original logic preserved)
