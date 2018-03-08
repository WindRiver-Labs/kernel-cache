# check for new BSPs
# git checkout master ;  for i in `git branch |grep -v master |grep -v rebase `; do grep -q $i ~/git/kernel-cache/scripts/4.8-wr-uprev.sh ; if [ $? != 0 ]; then echo git checkout $i ; fi ; done
# paste output into appropriate places here.
#
# always merge from closest parent;  i.e. standard/base --> rt/base -->rt/bsp
# and not standard/base --> rt/bsp
#
# if the merges have been done properly then you should be able to run
# this script and see nothing but a bunch of "already up to date" messages.

git checkout		standard/arm-versatile-926ejs
git merge --no-edit	standard/base		|| bash

git checkout 		standard/axxiaarm
git merge --no-edit	standard/base		|| bash

git checkout		standard/bcm-2xxx-rpi
git merge --no-edit	standard/base		|| bash

git checkout		standard/bcm-587xx
git merge --no-edit	standard/base		|| bash

git checkout		standard/beaglebone
git merge --no-edit	standard/base		|| bash

git checkout		standard/cav-octeontx
git merge --no-edit	standard/base		|| bash

git checkout		standard/edgerouter
git merge --no-edit	standard/base		|| bash

git checkout		standard/fsl-mpc8315e-rdb
git merge --no-edit	standard/base		|| bash

git checkout		standard/intel
git merge --no-edit	standard/base		|| bash

git checkout		standard/intel-socfpga
git merge --no-edit	standard/base		|| bash

git checkout		standard/intel-x86-32
git merge --no-edit	standard/base		|| bash

git checkout		standard/intel-x86-64
git merge --no-edit	standard/base		|| bash

git checkout		standard/mti-malta32
git merge --no-edit	standard/base		|| bash

git checkout		standard/mti-malta64
git merge --no-edit	standard/base		|| bash

git checkout		standard/ti-66ak2xxx
git merge --no-edit	standard/base		|| bash

git checkout		standard/qemuarm64
git merge --no-edit	standard/base		|| bash

git checkout		standard/qemuppc
git merge --no-edit	standard/base		|| bash

git checkout 		standard/xilinx-zynq
git merge --no-edit	standard/base		|| bash

git checkout		standard/xilinx-zynqmp
git merge --no-edit	standard/base		|| bash

git checkout		standard/xilinx/base
git merge --no-edit	standard/base		|| bash
git checkout		standard/xilinx/sdk-2017-01/base
git merge --no-edit	standard/xilinx/base	|| bash
git checkout		standard/xilinx/sdk-2017-01/xilinx-zynq
git merge --no-edit	standard/xilinx/base	|| bash

git checkout		standard/xilinx/sdk-2017-01/xilinx-zynqmp
git merge --no-edit	standard/xilinx/base	|| bash

git checkout		standard/xilinx/sdk-2017-01/sdk-2017-03/base
git merge --no-edit	standard/xilinx/base	|| bash

git checkout		standard/xilinx/sdk-2017-01/sdk-2017-03/xilinx-zynqmp
git merge --no-edit	standard/xilinx/sdk-2017-01/sdk-2017-03/base

git checkout		standard/nxp/base
git merge --no-edit	standard/base		|| bash
git checkout		standard/nxp/sdk-2-0/base
git merge --no-edit	standard/nxp/base		|| bash
git checkout		standard/nxp/sdk-2-0/nxp-ls10xx
git merge --no-edit	standard/nxp/sdk-2-0/base		|| bash
git checkout		standard/nxp/sdk-2-0/nxp-t4xxx
git merge --no-edit	standard/nxp/sdk-2-0/base		|| bash

git checkout		standard/nxp-imx/base
git merge --no-edit	standard/base		|| bash
git checkout		standard/nxp-imx/sdk-4.1.15/base
git merge --no-edit	standard/nxp-imx/base	|| bash
git checkout		standard/nxp-imx/sdk-4.1.15/nxp-imx6
git merge --no-edit	standard/nxp-imx/sdk-4.1.15/base

