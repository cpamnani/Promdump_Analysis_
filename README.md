# Promdump_Analysis_
## Execute the following command to run the script:

```console
bash run.sh argument1 argument2 argument3
```

argument1: Directory name where all the untarred data goes 
argument2: The tar file that needs to be untarred
argument3: container name to run grafana

For example: 
```console
bash run.sh test_directory tar_file.tar.gz test_container
```

This command will create a new directory, untar the tar file and mount it to Prometheus. Further it will simultaneosly run the Prometheus and Grafana server.

