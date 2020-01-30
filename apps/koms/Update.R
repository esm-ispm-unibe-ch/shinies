
GraphdataF<-read.csv("Data_for_the_Graph7.csv")
colnames(GraphdataF)<-c("Treatment","Predicted probability to relapse in 2 years %", "Baseline risk score")
GraphdataF$`Predicted probability to relapse in 2 years %`<-round(GraphdataF$`Predicted probability to relapse in 2 years %`,1)

recode_factor(GraphdataF$Treatment, `Glateramere Acetate` = "Glatiramer Acetate")
GraphdataF$Treatment[is.na(GraphdataF$Treatment)]<-`Glatiramer Acetate`

recode_factor(char_vec, a = "Apple", b = "Banana")
rename_values_base(GraphdataF$Treatment, `Glateramere Acetate` = `Glatiramer Acetate`)

install.packages("mudata2")
library(mudata2)
