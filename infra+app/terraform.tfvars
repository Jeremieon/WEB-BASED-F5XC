region = "us-east-1"
ami = "ami-04b70fa74e45c3917"
instance_type = "t2.micro"
user_data = <<-EOT
                #!/bin/bash
                sudo apt-get update -y
                sudo apt-get install -y docker.io
                sudo systemctl start docker
                sudo docker pull jeremy9k/tanto
                sudo docker run -d -p 80:8000 jeremy9k/tanto
                EOT
instance_name = "jeremiah-containers"
