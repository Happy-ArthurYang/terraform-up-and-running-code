output dbefsid{
    value = aws_efs_file_system.efs["decodr-db.sqlite3-${var.env}"].id
}
output mediaefsid{
    value = aws_efs_file_system.efs["decodr-media-${var.env}"].id
}

output dbefsarn{
    value = aws_efs_file_system.efs["decodr-db.sqlite3-${var.env}"].arn
}
output mediaefsarn{
    value = aws_efs_file_system.efs["decodr-media-${var.env}"].arn
}