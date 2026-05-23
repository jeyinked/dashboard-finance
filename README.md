# Fortuna

> Self-hosted personal finance dashboard — static web application served with Docker & nginx



Track your bank accounts, ETF portfolio, PEE (Plan Épargne Entreprise), and real estate assets month by month. No server, no account, no internet required.

---

## Features

- **Comptes bancaires** — track monthly balances and evolution
- **ETFs & actions** — parts × price, monthly variation, YTD performance (depuis 01/01), total +/- value
- **PEE** — Plan Épargne Entreprise, track total value per fund per month
- **Immobilier** — estimated value, remaining loan (crédit), equity & LTV
- **Patrimoine Net & Brut** — automatic calculation every month, including ETF gains
- **Dashboard** — evolution chart (Comptes / ETFs / PEE / Immo), allocation donut, YTD ETF performance chart
- **Historique** — full monthly entry table
- **Export / Import JSON** — backup and restore from Paramètres page
- **100% local** — data stored in browser localStorage, no cloud, no tracking

---

## Getting Started

### Option 1 — Open directly in browser

No installation needed.

```bash
xdg-open finance-dashboard.html   # Linux
open finance-dashboard.html       # macOS
```

Or just double-click the file in your file manager.

### Option 2 — Docker

```bash
docker build -t fortuna .
docker run -d -p 8080:80 --name fortuna fortuna
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

## Project Structure

```
fortuna/
├── finance-dashboard.html   # The entire app (HTML + CSS + JS)
├── Dockerfile
└── README.md
```

---

## Data & Backup

Data is stored in your browser's `localStorage` (key: `fortuna_v1`).

**To back up:**
1. Go to **Paramètres** → **Exporter le backup JSON**
2. Save the `.json` file somewhere safe (USB, cloud drive, etc.)

**To restore or transfer to another machine:**
1. Open `finance-dashboard.html` in Chrome
2. Go to **Paramètres** → **Importer un backup JSON**
3. Select your `.json` file — all data is restored instantly

> Backup files are automatically named `fortuna-backup-YYYY-MM-DD.json`

---

## Tech Stack

| Tool | Role |
|---|---|
| Vanilla HTML / CSS / JavaScript | App — no framework, no build step |
| [Chart.js 4](https://www.chartjs.org/) | Charts (evolution, donut, YTD, mini sparklines) |
| Google Fonts (Inter) | Typography |
| nginx:alpine | Static file serving (Docker) |

---

## License

MIT
