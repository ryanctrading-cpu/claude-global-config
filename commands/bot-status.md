Check the live bot's health and current stats.

1. PM2 status: `ssh ryanguy7890@[GCP_VM_IP] "pm2 status"`
2. Last 30 log lines: `ssh ryanguy7890@[GCP_VM_IP] "pm2 logs grid-bot --lines 30 --nostream"`
3. Download and read state: `scp ryanguy7890@[GCP_VM_IP]:~/grid-bot/profit_state.json C:/Users/Ryan/bot/profit_state.json`

Then parse profit_state.json and report:
- total_net_profit
- total_gross_profit
- account_monthly_net for the most recent 2 months
- account_monthly_sells for the most recent 2 months
- Number of pairs with open positions
- Any ERROR lines from the logs
- Bot running status (online/stopped/errored)
