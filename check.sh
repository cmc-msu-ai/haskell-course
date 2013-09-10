#!/bin/sh

root=`dirname $0`
cd $root

for spec in **/Spec.hs
do
  spec_dir=`dirname $spec`
  cd $spec_dir
  runghc Spec.hs
  cd $root
done
