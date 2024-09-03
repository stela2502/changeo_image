version="1.0"
SCRIPT=$(readlink -f $0)
SCRIPTPATH=`dirname $SCRIPT`
singularity run  -B/mnt:/mnt  ${SCRIPTPATH}/changeo_v${version}.sif
