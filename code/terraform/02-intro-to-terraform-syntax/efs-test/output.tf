output dbefsarn{
    value = aws_efs_file_system.efs["db.sqlite3-${var.env}"].arn
}
output mediaefsarn{
    value = aws_efs_file_system.efs["media-${var.env}"].arn
}