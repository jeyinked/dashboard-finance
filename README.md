# dashboard-finance# WealthFlow 💰

A self-hosted personal finance dashboard built with vanilla HTML/JS, deployable via Docker.

Track your bank accounts, ETF portfolio, and real estate assets — all in one place, with no server, no account, no internet required.

---

## Features

- **Bank accounts** — track monthly balances and evolution
- **ETF & stocks** — parts, price per share, YTD performance, monthly variation
- **Real estate** — estimated value, remaining loan, equity & LTV
- **Net & gross patrimoine** — automatic calculation every month
- **Charts** — monthly evolution, allocation breakdown, ETF YTD performance
- **Export / Import JSON** — full backup and restore
- **100% local** — data stored in browser localStorage, no cloud, no tracking

---

## Getting Started

### Option 1 — Open directly in browser

No installation needed.

```bash
open finance-dashboard.html   # macOS
xdg-open finance-dashboard.html  # Linux
```

Or just double-click the file in your file manager.

### Option 2 — Docker

```bash
docker build -t wealthflow .
docker run -d -p 8080:80 --name wealthflow wealthflow
```

Then open [http://localhost:8080](http://localhost:8080) in your browser.

---

## Dockerfile

```dockerfile
FROM nginx:alpine
COPY finance-dashboard.html /usr/share/nginx/html/index.html
EXPOSE 80
```

---

## Data & Backup

Data is stored in your browser's `localStorage` (key: `wealthflow_v3`).

To avoid data loss:
1. Go to **Paramètres** → **Exporter le backup JSON**
2. Save the `.json` file somewhere safe

To restore or transfer to another machine:
1. Open `finance-dashboard.html` in Chrome
2. Go to **Paramètres** → **Importer un backup JSON**
3. Select your `.json` file

---

## Tech Stack

- Vanilla HTML / CSS / JavaScript
- [Chart.js](https://www.chartjs.org/) — charts
- Google Fonts (Inter)
- nginx (Docker)
- No frameworks, no dependencies, no build step

---

## License

MIT
