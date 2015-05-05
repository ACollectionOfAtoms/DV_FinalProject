write.csv(age_adj_rates_child.df, file = "01 Data/age_adj_rates_child.csv", row.names = FALSE)
write.csv(age_adj_rates_iccc.df, file = "01 Data/age_adj_rates_iccc.csv", row.names = FALSE)
write.csv(age_specific_rates_child, file = "01 Data/age_specific_rates_child.csv", row.names = FALSE)
write.csv(age_specific_rates_iccc, file = "01 Data/age_specific_rates_iccc.csv", row.names = FALSE)
write.csv(brain_cancer_by_site, file = "01 Data/brain_cancer_by_site.csv", row.names = FALSE)
write.csv(cancer_by_age, file = "01 Data/cancer_by_age.csv", row.names = FALSE)

parts <- split(cancer_by_area, ceiling(seq_along(cancer_by_area)/3))
df1 <- parts[1]
write.csv(df1, file = "01 Data/cancer_by_area_1.csv", row.names = FALSE)
df2 <- parts[2]
write.csv(df2, file = "01 Data/cancer_by_area_2.csv", row.names = FALSE)
df3 <- parts[3]
write.csv(df3, file = "01 Data/cancer_by_area_3.csv", row.names = FALSE)
df4 <- parts[4]
write.csv(df4, file = "01 Data/cancer_by_area_4.csv", row.names = FALSE)
df5 <- parts[5]
write.csv(df5, file = "01 Data/cancer_by_area_5.csv", row.names = FALSE)

write.csv(cancer_by_site, file = "01 Data/cancer_by_site.csv", row.names = FALSE)
write.csv(child_cancer_by_site, file = "01 Data/child_cancer_by_site.csv", row.names = FALSE)
write.csv(child_cancer_iccc, file = "01 Data/child_cancer_iccc.csv", row.names = FALSE)
