# LandChain - Ready-to-Run Website

## Windows (easiest)
1. Install Node.js 18+ (Node.js 20+ recommended).
2. Extract this ZIP.
3. Double-click `RUN-WEBSITE.bat`.
4. The first run installs dependencies automatically.
5. Open the local address shown by Next.js, normally http://localhost:3000.

## VS Code / Terminal
```bash
cd frontend
npm install
copy .env.local.example .env.local
npm run dev
```
Then open http://localhost:3000.

## Full platform
The repository also contains `backend`, `blockchain`, and `database`. Those services require their own environment variables and, depending on the feature, PostgreSQL and a local blockchain node.

## Note
The frontend can be opened independently for UI/demo purposes. Login, database-backed records, blockchain transactions, and other API-dependent features require the backend/database/blockchain services to be configured.
