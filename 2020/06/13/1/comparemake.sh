echo "PID: $$ - $BASHPID"
echo $$ > /home/user/compile.pid
echo "Starting pre-run"
make -j4
echo "Done. Cleaning compiled files..."
make clean > /dev/null
echo "#############################"
echo "Beginning -j1"
echo "Beginning -j1" >> /home/user/compile.log
makeTEMPERATURE=`cat /sys/class/thermal/thermal_zone3/temp`
echo "Current Temperature: ${makeTEMPERATURE%%???}">> /home/user/compile.log
J1TIMEBEGINNING=`date "+%s"`
echo "make -j1 started at $J1TIMEBEGINNING" >> /home/user/compile.log
make -j1
J1TIMEEND=`date "+%s"`
echo "make -j1 ended at $J1TIMEEND" >> /home/user/compile.log
makeTEMPERATURE=`cat /sys/class/thermal/thermal_zone3/temp`
echo "Current Temperature: ${makeTEMPERATURE%%???}">> /home/user/compile.log
J1TIME=$J1TIMEEND-$J1TIMEBEGINNING
echo "Done. Cleaning compiled files..."
make clean > /dev/null
echo "make -j1 took $(( J1TIME )) seconds" >> /home/user/compile.log
echo ""
 
echo "Beginning -j2"
echo "Beginning -j2" >> /home/user/compile.log
makeTEMPERATURE=`cat /sys/class/thermal/thermal_zone3/temp`
echo "Current Temperature: ${makeTEMPERATURE%%???}">> /home/user/compile.log
J2TIMEBEGINNING=`date "+%s"`
echo "make -j2 started at $J2TIMEBEGINNING" >> /home/user/compile.log
make -j2
J2TIMEEND=`date "+%s"`
echo "make -j2 ended at $J2TIMEEND" >> /home/user/compile.log
makeTEMPERATURE=`cat /sys/class/thermal/thermal_zone3/temp`
echo "Current Temperature: ${makeTEMPERATURE%%???}">> /home/user/compile.log
J2TIME=$J2TIMEEND-$J2TIMEBEGINNING
echo "Done. Cleaning compiled files..."
make clean > /dev/null
echo "make -j2 took $(( J2TIME )) seconds" >> /home/user/compile.log
echo ""
 
echo "Beginning -j3"
echo "Beginning -j3" >> /home/user/compile.log
makeTEMPERATURE=`cat /sys/class/thermal/thermal_zone3/temp`
echo "Current Temperature: ${makeTEMPERATURE%%???}">> /home/user/compile.log
J3TIMEBEGINNING=`date "+%s"`
echo "make -j3 started at $J3TIMEBEGINNING" >> /home/user/compile.log
make -j3
J3TIMEEND=`date "+%s"`
echo "make -j3 ended at $J3TIMEEND" >> /home/user/compile.log
makeTEMPERATURE=`cat /sys/class/thermal/thermal_zone3/temp`
echo "Current Temperature: ${makeTEMPERATURE%%???}">> /home/user/compile.log
J3TIME=$J3TIMEEND-$J3TIMEBEGINNING
echo "Done. Cleaning compiled files..."
make clean > /dev/null
echo "make -j3 took $(( J3TIME )) seconds" >> /home/user/compile.log
echo ""
 
echo "Beginning -j4"
echo "Beginning -j4" >> /home/user/compile.log
makeTEMPERATURE=`cat /sys/class/thermal/thermal_zone3/temp`
echo "Current Temperature: ${makeTEMPERATURE%%???}">> /home/user/compile.log
J4TIMEBEGINNING=`date "+%s"`
echo "make -j4 started at $J4TIMEBEGINNING" >> /home/user/compile.log
make -j4
J4TIMEEND=`date "+%s"`
echo "make -j4 ended at $J4TIMEEND" >> /home/user/compile.log
makeTEMPERATURE=`cat /sys/class/thermal/thermal_zone3/temp`
echo "Current Temperature: ${makeTEMPERATURE%%???}">> /home/user/compile.log
J4TIME=$J4TIMEEND-$J4TIMEBEGINNING
echo "Done. Cleaning compiled files..."
make clean > /dev/null
echo "make -j4 took $(( J4TIME )) seconds" >> /home/user/compile.log
echo ""
 
echo "Beginning -j5"
echo "Beginning -j5" >> /home/user/compile.log
makeTEMPERATURE=`cat /sys/class/thermal/thermal_zone3/temp`
echo "Current Temperature: ${makeTEMPERATURE%%???}">> /home/user/compile.log
J5TIMEBEGINNING=`date "+%s"`
echo "make -j5 started at $J5TIMEBEGINNING" >> /home/user/compile.log
make -j5
J5TIMEEND=`date "+%s"`
echo "make -j5 ended at $J5TIMEEND" >> /home/user/compile.log
makeTEMPERATURE=`cat /sys/class/thermal/thermal_zone3/temp`
echo "Current Temperature: ${makeTEMPERATURE%%???}">> /home/user/compile.log
J5TIME=$J5TIMEEND-$J5TIMEBEGINNING
echo "Done. Cleaning compiled files..."
make clean > /dev/null
echo "make -j5 took $(( J5TIME )) seconds" >> /home/user/compile.log
echo ""
 