git checkout		standard/nxp/sdk-2-0/sdk-2-0-1703/base
git merge --no-edit	standard/base		|| bash
git checkout		standard/nxp/sdk-2-0/sdk-2-0-1703/nxp-ls1012
git merge --no-edit	standard/nxp/sdk-2-0/sdk-2-0-1703/base	|| bash
git checkout		standard/nxp/sdk-2-0/sdk-2-0-1703/nxp-ls1046
git merge --no-edit	standard/nxp/sdk-2-0/sdk-2-0-1703/base	|| bash

git checkout		standard/ti-am335x
git merge --no-edit	standard/base		|| bash

# tiny

git checkout		standard/tiny/base
git merge --no-edit	standard/base		|| bash
git checkout		standard/tiny/common-pc
git merge --no-edit	standard/tiny/base		|| bash
git checkout		standard/tiny/intel
git merge --no-edit	standard/tiny/base		|| bash
git checkout		standard/tiny/intel-x86-32
git merge --no-edit	standard/tiny/base		|| bash
git checkout		standard/tiny/intel-x86-64
git merge --no-edit	standard/tiny/base		|| bash

# CGL

git checkout		standard/cgl/base
git merge --no-edit	standard/base		|| bash

git checkout		standard/cgl/axxiaarm
git merge --no-edit	standard/cgl/base	|| bash

git checkout		standard/cgl/cav-octeontx
git merge --no-edit	standard/cgl/base	|| bash

git checkout		standard/cgl/intel-socfpga
git merge --no-edit	standard/cgl/base	|| bash
git checkout		standard/cgl/intel-x86-32
git merge --no-edit	standard/cgl/base	|| bash
git checkout		standard/cgl/intel-x86-64
git merge --no-edit	standard/cgl/base	|| bash

git checkout		standard/cgl/nxp/base
git merge --no-edit	standard/cgl/base	|| bash

git checkout		standard/cgl/nxp/sdk-2-0/base
git merge --no-edit	standard/cgl/base	|| bash
git checkout		standard/cgl/nxp/sdk-2-0/nxp-t4xxx
git merge --no-edit	standard/cgl/nxp/base	|| bash

git checkout		standard/cgl/nxp/sdk-2-0/sdk-2-0-1703/base
git merge --no-edit	standard/cgl/base	|| bash
git checkout		standard/cgl/nxp/sdk-2-0/sdk-2-0-1703/nxp-ls1012
git merge --no-edit	standard/cgl/nxp/sdk-2-0/sdk-2-0-1703/base
git checkout		standard/cgl/nxp/sdk-2-0/sdk-2-0-1703/nxp-ls1046
git merge --no-edit	standard/cgl/nxp/sdk-2-0/sdk-2-0-1703/base

git checkout		standard/cgl/xilinx-zynq
git merge --no-edit	standard/cgl/base	|| bash

git checkout		standard/cgl/xilinx/sdk-2017-01/sdk-2017-03/base
git merge --no-edit	standard/cgl/base	|| bash
git checkout		standard/cgl/xilinx/sdk-2017-01/sdk-2017-03/xilinx-zynqmp
git merge --no-edit	standard/cgl/xilinx/sdk-2017-01/sdk-2017-03/base

git checkout		standard/cgl/xilinx/base
git merge --no-edit	standard/cgl/base	|| bash
git checkout		standard/cgl/xilinx/sdk-2017-01/base
git merge --no-edit	standard/cgl/xilinx/base || bash
git checkout		standard/cgl/xilinx/sdk-2017-01/xilinx-zynq
git merge --no-edit	standard/cgl/xilinx/sdk-2017-01/base

# -rt

git checkout		standard/preempt-rt/base
git merge --no-edit	standard/base		|| bash

git checkout		standard/preempt-rt/axxiaarm
git merge --no-edit	standard/preempt-rt/base		|| bash

git checkout		standard/preempt-rt/bcm-2xxx-rpi
git merge --no-edit	standard/preempt-rt/base		|| bash

git checkout		standard/preempt-rt/bcm-587xx
git merge --no-edit	standard/preempt-rt/base		|| bash

git checkout		standard/preempt-rt/cav-octeontx
git merge --no-edit	standard/preempt-rt/base		|| bash

git checkout		standard/preempt-rt/intel
git merge --no-edit	standard/preempt-rt/base		|| bash
git checkout		standard/preempt-rt/intel-socfpga
git merge --no-edit	standard/preempt-rt/intel		|| bash
git checkout		standard/preempt-rt/intel-x86-32
git merge --no-edit	standard/preempt-rt/intel		|| bash
git checkout		standard/preempt-rt/intel-x86-64
git merge --no-edit	standard/preempt-rt/intel		|| bash

