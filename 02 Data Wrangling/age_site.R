age <- cancer_by_age
unique(age$AGE)
MAP <- c('30-34'="early", '20-24'="early", '15-19'="early", '10-14'="early", '5-9'="early", '1-4'="early",'<1'="early", '5-9'="early", '35-39'="mid", '40-44'="mid", '45-49'="mid", '50-54'="mid", '55-59'="mid", '60-64'= "Late", '65-69'= "Late", '70-74'= "Late", '75-79'= "Late", '80-84'= "Late", '85+'= "Late")

#Dividing 90/3, we split life into Early (1-34), Mid (35 - 59), and Late (60-85+) phases

age <- age %>% select(AGE,SITE,EVENT_TYPE,COUNT,RACE,SEX) %>% filter(RACE != 'All Races', COUNT != 'null', SITE != 'All Cancer Sites Combined')
age$AGE <- MAP[age$AGE]
