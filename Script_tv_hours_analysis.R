install.packages("tidyverse")
library(tidyverse)
install.packages("here")
gss_cat 

gss_cat 

View(gss_cat )

library(here)
tv_hours_table <- gss_cat %>% 
  group_by(marital) %>% 
  summarise(mean_tv_hours=mean(tvhours, na.rm = T ))

write.csv(tv_hours_table, here("TV_hours_by_Marital.csv"))
