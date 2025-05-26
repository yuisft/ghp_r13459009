# 使用パッケージ
library(dplyr)

# ファイル読み込み
data <- read.csv("C:/Users/81806/Documents/ghp_r13459009-5.26/ghp_r13459009_0526/dengue_assignment.csv")

# "year" 列が 2014 の行だけ抽出
data_2014 <- filter(data, year == 2014)

# "total_cases" 列の合計を計算
total_cases_2014 <- data_2014 %>% 
  summarise(total = sum(case_number, na.rm = TRUE)) %>% 
  pull(total)
# 結果を表示
print(paste("total cases in 2014: ", total_cases_2014))

