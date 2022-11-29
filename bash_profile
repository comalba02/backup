# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

umask 0000
clear
echo ""
echo -e  "\0033[0;32m   **********       ********    **********  ***     **  ***    ***  ********** \033[0m"
echo -e  "\0033[0;32m   ************    **********   **********  ***    ***  ***    ***  ********** \033[0m"
echo -e  "\0033[0;32m   ***       ***  ***      ***  ***         ***   ***   ***    ***  ***    *** \033[0m"
echo -e  "\0033[0;32m   ***       ***  ***      ***  ***         ***  ***    ***    ***  ***    *** \033[0m"
echo -e  "\0033[0;32m   ***********    ************  ***         ******      ***    ***  ********** \033[0m"
echo -e  "\0033[0;32m   ***********    ************  ***         ***  ***    ***    ***  *********  \033[0m"
echo -e  "\0033[0;32m   ***       ***  ***      ***  ***         ***   ***   ***    ***  *** \033[0m"
echo -e  "\0033[0;32m   ************   ***      ***  **********  ***    ***  **********  *** \033[0m"
echo -e  "\0033[0;32m   ***********    ***      ***  **********  ***     **  **********  *** \033[0m"
echo ""
echo -e  "\0033[0;33m    ----------------------- MENU PRINCIPAL DEL SISTEMA --------------------- \033[0m"
echo -e  "\0033[0;33m    |                                                                      | \033[0m"
echo -e  "\0033[0;33m    |\033[0m                        1. CREAR BACKUP DE DATOS                      \0033[0;33m| "
echo -e  "\0033[0;33m    |\033[0m                        2. CREAR BACKUP VM                            \0033[0;33m| "
echo -e  "\0033[0;33m    |\033[0m                        3. CREAR APPS                                 \0033[0;33m| "
echo -e  "\0033[0;33m    |\033[0m                        4. TERMINAL DE COMANDOS                       \0033[0;33m| "
echo -e  "\0033[0;33m    |\033[0m                        5. SALIR                                      \0033[0;33m| "
echo -e  "\0033[0;33m    |                                                                      | \033[0;33m"
echo -e  "\0033[0;33m    |\033[0m                          A. APAGAR SERVIDOR                          \0033[0;33m| "
echo -e  "\0033[0;33m    |                                                                      | \033[0m"
echo -e  "\0033[0;33m    ------------------------------------------------------------------------ \033[0m"
echo ""
echo -en  "\0033[0;36m                              ELIJA UNA OPCION: \033[0m" ; read opt
case $opt in

1) clear
   echo "Iniciando Secuencia - Copia Dominio"
   sleep 5
   sudo cp -rufv /mnt/dominio2021/ /mnt/bkdominio2021
   clear
   sh /home/backup/.bash_profile
   ;;

2) clear
   echo "Iniciando Secuencia - Crear Copia VM"
   sleep 5
   today=`date +%Y-%m-%d-%H%M`
   sudo cp -rfv /mnt/maquinasvirtuales /mnt/bkmaquinasvirtuales/virtuales-$today/
   clear
   sh /home/backup/.bash_profile
   ;;

3) clear
   echo "Iniciando Secuencia -  Crear Copia Apps"
   sleep 5
   today=`date +%Y-%m-%d-%H%M`
   sudo cp -rfv /mnt/apps /mnt/bkmaquinasvirtuales/apps-$today/
   clear  
   sh /home/backup/.bash_profile
   ;;

4) clear
   echo "Iniciando Secuencia - Terminal de Comandos" 
   ;;

5) exit
   exit
   ;;

A) clear
   echo "Iniciando secuencia -  Apagar Servidor"
   sleep 10
   shutdown now
   ;;
	
*) exit
   ;;

esac
