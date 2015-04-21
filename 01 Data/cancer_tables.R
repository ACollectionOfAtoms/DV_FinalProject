age_adj_rates_child.df <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from AGE_ADJ_RATES_CHILD"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_dah3227', PASS='orcl_dah3227', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))

age_adj_rates_iccc.df <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from age_adj_rates_iccc"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_dah3227', PASS='orcl_dah3227', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))

age_specific_rates_child <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from AGE_specific_RATE_CHILD"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_dah3227', PASS='orcl_dah3227', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))

age_specific_rates_iccc <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from AGE_specific_RATES_iccc"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_dah3227', PASS='orcl_dah3227', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))

brain_cancer_by_site <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from brain_cancer_by_site"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_dah3227', PASS='orcl_dah3227', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))

#Cancer by age, ~200k rows. Load time ~2 minutes
cancer_by_age <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from cancer_by_age"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_dah3227', PASS='orcl_dah3227', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))

# ~650k rows, load time > 5 minutes.
cancer_by_area <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from cancer_by_area"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_dah3227', PASS='orcl_dah3227', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))

#Also large, couldn't even load it!
cancer_by_site <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from cancer_by_site"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_dah3227', PASS='orcl_dah3227', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))

child_cancer_by_site <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from child_cancer_by_site"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_dah3227', PASS='orcl_dah3227', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))

child_cancer_iccc <- data.frame(fromJSON(getURL(URLencode('129.152.144.84:5001/rest/native/?query="select * from child_cancer_iccc"'),httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521:ORCL', USER='C##cs329e_dah3227', PASS='orcl_dah3227', MODE='native_mode', MODEL='model', returnDimensions = 'False', returnFor = 'JSON'), verbose = TRUE)))