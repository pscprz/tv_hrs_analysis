library(tidyverse)
library(here)

data(gss_cat)
head(gss_cat)

tv_hours_table <- gss_cat %>%
  group_by(marital) %>%
  summarise(mean_tv_hours=mean(tvhours, na.rm=T)) 
tv_hours_table

write.csv(tv_hours_table, here("TV_hrs_by_MaritalStatus.csv"))
