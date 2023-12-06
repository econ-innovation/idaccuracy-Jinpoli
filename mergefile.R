# 读取命令行参数
args <- commandArgs(trailingOnly = TRUE)
file_path <- args[1]

# 获取文件列表
file_list <- list.files(file_path, full.names = TRUE)

# 使用lapply函数逐个读取文件并合并数据
merged_data <- do.call(rbind, lapply(file_list, read.csv))

# 输出合并后的data.frame
write.csv(merged_data, "merged_data.csv", row.names = FALSE)
