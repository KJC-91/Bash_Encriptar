echo " "
echo "1 - Encriptar"
echo "2 - DesEncriptar"
echo " "
read -p "Escoge una opción: " opc

case $opc in
	1) 

		read -p "Ingresa la contraseña: " pass
		if (($pass == "Kingers"))
		then

			echo " "
			echo "Verificar que archivo se requiere encriptar"
			echo " "
			echo " "
			ls -la
			echo " "
			read -p "Escribe el nombre completo del archivo que quieres encriptar: " Narchivo
			openssl enc -aes-256-cbc -in $Narchivo -out $Narchivo.enc
			echo " "
			echo "!! .. El archivo " $Narchivo " se ha Encriptado .. !!"
			echo " "
			else
			echo " "
			echo "Contraseña Incorecta .."
		fi
		echo " "
		ls -la | grep *.enc
		echo " "
		;;
	2)	
		read -p "Ingresa la contraseña: " pass
                if (($pass == "Kingers"))
                then

                        echo " "
                        echo "Verificar que archivo se requiere encriptar"
                        echo " "
                        echo " "
                        ls -la
                        echo " "
                        read -p "Escribe el nombre completo del archivo que quieres encriptar: " Narchivo
                        openssl enc -d -aes-256-cbc -in $Narchivo -out $Narchivo.sh
                        echo " "
                        echo "!! .. El archivo " $Narchivo " se ha Desencriptado .. !!"
                        echo " "
                        else
                        echo " "
                        echo "Contraseña Incorecta .."
                fi
                echo " "
                ls -la | grep *.enc
                echo " "
		;;
	*)
		echo " "
		echo "Bye"
		echo " "
		;;
esac
