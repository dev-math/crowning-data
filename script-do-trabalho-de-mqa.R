# instalando pacotes caso necessario ===========================================

if(!require(dplyr)) install.packages("dplyr")

# carregando pacotes ===========================================================

library(dplyr)

# lendo dataframe ==============================================================

df <- read.csv('ds_salaries.csv')
View(df)

# contando os dados N/A ========================================================

comprimento_df <- length(df)
qtd_na <- NULL

for(i in 1 : comprimento_df) {
  
  aux_cont_na <- sum(is.na(df[i]))
  qtd_na <- c(qtd_na, aux_cont_na)
  
}

qtd_na <- as.data.frame(qtd_na, row.names = colnames(df))
View(qtd_na) # DATAFRAME NAO POSSUI NENHUM DADO FALTANTE