git checkout		standard/preempt-rt/nxp/base
git merge --no-edit	standard/preempt-rt/base		|| bash
git checkout		standard/preempt-rt/nxp/sdk-2-0/base
git merge --no-edit	standard/preempt-rt/nxp/base		|| bash
git checkout		standard/preempt-rt/nxp/sdk-2-0/nxp-ls10xx
git merge --no-edit	standard/preempt-rt/nxp/sdk-2-0/base		|| bash
git checkout		standard/preempt-rt/nxp/sdk-2-0/nxp-t4xxx
git merge --no-edit	standard/preempt-rt/nxp/sdk-2-0/base		|| bash

git checkout		standard/preempt-rt/nxp-imx/base
git merge --no-edit	standard/preempt-rt/base		|| bash
git checkout		standard/preempt-rt/nxp-imx/sdk-4.1.15/base
git merge --no-edit	standard/preempt-rt/nxp-imx/base	|| bash
git checkout		standard/preempt-rt/nxp-imx/sdk-4.1.15/nxp-imx6
git merge --no-edit	standard/preempt-rt/nxp-imx/base	|| bash

git checkout		standard/preempt-rt/nxp/sdk-2-0/sdk-2-0-1703/base
git merge --no-edit	standard/preempt-rt/base		|| bash
git checkout		standard/preempt-rt/nxp/sdk-2-0/sdk-2-0-1703/nxp-ls1012
git merge --no-edit	standard/preempt-rt/nxp/sdk-2-0/sdk-2-0-1703/base	|| bash
git checkout		standard/preempt-rt/nxp/sdk-2-0/sdk-2-0-1703/nxp-ls1046
git merge --no-edit	standard/preempt-rt/nxp/sdk-2-0/sdk-2-0-1703/base	|| bash

git checkout		standard/preempt-rt/ti-66ak2xxx
git merge --no-edit	standard/preempt-rt/base		|| bash
git checkout		standard/preempt-rt/ti-am335x
git merge --no-edit	standard/preempt-rt/base		|| bash

git checkout		standard/preempt-rt/xilinx-zynq
git merge --no-edit	standard/preempt-rt/base		|| bash

git checkout		standard/preempt-rt/xilinx-zynqmp
git merge --no-edit	standard/preempt-rt/base		|| bash

git checkout		standard/preempt-rt/xilinx/base
git merge --no-edit	standard/preempt-rt/base		|| bash
git checkout		standard/preempt-rt/xilinx/sdk-2017-01/base
git merge --no-edit	standard/preempt-rt/xilinx/base		|| bash
git checkout		standard/preempt-rt/xilinx/sdk-2017-01/xilinx-zynq
git merge --no-edit	standard/preempt-rt/xilinx/sdk-2017-01/base	|| bash

git checkout		standard/preempt-rt/xilinx/sdk-2017-01/xilinx-zynqmp
git merge --no-edit	standard/preempt-rt/base		|| bash

git checkout		standard/preempt-rt/xilinx/sdk-2017-01/sdk-2017-03/base
git merge --no-edit	standard/preempt-rt/base		|| bash

git checkout		standard/preempt-rt/xilinx/sdk-2017-01/sdk-2017-03/xilinx-zynqmp
git merge --no-edit	standard/preempt-rt/xilinx/sdk-2017-01/sdk-2017-03/base

git checkout		standard/ovp/base
git merge --no-edit	standard/preempt-rt/base		|| bash

# OVP

git checkout		standard/ovp/intel-x86-32
git merge --no-edit	standard/ovp/base			|| bash
git checkout		standard/ovp/intel-x86-64
git merge --no-edit	standard/ovp/base			|| bash
git checkout		standard/ovp/qemux86
git merge --no-edit	standard/ovp/base			|| bash
git checkout		standard/ovp/qemux86-64
git merge --no-edit	standard/ovp/base			|| bash
git checkout		standard/ovp/x86-64-kvm-guest
git merge --no-edit	standard/ovp/base			|| bash
git checkout		standard/ovp/x86-kvm-guest
git merge --no-edit	standard/ovp/base			|| bash
