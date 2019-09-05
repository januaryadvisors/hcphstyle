# hcph_style
ggplot theme and style guide for report

To install:
library(devtools)
devtools::install_github("januaryadvisors/hcphstyle")

Checklist of change for each graphic:
- library(hcphstyle)
- Find-replace “theme_ja” with “theme_hcph”
- Find-replace “ja_hex” with “hcph_hex”
- Change color palette to match chapter (make sure abbreviations make sense)
- Drop “alpha” from any ggplot element
- Drop HCPH logo from grid layout (change layout, drop rasterGrob)
- Ggsave as .eps file, width = 17, height = 10 if it’s a side-by-side plot (most are)
- Colors for precincts should be: Pct 1 ("idis"), Pct 2 ("cdis"), Pct 3("inj"), Pct 4 ("blue")
