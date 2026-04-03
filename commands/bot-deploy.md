Deploy bot changes to GCP. Steps in order:

1. Stop the bot: `ssh ryanguy7890@[GCP_VM_IP] "pm2 stop grid-bot"`
2. Compile check locally: `python -m py_compile C:/Users/Ryan/bot/main.py && echo "OK" || echo "SYNTAX ERROR - abort"`
3. If syntax error, stop and report - do NOT proceed
4. Commit and push: `cd C:/Users/Ryan/bot && git add main.py dynamic_divisor.py dashboard.py && git commit -m "[describe the changes made this session]" && git push`
5. Pull on server: `ssh ryanguy7890@[GCP_VM_IP] "cd ~/grid-bot && git pull"`
6. Start bot: `ssh ryanguy7890@[GCP_VM_IP] "pm2 start grid-bot"`
7. Verify: `ssh ryanguy7890@[GCP_VM_IP] "pm2 status && pm2 logs grid-bot --lines 20 --nostream"`

Report the PM2 status and any errors from the last 20 log lines.
