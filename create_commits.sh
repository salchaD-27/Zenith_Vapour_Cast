#!/bin/bash
set -e
cd /Users/salchad27/Desktop/PH/H_Hackathons/IIC/codebase

echo "Starting commit creation..."

# Reset to create fresh commits
git reset --soft HEAD~1 2>/dev/null || true

# Commit 1: Initial project structure and README
git add README.md .gitignore
git commit -m "Initial project structure and README"

# Commit 2: Backend server setup
git add backend/index.js backend/package.json backend/package-lock.json
git commit -m "Add backend server setup and API routes"

# Commit 3: Authentication routes and middleware  
git add backend/routes/auth.js backend/routes/refresh-token.js backend/middleware/
git commit -m "Add authentication routes and middleware"

# Commit 4: Core API features
git add backend/routes/api.js backend/routes/features.js backend/routes/pw-by.js
git commit -m "Add core API features and prediction endpoints"

# Commit 5: Python ML scripts
git add backend/routes/prediction.py backend/routes/unified_predictor.py
git commit -m "Add Python ML prediction scripts"

# Commit 6: Frontend setup
git add frontend/package.json frontend/package-lock.json frontend/next.config.ts frontend/tsconfig.json frontend/eslint.config.mjs frontend/postcss.config.mjs frontend/.gitignore
git commit -m "Add frontend Next.js setup"

# Commit 7: Auth pages and context
git add frontend/src/app/auth/ frontend/src/app/context/AuthContext.tsx frontend/src/app/context/AppProviders.tsx frontend/src/app/api/auth/
git commit -m "Add authentication pages and context"

# Commit 8: Landing page and UI components
git add frontend/src/app/page.tsx frontend/src/app/globals.css frontend/src/app/layout.tsx frontend/src/app/components/
git commit -m "Add landing page and UI components"

# Commit 9: Dashboard with tabs
git add frontend/src/app/dashboard/
git commit -m "Add dashboard with tabs"

# Commit 10: Background and animations
git add frontend/src/components/background/ frontend/src/hooks/
git commit -m "Add background and animations"

# Commit 11: Static assets
git add frontend/public/
git commit -m "Add static assets and public files"

# Commit 12: GNSS data collection scripts
git add gnss-data-coll/zenith_dataset/scripts/
git commit -m "Add GNSS data collection scripts"

# Commit 13: Processed dataset
git add gnss-data-coll/zenith_dataset/processed/
git commit -m "Add processed GNSS dataset"

# Commit 14: ML models
git add model/
git commit -m "Add ML model pickle files"

# Commit 15: Raw data
git add gnss-data-coll/zenith_dataset/raw_igs/ gnss-data-coll/zenith_dataset/raw_era5/ backend/data/
git commit -m "Add raw GNSS and ERA5 data"

# Commit 16: Test files
git add test/ model/ZENITH.ipynb backend/data/gnss-datafetch.js backend/data/stations-metadata.json
git commit -m "Add test files and notebooks"

echo "All commits created successfully!"
git log --oneline
