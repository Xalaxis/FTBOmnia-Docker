# FTBOmnia-Docker

![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/wolfrazu/ftb-omnia)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/wolfrazu/ftb-omnia)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/wolfrazu/ftb-omnia)

A Docker container that runs the FTB Omnia modpack.

It automatically downloads the Creeperhost modpack installer, configures it to download the requested version and then executes it.  Afterwards it starts the server using the recommended configuration of 4GB of RAM.

Images are available on Docker at wolfrazu/ftb-omnia.  For specific versions, use tags like wolfrazu/ftb-omnia:1.2.0. Alternatively :latest should always be the latest version of the pack.
