# homework 1
# 1
getwd()
#设置路径
mypath = "/Users/popo/bigdata/myRworkingdir"
filepath = "/Users/popo/Library/CloudStorage/Dropbox/bigdata_econ_2023/data/assignment_idaccuracy/Aminer"

#检查路径
file.exists(mypath)
setwd(mypath)
dir()

# 将文件夹中的文件名生成为一个变量
file_list <- list.files(filepath, full.names = TRUE)
# 设定空data.frame
merged_data <- data.frame()

# for循环读取文件并合并
for (file in file_list) {
  data <- read.csv(file)  
  merged_data <- rbind(merged_data, data) 
}

#将合并数据集输出
write.csv(merged_data, "merged_data.csv", row.names = FALSE)

# 2
# apply函数替换for循环
merged_data <- data.frame()
merged_data <- do.call(rbind, lapply(file_list, read.csv))
#输出数据集
write.csv(merged_data, "merged_data.csv", row.names = FALSE)

# 3
# 在命令行输入 Rscript mergefile.R 文件所在文件夹路径/assignment_idaccuracy/Aminer 即可运行脚本。
