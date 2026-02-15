#!/bin/bash
set -e

echo "Starting commit creation..."

BASE="/Users/salchad27/Desktop/PH/H_Hackathons/IIC/codebase"

# Reset to create fresh commits
git -C "$BASE" reset --soft HEAD~1 2>/dev/null || true

# Commit 1: Initial project structure and README
git -C "$BASE" add README.md .gitignore
git -C "$BASE" commit -m "Initial project structure and README"

# Commit 2: Backend server setup
git -C "$BASE" add backend/index.js backend/package.json backend/package-lock.json
git -C "$BASE" commit -m "Add backend server setup and API routes"

# Commit 3: Authentication routes and middleware  
git -C "$BASE" add backend/routes/auth.js backend/routes/refresh-token.js backend/middleware/
git -C "$BASE" commit -m "Add authentication routes and middleware"

# Commit 4: Core API features
git -C "$BASE" add backend/routes/api.js backend/routes/features.js backend/routes/pw-by.js
git -C "$BASE" commit -m "Add core API features and prediction endpoints"

# Commit 5: Python ML scripts
git -C "$BASE" add backend/routes/prediction.py backend/routes/unified_predictor.py
git -C "$BASE" commit -m "Add Python ML prediction scripts"

# Commit 6: Frontend setup
git -C "$BASE" add frontend/package.json frontend/package-lock.json frontend/next.config.ts frontend/tsconfig.json frontend/eslint.config.mjs frontend/postcss.config.mjs frontend/.gitignore
git -C "$BASE" commit -m "Add frontend Next.js setup"

# Commit 7: Auth pages and context
git -C "$BASE" add frontend/src/app/auth/ frontend/src/app/context/AuthContext.tsx frontend/src/app/context/AppProviders.tsx frontend/src/app/api/auth/
git -C "$BASE" commit -m "Add authentication pages and context"

# Commit 8: Landing page and UI components
git -C "$BASE" add frontend/src/app/page.tsx frontend/src/app/globals.css frontend/src/app/layout.tsx frontend/src/app/components/
git -C "$BASE" commit -m "Add landing page and UI components"

# Commit 9: Dashboard with tabs
git -C "$BASE" add frontend/src/app/dashboard/
git -C "$BASE" commit -m "Add dashboard with tabs"

# Commit 10: Background and animations
git -C "$BASE" add frontend/src/components/background/ frontend/src/hooks/
git -C "$BASE" commit -m "Add background and animations"

# Commit 11: Static assets
git -C "$BASE" add frontend/public/
git -C "$BASE" commit -m "Add static assets and public files"

# Commit 12: GNSS data collection scripts
git -C "$BASE" add gnss-data-coll/zenith_dataset/scripts/
git -C "$BASE" commit -m "Add GNSS data collection scripts"

# Commit 13: Processed dataset
git -C "$BASE" add gnss-data-coll/zenith_dataset/processed/
git -C "$BASE" commit -m "Add processed GNSS dataset"

# Commit 14: ML models
git -C "$BASE" add model/
git -C "$BASE" commit -m "Add ML model pickle files"

# Commit 15: Raw data
git -C "$BASE" add gnss-data-coll/zenith_dataset/raw_igs/ gnss-data-coll/zenith_dataset/raw_era5/ backend/data/
git -C "$BASE" commit -m "Add raw GNSS and ERA5 data"

# Commit 16: Test files
git -C "$BASE" add test/ model/ZENITH.ipynb backend/data/gnss-datafetch.js backend/data/stations-metadata.json
git -C "$BASE" commit -m "Add test files and notebooks"

echo "All commits created successfully!"
git -C "$BASE" log --oneline
