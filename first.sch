v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -490 -180 -490 -130 {
lab=vout}
N -490 -290 -490 -240 {
lab=vcc}
N -490 -210 -460 -210 {
lab=vcc}
N -460 -250 -460 -210 {
lab=vcc}
N -490 -250 -460 -250 {
lab=vcc}
N -490 -70 -490 -40 {
lab=GND}
N -490 -100 -450 -100 {
lab=GND}
N -450 -100 -450 -50 {
lab=GND}
N -490 -50 -450 -50 {
lab=GND}
N -530 -210 -530 -100 {
lab=vin}
N -580 -160 -530 -160 {
lab=vin}
N -490 -160 -450 -160 {
lab=vout}
C {devices/vsource.sym} -280 -100 0 0 {name=vcc1
value="pulse(0 1.8 0ns 0ns 0ns 5ns 10ns)"}
C {devices/vsource.sym} -380 -90 0 0 {name=vcc value=1.8v}
C {sky130_fd_pr/nfet_01v8.sym} -510 -100 0 0 {name=M1
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -510 -210 0 0 {name=M2
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} -280 -130 0 0 {name=p1 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} -380 -120 0 0 {name=p2 sig_type=std_logic lab=vcc}
C {devices/lab_pin.sym} -490 -290 0 0 {name=p3 sig_type=std_logic lab=vcc}
C {devices/lab_pin.sym} -580 -160 0 0 {name=p4 sig_type=std_logic lab=vin}
C {devices/lab_pin.sym} -450 -160 2 0 {name=p5 sig_type=std_logic lab=vout
}
C {devices/gnd.sym} -380 -60 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -490 -40 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -280 -70 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} -200 -240 0 0 {name=s1 only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 0.1n 100n
.save all" }
