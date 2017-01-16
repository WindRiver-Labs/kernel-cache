git checkout		standard/arm-versatile-926ejs
git merge --no-edit	standard/base		|| bash
git checkout		standard/beaglebone
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

git checkout		standard/nxp/base
git merge --no-edit	standard/base		|| bash
git checkout		standard/nxp/sdk-2-0/base
git merge --no-edit	standard/nxp/base		|| bash
git checkout		standard/nxp/sdk-2-0/nxp-ls10xx
git merge --no-edit	standard/nxp/sdk-2-0/base		|| bash
git checkout		standard/nxp/sdk-2-0/nxp-t4xxx
git merge --no-edit	standard/nxp/sdk-2-0/base		|| bash

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

git checkout		standard/preempt-rt/xilinx-zynqmp
git merge --no-edit	standard/preempt-rt/base		|| bash
