LISTA=$1

ANT_IFS=$IFS
IFS=$'\n'

mkdir -p /tmp/Animales/{Agua,Tierra/{Mamiferos,Oviparos}}

> /tmp/animales.txt

for LINEA in `cat $LISTA | grep -v ^#`
do
    ANIMAL=$(echo $LINEA | awk '{print $1}')
    CODIGO=$(echo $LINEA | awk '{print $2}')

    case $CODIGO in
        TM)
            HABITAT="Tierra/Mamiferos"
            ;;
        TO)
            HABITAT="Tierra/Oviparos"
            ;;
        AG)
            HABITAT="Agua"
            ;;
    esac

    REGISTRO="animal:${ANIMAL}-habitat:${CODIGO}"

    echo "$REGISTRO" >> /tmp/animales.txt

    echo "$REGISTRO" > "/tmp/Animales/${HABITAT}/${ANIMAL}.txt"

done

IFS=$ANT_IFS