echo "Beginning -j6"
echo "Beginning -j6" >> /home/user/compile.log
makeTEMPERATURE=`cat /sys/class/thermal/thermal_zone3/temp`
echo "Current Temperature: ${makeTEMPERATURE%%???}">> /home/user/compile.log
J6TIMEBEGINNING=`date "+%s"`
echo "make -j6 started at $J6TIMEBEGINNING" >> /home/user/compile.log
make -j6
J6TIMEEND=`date "+%s"`
echo "make -j6 ended at $J6TIMEEND" >> /home/user/compile.log
makeTEMPERATURE=`cat /sys/class/thermal/thermal_zone3/temp`
echo "Current Temperature: ${makeTEMPERATURE%%???}">> /home/user/compile.log
J6TIME=$J6TIMEEND-$J6TIMEBEGINNING
echo "Done. Cleaning compiled files..."
make clean > /dev/null
echo "make -j6 took $(( J6TIME )) seconds" >> /home/user/compile.log
echo ""
 
echo "Beginning -j7"
echo "Beginning -j7" >> /home/user/compile.log
makeTEMPERATURE=`cat /sys/class/thermal/thermal_zone3/temp`
echo "Current Temperature: ${makeTEMPERATURE%%???}">> /home/user/compile.log
J7TIMEBEGINNING=`date "+%s"`
echo "make -j7 started at $J7TIMEBEGINNING" >> /home/user/compile.log
make -j7
J7TIMEEND=`date "+%s"`
echo "make -j7 ended at $J7TIMEEND" >> /home/user/compile.log
makeTEMPERATURE=`cat /sys/class/thermal/thermal_zone3/temp`
echo "Current Temperature: ${makeTEMPERATURE%%???}">> /home/user/compile.log
J7TIME=$J7TIMEEND-$J7TIMEBEGINNING
echo "Done. Cleaning compiled files..."
make clean > /dev/null
echo "make -j7 took $(( J7TIME )) seconds" >> /home/user/compile.log
echo ""
 
echo "Beginning -j8"
echo "Beginning -j8" >> /home/user/compile.log
makeTEMPERATURE=`cat /sys/class/thermal/thermal_zone3/temp`
echo "Current Temperature: ${makeTEMPERATURE%%???}">> /home/user/compile.log
J8TIMEBEGINNING=`date "+%s"`
echo "make -j8 started at $J8TIMEBEGINNING" >> /home/user/compile.log
make -j8
J8TIMEEND=`date "+%s"`
echo "make -j8 ended at $J8TIMEEND" >> /home/user/compile.log
makeTEMPERATURE=`cat /sys/class/thermal/thermal_zone3/temp`
echo "Current Temperature: ${makeTEMPERATURE%%???}">> /home/user/compile.log
J8TIME=$J8TIMEEND-$J8TIMEBEGINNING
echo "Done. Cleaning compiled files..."
make clean > /dev/null
echo "make -j8 took $(( J8TIME )) seconds" >> /home/user/compile.log
echo ""
 
echo "Beginning -j9"
echo "Beginning -j9" >> /home/user/compile.log
makeTEMPERATURE=`cat /sys/class/thermal/thermal_zone3/temp`
echo "Current Temperature: ${makeTEMPERATURE%%???}">> /home/user/compile.log
J9TIMEBEGINNING=`date "+%s"`
echo "make -j9 started at $J9TIMEBEGINNING" >> /home/user/compile.log
make -j9
J9TIMEEND=`date "+%s"`
echo "make -j9 ended at $J9TIMEEND" >> /home/user/compile.log
makeTEMPERATURE=`cat /sys/class/thermal/thermal_zone3/temp`
echo "Current Temperature: ${makeTEMPERATURE%%???}">> /home/user/compile.log
J9TIME=$J9TIMEEND-$J9TIMEBEGINNING
echo "Done. Cleaning compiled files..."
make clean > /dev/null
echo "make -j9 took $(( J9TIME )) seconds" >> /home/user/compile.log
echo ""
 
echo "make -j1 $(( J1TIME ))"
echo "make -j1 $(( J1TIME ))" >> /home/user/compile.log
echo "make -j2 $(( J2TIME ))"
echo "make -j2 $(( J2TIME ))" >> /home/user/compile.log
echo "make -j3 $(( J3TIME ))"
echo "make -j3 $(( J3TIME ))" >> /home/user/compile.log
echo "make -j4 $(( J4TIME ))"
echo "make -j4 $(( J4TIME ))" >> /home/user/compile.log
echo "make -j5 $(( J5TIME ))"
echo "make -j5 $(( J5TIME ))" >> /home/user/compile.log
echo "make -j6 $(( J6TIME ))"
echo "make -j6 $(( J6TIME ))" >> /home/user/compile.log
echo "make -j7 $(( J7TIME ))"
echo "make -j7 $(( J7TIME ))" >> /home/user/compile.log
echo "make -j8 $(( J8TIME ))"
echo "make -j8 $(( J8TIME ))" >> /home/user/compile.log
echo "make -j9 $(( J9TIME ))"
echo "make -j9 $(( J9TIME ))" >> /home/user/compile.log
