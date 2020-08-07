# FTBOmnia-Docker

![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/wolfrazu/ftb-omnia)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/wolfrazu/ftb-omnia)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/wolfrazu/ftb-omnia)

A Docker container that runs the FTB Omnia modpack.

It automatically downloads the Creeperhost modpack installer, configures it to download the requested version and then executes it.  Afterwards it starts the server using the recommended configuration of 4GB of RAM.

This container has -Dfml.queryResult=confirm set, which means that in the event of any mod removals between versions the change will be silently accepted.

Images are available on Docker at wolfrazu/ftb-omnia.  For specific versions, use set the environment variable VERSION to whichever version of the pack you want:

## Example versions

* LATEST (Automatically download the latest version available) - Default
* 50 = 1.3.0
* 48 = 1.2.0
* 46 = 1.1.0

This is my first public container, so if you have any suggestions feel free to submit a pull request or issue :)
