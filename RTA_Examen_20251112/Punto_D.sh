sudo apt update
sudo apt install wget gpg
UBUNTU_CODENAME=jammy
wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | sudo gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/ansible.list
sudo apt update && sudo apt install ansible
ansible --version
cd UTN-FRA_SO_Examenes/202411
ñs
ls
cd ansible
ls
cd roles
ls
cd 2PRecuperatorio
ls
cd ...
cd ..
ls
cd roles
ansible-galaxy role init 2PRecuperatorio
ansible-galaxy role init Crea_Carpetas_Padilla
ls
ansible-galaxy role init Cambia_Propiedad_Padilla
ansible-galaxy role init Sudoers_Padilla
ls
cd 2PRecuperatorio
ls
cd tasks
ls
cat << EOF > main.yml
- name: Crear grupo de profesores  group:    name: GProfesores
- name: Crear grupo de alumnos  group:    name: GAlumnos
- name: Crear usuario profesor  user:    name: profesor    groups: GProfesores    append: yes
- name: Crear usuario alumno  user:    name: alumno    groups: GAlumnos    append: yes
EOF

cd ..
ls
cd ..
ls
cd Crea_Carpetas_Padilla
cat << EOF > main.yml
name: Crear carpeta UTN
file:
  path: /UTN
  state: directory
  mode: '0755'

EOF

vim main.yml
cat << EOF > main.yml
- name: Crear carpeta UTN
  file:
   path: /UTN
   state: directory
   mode: '0755'

- name: Crear carpeta UTN
>   file:
>     path: /UTN
>     state: directory
>     mode: '0755'


EOF

vim main.yml
cat << EOF > main.yml
- name: Crear carpeta UTN
  file:
    path: /UTN
    state: directory
    mode: '0755'

-name Crear carpeta de Alumno
  file:
    path: /UTN/Alumno
    state: directory
    mode: '0755'

- name: Crear carpeta de Profesor
  file:
    path: /UTN/Profesor
    state: directory
    mode: '0755'
EOF

vim main.yml
cd .
cd ..
ls
cd Cambia_Propiedad_Padilla
ls
cd tasks
ls
cat << EOF > main.yml
- name: Cambiar propietario del Alumno
  file:
    path: /UTN/Alumno
    owner: alumno
    group: GAlumnos

- name: Cambiar propietario de Profesor
  file:
    path: /UTN/Profesor
    owner: profesor
    group: GProfesores

EOF

cd ..
ls
cd Sudoers_Padilla
cd tasks
cat << EOF > main.yml

- name: Permitir sudo sin clave a GProfesores
  copy:
    dest: /etc/sudoers.d/GProfesores
    content: "GProfesores ALL=(ALL) NOPASSWD:ALL"
    mode: '0440'
EOF

cd ..
cd playbook.yml
ls
cat << EOF > playbook.yml

- hosts: localhost
  become: yes
  roles:
    - 2PRecuperatorio
    - Crea_Carpetas_Padilla
    - Cambia_Propiedad_Padilla
    - Sudoers_Padilla

EOF

ansible-playbook -i inventory playbook.yml
cd roles
cd 2PRecuperatorio
cd tasks
vim main.yml
cd ..
ansible-playbook -i inventory playbook.yml
cd roles
ls
cd Crea_Carpetas_Padilla
cd tasks
vim main.yml
cat main.yml
cat << EOF > main.yml
- name: Crear carpeta UTN
  file:
    path: /UTN
    state: directory

- name: Crear carpeta Profesor
  file:
    path: /UTN/Profesor
    state: directory

- name: Crear carpeta Alumno
  file:
    path: /UTN/Alumno
    state: directory

EOF

cd ..
ansible-playbook -i inventory playbook.yml


