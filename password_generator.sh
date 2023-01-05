#!/bin/bash
  
echo "Bash script ile sifre olusturma kodu" 
  
echo "Olusturmak istediginiz sifrenin uzunlugunu giriniz"  
  
read  PASS_LENGTH 

echo "Bes adet sifre olusturuldu..."
                        
for p in $(seq 1 5);                                   
do 
    openssl rand -base64 48 | cut -c1-$PASS_LENGTH 
done
