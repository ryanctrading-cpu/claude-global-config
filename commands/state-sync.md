Download the latest state from the GCP VM and show a summary.

1. Download: `scp ryanguy7890@[GCP_VM_IP]:~/grid-bot/profit_state.json C:/Users/Ryan/bot/profit_state.json`
2. Also download trade history: `scp ryanguy7890@[GCP_VM_IP]:~/grid-bot/buy_fills_active.csv C:/Users/Ryan/bot/buy_fills_active.csv`

Then parse profit_state.json and report:
- total_net_profit / total_gross_profit / total_fees
- last_scaled_total vs current total (total_net_profit + total_new_money) - show how close to next scaling
- account_monthly_net and account_monthly_sells for all months
- Per-pair current_buy_size for BTC/USD, ETH/USD, SOL/USD (top 3)
- reference_prices.last_divisor
- Total open positions count across all pairs
- Count of entries in buy_fills_active.csv
