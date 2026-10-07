v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 -100 160 -100 {lab=#net1}
N -70 -120 160 -120 {lab=#net2}
N 140 -140 160 -140 {lab=0}
N 340 -240 370 -240 {lab=vbg}
N 150 -260 160 -260 {lab=vdd}
N 150 -220 160 -220 {lab=0}
N 150 -240 160 -240 {lab=dvdd}
N 0 30 0 50 {lab=0}
N -70 30 -70 50 {lab=0}
N 70 40 70 50 {lab=0}
N 140 40 140 50 {lab=0}
N 140 -200 160 -200 {lab=dvdd}
N -70 -120 -70 -20 {lab=#net2}
N 0 -100 0 -20 {lab=#net1}
N 70 -30 70 -20 {lab=vdd}
N 140 -30 140 -20 {lab=vdd}
N -60 -160 160 -160 {lab=trim[15:0] bus=true}
N -30 -230 -30 -170 {lab=trim[15:8]}
N 40 -230 40 -170 {lab=trim[7:0]}
N 40 -300 40 -290 {lab=0}
C {title.sym} -140 140 0 0 {name=l1 author="Christian Münker"}
C {sg13cmos5l_ocd_ip__bandgap_v3.sym} 180 -160 0 0 {name=x1}
C {vsource.sym} 140 10 0 0 {name=VDVDD value=1.2 savecurrent=false}
C {isource.sym} 0 10 0 0 {name=I0 value=1u}
C {gnd.sym} 0 50 0 0 {name=l2 lab=0}
C {vsource.sym} 70 10 0 0 {name=VVDD value=3.3 savecurrent=false}
C {isource.sym} -70 10 0 0 {name=I1 value=250n}
C {gnd.sym} -70 50 0 0 {name=l3 lab=0}
C {gnd.sym} 150 -140 1 0 {name=l4 lab=0}
C {opin.sym} 370 -240 0 0 {name=p1 lab=vbg}
C {iopin.sym} 150 -260 0 1 {name=p3 lab=vdd}
C {iopin.sym} 150 -240 0 1 {name=p4 lab=dvdd}
C {gnd.sym} 150 -220 1 0 {name=l5 lab=0}
C {bus_tap.sym} -40 -160 0 0 {name=l6 lab=[15:8]}
C {lab_pin.sym} -60 -160 0 0 {name=p2 sig_type=std_logic lab=trim[15:0]}
C {bus_tap.sym} 30 -160 0 0 {name=l7 lab=[7:0]}
C {gnd.sym} 70 50 0 0 {name=l9 lab=0}
C {gnd.sym} 140 50 0 0 {name=l10 lab=0}
C {vdd.sym} -30 -290 0 0 {name=l11 lab=dvdd}
C {vdd.sym} 140 -200 3 0 {name=l12 lab=dvdd}
C {iopin.sym} 70 -30 3 0 {name=p5 lab=vdd}
C {iopin.sym} 140 -30 3 0 {name=p6 lab=vdd}
C {simulator_commands_shown.sym} -450 -210 0 0 {
name=Libs_Ngspice
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerRES.lib res_typ
.lib cornerDIO.lib dio_tt
"
      }
C {simulator_commands_shown.sym} -450 -500 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.option
+ reltol=1e-5
+ abstol=1e-14
+ savecurrents
+ temp=80
.control
save all
op
remzerovec
write file_op.raw
set appendwrite
.endc
"}
C {res.sym} -30 -260 0 1 {name=R1
value=1
footprint=1206
device=resistor
m=1}
C {res.sym} 40 -260 0 0 {name=R2
value=1
footprint=1206
device=resistor
m=1}
C {gnd.sym} 40 -300 2 0 {name=l8 lab=0}
