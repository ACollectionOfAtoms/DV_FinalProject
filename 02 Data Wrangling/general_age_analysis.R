c_age <- cancer_by_age

tbl_df(c_age)

all_age <- c_age %>% select(AGE, COUNT,EVENT_TYPE) %>% filter(COUNT != 'null') %>% group_by(AGE) %>% summarise(sum=sum(COUNT)) %>% filter(AGE != '5-9') %>% mutate(cume = cume_dist(sum))

incidence_age <- c_age %>% select(AGE, COUNT,EVENT_TYPE) %>% filter(COUNT != 'null', EVENT_TYPE == 'Incidence') %>% group_by(AGE) %>% summarise(sum= sum(COUNT)) %>% filter(AGE != '5-9') %>% mutate(cume = cume_dist(sum)) %>% mutate(type = 'Incidence')

Mortality_age <- c_age %>% select(AGE, COUNT,EVENT_TYPE) %>% filter(COUNT != 'null', EVENT_TYPE == 'Mortality') %>% group_by(AGE) %>% summarise(sum=sum(COUNT)) %>% filter(AGE != '5-9') %>% mutate(cume = cume_dist(sum)) %>% mutate(type = 'Death')

all_age <- bind_rows(incidence_age,Mortality_age)

tbl_df(all_age)

ggplot(all_age, aes(x=AGE, y=sum, fill=type)) + geom_bar(stat="identity") + scale_fill_manual(values=c("#000000", "#CCCCCC"), name='') + ggtitle("Cancer Incidence and Death by Age")+ theme_bw()+ theme(plot.title =element_text(size= 18, face="bold",vjust = 1.5)) + xlab("Age") + ylab("Count") + theme(legend.direction = "horizontal",legend.position="bottom", legend.box = "horizontal" )

# It appears that by ages 40 - 50, youth does not aid in survivability.
