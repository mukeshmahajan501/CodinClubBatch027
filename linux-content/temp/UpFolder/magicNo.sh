#!/bin/bash -x

echo "enter a number "
read no


start=0;
end=100
mid=50

echo "case 1-no equal to mid"
echo "case 2-No is greter than mid"
echo "case 3-Number is less than mid"

echo "enter your choice"
read ch


case $ch in
				1)
					if [ $no -eq $mid]
					then
			        while [ $no -ge 9 ]
			        do
							sum=$no
							s=0
							while [ $sum -ne 0 ]
							do
								s=$(($s+($sum%10)))
								sum=$(($sum/10))
							done
								no=$s
							if [ $no -eq 1 ]
							then
								echo "number is magic"
								else
							echo "not magic"
							fi
					  done
				fi
			;;
			2)

						if [ $no -ge $mid ]
						then
							  while [ $no -ge 9 ]
         				  do
         					sum=$no
         					s=0
           						 while [ $sum -ne 0 ]
            					  do
            						s=$(($s+($sum%10)))
            						sum=$(($sum/10))
            					   done
           								 no=$s
           								 if [ $no -eq 1 ]
            								then
               							echo "number is magic"
            								else
           										 echo "not magic"
            							fi
				
         					done
						fi
         			;;
		
	3)
			      	if [ $no -le $mid ]
              		 then
             			 while [ $no -ge 9 ]
         				  do
         					sum=$no
         					s=0
            				while [ $sum -ne 0 ]
            				do
            					s=$(($s+($sum%10)))
            					sum=$(($sum/10))
            				done
            					no=$s
            				if [ $no -eq 1 ]
            					then
               				echo "number is magic"
            					else
            				echo "not magic"
            				fi

         				done
         			fi
        			 ;;
		4)
				echo "wrong input"
				;;

esac
