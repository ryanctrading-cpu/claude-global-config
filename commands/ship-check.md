Full pre-ship checklist for an Etsy spreadsheet. Run every check before declaring a sheet ready to sell.

Work through each item and print PASS / FAIL / FIXED for each:

**Formulas**
- [ ] Every date aggregation is year-aware (TEXT(date,"YYYY") filter, not just month)
- [ ] No formula range smaller than 1000 rows
- [ ] Every cross-sheet reference verified correct (trace the formula, don't assume)
- [ ] Number formats match value types (% shows %, $ shows $, not swapped)
- [ ] No =TODAY() used as a starting date (must be a static serial)

**Layout**
- [ ] Column A is an empty margin (20-30px) on every tab — content starts at B
- [ ] No merged cell conflicts (check before writing to specific cells)
- [ ] Charts placed below data, not beside it
- [ ] No two charts anchored at the same row/col (they'd overlap)
- [ ] All charts have backgroundColor: white

**Row Heights**
- [ ] Instruction/multi-line rows ≥65px
- [ ] Header rows 32-40px
- [ ] Data rows 24-28px
- [ ] No row left at default 21px if content wraps

**Theme / Dark Mode**
- [ ] Full grid filled (1000 rows × 300 cols) in applyTheme() — not just data rows
- [ ] Every new section added to applyTheme() immediately when created
- [ ] Dark Mode tested — no dark text on dark background
- [ ] Input/dropdown cells have explicit light background + dark text in dark mode

**Apps Script**
- [ ] Only simple triggers used (onOpen, onEdit) — no time-based triggers
- [ ] onOpen wrapped in try/catch
- [ ] No pre-populated rows that conflict with onOpen row generation logic

**Content / Copy**
- [ ] No placeholder text remains ("Your Shop Name", "TODO", "by [name]", etc.)
- [ ] Instructions exactly match actual behavior — tested, not assumed
- [ ] No debug/scratch columns left in final sheet
- [ ] Cell notes added to non-obvious input cells
- [ ] Sample data included so buyers see it working immediately

**Final**
- [ ] Every tab listed in build plan has actual formulas, not just headers
- [ ] Interactive audit (from /etsy-audit) passes all chains
- [ ] Zero setup required for buyers — works on open, no auth, no scripts to run

Fix every FAIL before listing. Do not ship with any open items.
