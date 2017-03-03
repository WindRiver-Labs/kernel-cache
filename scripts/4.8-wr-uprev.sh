
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

git checkout		standard/intel-x86-32
git merge --no-edit	standard/base		|| bash

git checkout		standard/intel-x86-64
git merge --no-edit	standard/base		|| bash

git checkout		standard/mti-malta32
git merge --no-edit	standard/base		|| bash

git checkout		standard/mti-malta64
git merge --no-edit	standard/base		|| bash

git checkout		standard/qemuarm64
git merge --no-edit	standard/base		|| bash

git checkout		standard/qemuppc
git merge --no-edit	standard/base		|| bash

git checkout		standard/xilinx-zynqmp
git merge --no-edit	standard/base		|| bash

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

git checkout		standard/cgl/cav-octeontx
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

# -rt

git checkout		standard/preempt-rt/bcm-587xx
git merge --no-edit	standard/preempt-rt/base		|| bash

git checkout		standard/preempt-rt/cav-octeontx
git merge --no-edit	standard/preempt-rt/base		|| bash

git checkout		standard/preempt-rt/intel
git merge --no-edit	standard/preempt-rt/base		|| bash
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

git checkout		standard/preempt-rt/xilinx-zynqmp
git merge --no-edit	standard/preempt-rt/base		|| bash
