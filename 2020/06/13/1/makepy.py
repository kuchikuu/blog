#!/bin/python3

jToTest = 9
homePath = "/home/user"

def getTemp():
	print(f'makeTEMPERATURE=`cat /sys/class/thermal/thermal_zone3/temp`')
	print('echo "Current Temperature: ${makeTEMPERATURE%%???}">>'+ f' {homePath}/compile.log')



print(f'echo "PID: $$ - $BASHPID"')
print(f'echo $$ > /home/user/compile.pid')


print(f'echo "Starting pre-run"')
print(f'make -j4')
print(f'echo "Done. Cleaning compiled files..."')
print(f'make clean > /dev/null')
print(f'echo "#############################"')


for i in range(1,jToTest+1):
	print(f'echo "Beginning -j{i}"')
	print(f'echo "Beginning -j{i}" >> {homePath}/compile.log')
	getTemp()
	print(f'J{i}TIMEBEGINNING=`date "+%s"`')
	print(f'echo "make -j{i} started at $J{i}TIMEBEGINNING" >> {homePath}/compile.log')
	#print(f'sleep {i*2}')
	print(f'make -j{i}')
	print(f'J{i}TIMEEND=`date "+%s"`')
	print(f'echo "make -j{i} ended at $J{i}TIMEEND" >> {homePath}/compile.log')
	getTemp()
	print(f'J{i}TIME=$J{i}TIMEEND-$J{i}TIMEBEGINNING')
	print(f'echo "Done. Cleaning compiled files..."')
	print(f'make clean > /dev/null')
	print(f'echo "make -j{i} took $(( J{i}TIME )) seconds" >> {homePath}/compile.log')
	print(f'echo ""')
	print(" ")

for i in range(1,jToTest+1):
	print(f'echo "make -j{i} $(( J{i}TIME ))"')
	print(f'echo "make -j{i} $(( J{i}TIME ))" >> {homePath}/compile.log')

