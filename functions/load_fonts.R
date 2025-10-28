suppressPackageStartupMessages({
require("showtext")
library(sysfonts)
library(tidyverse)
})

font.paths("C:/Users/JakobFreak/AppData/Local/Microsoft/Windows/Fonts")
# search for fonts
font_files() %>% tibble()

# select fonts
font_files() %>% tibble() %>% filter(str_detect(family, "Roboto"))

# load fonts
font_add("Roboto Condensed",
         regular = "C:/Users/JakobFreak/AppData/Local/Microsoft/Windows/Fonts/RobotoCondensed-Regular.ttf",
         bold    = "C:/Users/JakobFreak/AppData/Local/Microsoft/Windows/Fonts/RobotoCondensed-Bold.ttf",
         italic  = "C:/Users/JakobFreak/AppData/Local/Microsoft/Windows/Fonts/RobotoCondensed-Italic.ttf")

font_add_google("Roboto Condensed", "Roboto Condensed")  # downloads directly from Google Fonts
showtext_opts(dpi = 300)
showtext_auto()

font.families()




