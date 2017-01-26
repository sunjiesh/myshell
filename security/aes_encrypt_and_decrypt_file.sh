function encryption() 
{ 
	/usr/bin/openssl aes-128-cbc -salt -in $1 -out $1.aes && mv $1.aes $1
}
function decryption() 
{ 
	/usr/bin/openssl aes-128-cbc -d -salt -in $1 -out $1.plain && mv $1.plain $1
}

