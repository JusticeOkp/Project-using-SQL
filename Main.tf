#create RDS mySQL DB 
resource "aws_db_instance" "deafult"{
    engine = "mysql"
    engine_version = "8.0.27"
    instance_class = "db.t2.micro"
    name= "mydb"
    username = "tstdb01"
    password = "tstdb01234" 
    allocated_storage = 20
    storage_type = "gp2"
    identifier = "mysql-db-01"
    parameter_group_name = "default.mysql8.0"
    skip_final_snapshot = true
    publicly_accessible = true
}
