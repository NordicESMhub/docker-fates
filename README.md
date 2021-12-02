# FATES EMERALD docker container

docker container for running fates-emerald. It uses containers automatically generated from [biocontainers](https://biocontainers.pro/) 


## How to use it?

Make sure you customize WORKDIR:

```
export WORKDIR=/opt/uio/containers
```

This is a fodler where you will create you cases and save your results.


```
mkdir -p $WORKDIR/archive
mkdir -p $WORKDIR/work
mkdir -p $WORKDIR/cases/
```

Input data must be in `$WORKDIR/inputdata`.

To start the container (docker command needs to be available):

```
docker run -it --rm -v $WORKDIR:/opt/esm quay.io/nordicesmhub/docker-fates:2.0.1 bash
```

Then create and run your FATES simulations as usual. For example, to create a case:

```
create_newcase --case /opt/esm/cases/fates_alp1 --compset 2000_DATM%1PTGSWP3_CLM50%FATES_SICE_SOCN_MOSART_SGLC_SWAV --res 1x1_ALP1 --machine espresso --run-unsupported
```

To know more on how to run FATES, follow the [online tutorial on FATES](https://training.galaxyproject.org/training-material/topics/climate/tutorials/fates-jupyterlab/tutorial.html).
