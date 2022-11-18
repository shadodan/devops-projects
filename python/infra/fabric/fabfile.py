from fabricenv.fabric.api import *

def system_info():
    print("Disk space")
    local("df -h")

    print("RAM Size")
    local("free -m")

    print("System uptime")
    local("uptime")


def remote_exec():
    print("Get system info")

    run("hostname")
    run("uptime")
    run("uptime")
    run("df -h")
    run("free -m")

    sudo("yum install mariadb-server -y")
    sudo("systemctl start mariadb-server")
    sudo("systemctl enable mariadb-server")


def web_setup(WEB_URL, DIRNAME):
    sudo("apt install zip unzip -y")

    sudo("yum install httpd wget unzip -y")

    sudo("systemctl start httpd")
    sudo("systemctl enable httpd")

    local(f"wget -O website.zip {WEB_URL}")
    local("unzip -o website.zip")

    with lcd(DIRNAME):
        local("zip -r tooplate.zip *")
        put("tooplate.zip", "/var/www/html/", use_sudo=True)
    
    with cd("/var/www/html/"):
        sudo("unzip tooplate.zip")

    sudo("systemctl restart httpd")

    print("Website is set up and running")
