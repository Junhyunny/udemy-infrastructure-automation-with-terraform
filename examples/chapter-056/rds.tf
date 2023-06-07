resource "aws_db_subnet_group" "terraform-mariadb-subnet" {
  name        = "terraform-mariadb-subnet"
  description = "RDS subnet group"
  subnet_ids  = [aws_subnet.main-private-1.id, aws_subnet.main-private-2.id]
}

resource "aws_db_parameter_group" "mariadb-parameters" {
  name        = "mariadb-params"
  family      = "mariadb10.4"
  description = "MariaDB parameter group"

  parameter {
    name  = "max_allowed_packet"
    value = "16777216"
  }
}

resource "aws_db_instance" "mariadb" {
  allocated_storage    = 100
  engine               = "mariadb"
  engine_version       = "10.4"
  instance_class       = "db.t2.small"
  identifier           = "mariadb"
  db_name              = "terraformmydatabase"
  username             = "root"
  password             = var.RDS_PASSWORD
  db_subnet_group_name = aws_db_subnet_group.terraform-mariadb-subnet.name
  parameter_group_name = aws_db_parameter_group.mariadb-parameters.name

  vpc_security_group_ids  = [aws_security_group.allow-mariadb.id]
  storage_type            = "gp2"
  backup_retention_period = 30

  availability_zone         = aws_subnet.main-private-1.availability_zone
  final_snapshot_identifier = "mariadb-final-snapshot"

  tags = {
    Name = "mariadb-instance"
  }
}