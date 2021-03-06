# Is ```make -jx+1``` worth doing?
## My Investigation whether adding more jobs yields better results

UNFINISHED!!
There will be two additional tests.
- [x] Asus E200HA with Intel 4 core processor 
- [ ] On Asus Zenfone 6 Android phone with Snapdragon 850 using Termux
- [ ] On Desktop PC with AMD Ryzen5 1600x

--------------------------

About this post:
There has been a discussion on "Artix Linux" Telegram group, about whether ```make -jx+1``` should be used.
The general idea is that

				Suka Isnaini (@kenzanin) said:
				"-j9 on 8core == 8 working job + 1 queue loaded on ram 
				so when 1 working job done it load faster because it
				already in ram. cmiiw hehe"

That makes some sense. 

				An user called Gabriel David said:	
				"In my system using make -j4 vs make -j5 when compiling
				the Linux kernel reduced the time by 8 minutes. 
				Just thought I would let you know."
	
	His CPU is an AMD Ryzen 3 1200 with 4 cores, overclocked to 3,775GHz.

Reading about all this, I found a website

* "Timing the Linux -j(cpu+1) Myth" 	(http://timocharis.com/help/jn.html)

There, the author had a 2 core 2.8GHz Intel. 
The results weren't promising, as there was no real benefit of using -jx+1 (Feel free to read it).

# Here comes my "investigation".

## Laptop specs:
Asus E200HA
```neofetch --off```
* OS: Manjaro Linux x86_64 
* Host: E200HA 1.0 
* Kernel: 5.5.19-1-MANJARO 
* Uptime: 1 day, 8 hours, 27 mins 
* Packages: 1329 (pacman) 
* Shell: bash 5.0.17 
* Resolution: 1366x768 
* DE: Xfce 
* WM: Xfwm4 
* WM Theme: Matcha-sea 
* Theme: Matcha-sea [GTK2], Adwaita [GTK3] 
* Icons: Papirus-Maia [GTK2], Adwaita [GTK3] 
* Terminal: xfce4-terminal 
* Terminal Font: Monospace 12 
* CPU: Intel Atom x5-Z8350 (4) @ 1.920GHz 
* GPU: Intel Atom/Celeron/Pentium Processor x5-E8000/J3xxx/N3xxx 
* Memory: 775MiB / 3831MiB

## Additional Information
* Battery fully charged.
* Laptop connected to the power outlet.
* CPU governor is set to "powersave".
* Laptop "sat still", doing only computing and a watch command to supervise disk space.
* The make will compile Linux 5.7 kernel from 2020-05-31 downloaded on 2020-06-09 from https://kernel.org
* .config used is the default outcome of ```make defconfig```
* Pre-run has been performed, in order to ensure that ```make clean``` has the same outcome
and that make has the same start environment for all the tests.
* Script used to time ```make``` has been generated with Python and ran in bash.
```python makepy.py > comparemake.sh```
The source of both files, with compile.log are included in the repo.
--------------------------

The results:

## *Compiling Linux kernel 5.7 2020-05-31*
  Command | Seconds	| h:min:sec |	Difference
  --------|---------|-----------|-----------
make	-j1 |	6219 |	01:43:39 |	--------------
make	-j2 |	3131 |	00:52:11 |	49,65%
make	-j3 |	2455 |	00:40:55 |	21,59%
make	-j4 |	1944 |	00:32:24 |	20,81%
make	-j5 |	1945 |	00:32:25 |	-0,05%
make	-j6 |	1951 |	00:32:31 |	-0,31%
make	-j7 |	1955 |	00:32:35 |	-0,21%
make	-j8 |	1960 |	00:32:40 |	-0,26%
make	-j9 |	1962 |	00:32:42 |	-0,10%


*The difference has been calculated using this formula: Difference = ( jx – j(x+1) ) / jx


In my case, -jx+1 (where x is the number of cores) is slower. No pre-caching as mentioned by some.


The test has been done only once. One run per core.

Because of this, a user named Platon Ryzhikov (@phkrl) suggested that
				the results could vary due to "random impact"


	My personal opinion:	It either is faster or isn't. In this case, it isn't.
				If it was faster, it should be faster every time.

I get the same approximate difference between j1 and j2 no matter what I compile. 
So j4 and j5 should also yield solid results. But it's the second time j5 is slower.

---------------------------

Bonus:
I did -j4 vs -j5 test before, compiling SpaceFM. (source from GitHub)


##		Compiling SpaceFM	
Command|Seconds|Difference
-------|-------|----------
make	-j1	|	163	|	-------------
make	-j2	|	82	|	49,69%
make	-j3	|	66	|	19,51%
make	-j4	|	55	|	16,67%
make	-j5	|	56	|	-1,82%
make	-j6	|	56	|	0,00%


The compilation did not finish. It crashed mid-term, but it crashed consistently at
the same part of the process. 

*Thus confirming that compiling the same piece of code over and over again doesn't magically fix the error.*

*There...Talking about **killing two birds with one stone**.*

The additional (j5 and j6) "workers"/jobs/cores that we attached to the command ```make``` did absolutely nothing.
(it even was slower by 1 second. Exaclt the same amount as in the kernel compilation)

From this data, it looks like 
	-j2 is "on average" better than -j1 by 49,6%
	-j5 is (looks like it) slower than -j4 by 1 second. 



More testing will be added soon, that will be done on a differen pieces of hardware.
This machine is done for now.

--------------------------

This is my first post in blog repo. 
Done to see how much it sucks.

Thank you for reading and have a nice day.

The end.
