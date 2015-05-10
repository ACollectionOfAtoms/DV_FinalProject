age <- cancer_by_age

age$COUNT <- as.character(age$COUNT)
age$COUNT[age$COUNT == 'null'] <- 1
age$COUNT <- as.factor(age$COUNT)

breasts <- c("Female Breast", "Male Breast", "Male and Female Breast <i>in situ</i>", "Female Breast, <i>in situ</i>", "Male and Female Breast")

breast <- c("Female Breast" = "Breast", "Male Breast"= "Breast", "Male and Female Breast <i>in situ</i>"= "Breast", "Female Breast, <i>in situ</i>"= "Breast", "Male and Female Brease"= "Breast")

age$SITE <- as.character(age$SITE)
age$SITE[age$SITE %in% breasts] <- "Breast"
age$SITE <- as.factor(age$SITE)

MAP <- c('70-74' = "Young Adult", '27-29' = 'Young Adult', '20-24'="Young Adult", '17-19'="Child", '7-14'="Child", '7-9'="Child", '1-4'="Child",'<1'="Child", '77-79'="Young Adult", '40-44'="Middle Adult", '47-49'="Middle Adult", '70-74'="Middle Adult", '77-79'="Middle Adult", '60-64'= "Elder Adult", '67-69'= "Elder Adult", '70-74'= "Elder Adult", '77-79'= "Elder Adult", '70-74'= "Elder Adult", '77+'= "Elder Adult")

#Classifications from wikipedia

age <- age %>% select(AGE,SITE,EVENT_TYPE,COUNT,RACE,SEX) %>% filter(COUNT != 'null',SITE != 'All Cancer Sites Combined', SEX != 'Male and Female') %>% arrange(desc(COUNT))
age$AGE <- MAP[age$AGE]
tbl_df(age)

#FINDING TOP 7 TYPES OF CANCER PER AGE GROUP
total <- age %>% group_by(SITE) %>% summarise(sum = sum(COUNT)) %>% arrange(desc(sum)) %>% slice(1:10)
tbl_df(total)

total_7 <- as.character(total$SITE)
total_7
child <- age %>% filter(AGE == 'Child') %>% group_by(SITE) %>% summarise(sum = sum(COUNT)) %>% arrange(desc(sum)) %>% slice(1:7)
child_7 <- as.character(child$SITE)

yadult <- age %>% filter(AGE == 'Young Adult') %>% group_by(SITE) %>% summarise(sum = sum(COUNT)) %>% arrange(desc(sum)) %>% slice(1:7)
yadult_7 <- as.character(yadult$SITE)

madult <- age %>% filter(AGE == 'Middle Adult') %>% group_by(SITE) %>% summarise(sum = sum(COUNT)) %>% arrange(desc(sum)) %>% slice(1:7)
madult_7 <- as.character(madult$SITE)

eadult <- age %>% filter(AGE == 'Elder Adult') %>% group_by(SITE) %>% summarise(sum = sum(COUNT)) %>% arrange(desc(sum)) %>% slice(1:7)
eadult_7 <- as.character(eadult$SITE)

all_top <- c(child_7, yadult_7, madult_7, eadult_7,total_7)
all_top <- unique(all_top)


tbl_df(age)
age <- filter(age, SITE %in% all_top) %>% group_by(AGE,SITE,EVENT_TYPE,RACE,SEX)

ggplot(age, aes(AGE), weight = COUNT, fill=SITE) + scale_x_discrete(limits=c("Child","Young Adult","Middle Adult","Elder Adult")) + geom_density(aes(group = SITE, color=SITE)) + ggtitle("Top 13 Cancers By Race and Age Group")+ theme(plot.title =element_text(size= 17, face="bold",vjust = 1.7)) + xlab("Age Group") + ylab("Count") + theme(axis.text.x = element_text(angle = 60, hjust = 1)) 

#Joined data
                                           
                                           