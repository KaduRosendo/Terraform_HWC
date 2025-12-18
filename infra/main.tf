# 1. Criação da Rede (VPC e Subnet)
resource "huaweicloud_vpc" "vpc_test" {
    name = "vpc-projeto-teste"
    cidr = "192.168.0.0/16"
}

resource "huaweicloud_vpc_subnet" "subnet_test" {
    name = "subnet-projeto-teste"
    cidr = "192.168.10.0/24"
    gateway_ip = "192.168.10.1"
    vpc_id = huaweicloud_vpc.vpc_test.id
}

# 2. Segurança (Security Group permitindo SSH)
resource "huaweicloud_networking_secgroup" "secgroup_test" {
    name = "secgroup-ssh"
    description = "Permitir SSH"
}

resource "huaweicloud_networking_secgroup_rule" "rule_ssh" {
    direction = "ingress"
    ethertype = "IPv4"
    protocol  = "tcp"
    port_range_min = 22
    port_range_max = 22
    remote_ip_prefix = "0.0.0.0/0"
    security_group_id = huaweicloud_networking_secgroup.secgroup_test.id
}

# 3. O Bucket OBS (Onde o state será salvo depois)
resource "huaweicloud_obs_bucket" "state_bucket" {
    bucket = var.bucket_name
    acl = "private"
    versioning = true 
    force_destroy = true
}

# 4. O Servidor (ECS)
data "huaweicloud_images_images" "ubuntu" {
    name_regex = "Ubuntu 22.04 server 64bit"
}

data "huaweicloud_compute_flavors" "basic" {
    availability_zone = "la-south-2a"
    performance_type = "normal"
    cpu_core_count = 1
    memory_size = 2
}

resource "huaweicloud_compute_instance" "my_ecs" {
    name = "servidor-teste-01"
    image_id = data.huaweicloud_images_images.ubuntu.images[0].id
    flavor_id = data.huaweicloud_compute_flavors.basic.flavors[0].id
    security_group_ids = [huaweicloud_networking_secgroup.secgroup_test.id]
    availability_zone = "la-south-2a"
    admin_pass = "SenhaForte123!" 
    network {
        uuid = huaweicloud_vpc_subnet.subnet_test.id
    }
}