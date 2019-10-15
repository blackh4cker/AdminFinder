#!/bin/bash
echo "
    ____  ________       __   __  ____ __       __   __________ 
   / __ )/ / ____ \_____/ /__/ / / / // / _____/ /__/ ____/ __ \
  / __  / / / __ `/ ___/ //_/ /_/ / // /_/ ___/ //_/ __/ / /_/ /
 / /_/ / / / /_/ / /__/ ,< / __  /__  __/ /__/ ,< / /___/ _, _/ 
/_____/_/\ \__,_/\___/_/|_/_/ /_/  /_/  \___/_/|_/_____/_/ |_|  
          \____/                                                
                               ";
echo "";
echo "[✔] You will install AdminFinder tool in the system [Y/N] :" ;
read baba
if [ $baba == "y" ] ; 
  then
    echo " "
  else
    exit
fi

echo "[✔] Where Do you want to install the tool? [Ex:/usr/share/doc]:";
read refdir
echo "[✔] Checking directories..."
if [ -d "$refdir/AdminFinder" ] ;
then
echo "[◉] A directory AdminFinder was found! Do you want to replace it? [Y/n]:" ; 
read mama
if [ $mama == "y" ] ; 
then
 rm -R "$refdir/AdminFinder"
else
 exit
fi
fi

 echo "[✔] Installing ...";
 echo "";
 git clone https://github.com/blackh4cker/AdminFinder.git $refdir/AdminFinder;
 echo "#!/bin/bash 
 perl $refdir/AdminFinder/AdminFinder.pl" '${1+"$@"}' > AdminFinder;
 chmod +x AdminFinder;
 sudo cp AdminFinder /usr/bin/;
 rm AdminFinder;


if [ -d "$refdir/AdminFinder" ] ;
then
echo "";
echo "[✔]Tool istalled with success![✔]";
echo "";
  echo "[✔]====================================================================[✔]";
  echo "[✔] ✔✔✔  All is done!! You can execute AdminFinder by typing AdminFinder !   ✔✔✔ [✔]"; 
  echo "[✔]====================================================================[✔]";
  echo "";
else
  echo "[✘] Installation faid![✘] ";
  exit
fi
