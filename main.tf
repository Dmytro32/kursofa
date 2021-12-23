resource "aws_db_instance" "default" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  name                 = "mydb"
  username             = "db"
  password             = "db"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true


  command = "psql -h localhost  -p 3306-U \"username\" -d name -f \"my-mysql/sql-script""

}
