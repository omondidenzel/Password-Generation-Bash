#!bin/bash 

read -p "Enter the length of password you wish to have: " password_length

password_generator() {
    # Allowing only 20 char
    echo "Password generated are below choose one below ↓ \n "
    if [[ $password_length -ge 20 ]]; then  
        echo $password_length is greater than 20 choose a number lesser or equal, try again.
        exit 1
    else
    # Giving users 3 options to choose from
        for x in $(seq 1 3)
        do
            echo $x. $(openssl rand -base64 48 | cut -c1-$1)
        done
    fi

}

password_generator $password_length