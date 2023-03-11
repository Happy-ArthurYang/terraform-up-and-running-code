output efsnames{
    value = tolist(keys(aws_efs_file_system.efs)[*])  
}
output efsearns{
    value = values(aws_efs_file_system.efs)[*].arn
}