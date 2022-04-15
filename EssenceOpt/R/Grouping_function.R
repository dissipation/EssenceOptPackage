library(dplyr)
Grouping_function = 
  function(y){
    y %>% 
      group_by(Segment) %>% 
      select(Segment,market_value,basis,outcome) %>% 
      summarise_at(vars(-group_cols()),max) %>% 
      arrange(Segment)%>%
      mutate(CPS = basis/outcome) %>% as.data.frame()
  }
