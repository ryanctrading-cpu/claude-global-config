Run the full interactive audit protocol on the current Etsy spreadsheet template.

Write a Python audit script (audit_run.py) that:

1. **Formula reactivity test** - write test values to key input cells via the gws API, read downstream cells to verify they updated, then restore original values. Cover:
   - Change a transaction amount → verify dashboard totals, monthly summary, annual summary all update
   - Change an income/rate input → verify all allocation/calculation cells downstream update
   - Change a strategy toggle (if applicable) → verify it cascades to all dependent cells
   - Print PASS/FAIL for each chain

2. **Year-aware check** - verify date aggregations use TEXT(date,"YYYY") filtering, not raw SUMIF by month

3. **Column A margin check** - verify every tab has column A as an empty margin (width 20-30px), content starts at B

4. **Row height check** - verify instruction rows ≥65px, header rows 32-40px, data rows 24-28px

5. **Placeholder scan** - read all cell values and flag any containing "Your Shop Name", "TODO", "PLACEHOLDER", or similar

6. **Chart background check** - verify all charts have backgroundColor set to white

7. **Formula range check** - flag any formula using ranges smaller than 1000 rows (e.g. F3:F17 instead of F3:F1000)

8. **onOpen trigger check** - verify trigger exists and is a simple trigger (not time-based)

Run the script and print PASS/FAIL for each check. Any FAIL must be fixed before the sheet is listed.
