#!/bin/bash
source save.sh
source cpu.sh
source pid.sh
source help.sh
source processus.sh


opt=$1
opt1=$2

if [ $# = 2 ]; then

    case $opt in
        
        "-s")
        pid 

	;;
       

        *) echo "invalide -h ou --help pour aider !!";;
    esac

elif [ $# = 1 ]; then

	case $opt in

	"-lp")
           processus
            ;;

	"-lcpu")
            cpu
	    ;;

	"-s")
	    save
            ;;
	"--save")
	    save
            ;;
	"-h")
	    help 
            ;;
        "--help")
	    help 
            ;;
        *) echo "invalide -h ou --help pour aider !!";;
	esac
else

	    ./yad.sh
fi



