resource "aws_db_instance" "database" {
  allocated_storage    = 30
  storage_type         = "gp3"
  engine               = "mysql"
  engine_version       = "8.0.28"
  instance_class       = "db.t3.micro"
  name                 = "harw_dbcluster"
  username             = "admin"
  password             = "K>DBLIp8e34hjn"
  db_subnet_group_name = aws_db_subnet_group.databasegroup.name
  parameter_group_name = "mysqlpara"
  /* availability_zone = data.aws_availability_zones.available.zone_ids[0] */
  vpc_security_group_ids = [aws_security_group.dbsg.id]
  skip_final_snapshot    = true
  identifier             = "harw-dbcluster"
  multi_az               = var.multi_az_db

  tags = merge({
    Name = "db-${terraform.workspace}"
  }, var.default_tags)
}


output "dburl" {
  value = aws_db_instance.database.address
}