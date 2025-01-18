FROM quay.io/jupyter/base-notebook:notebook-7.3.2

ENV JULIA_VERSION=1.11.2
ENV PATH=$PATH:/home/jovyan/.juliaup/bin
USER root
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y curl && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

USER $NB_UID
RUN curl -fsSL https://install.julialang.org | sh -s -- -y \
    && juliaup add $JULIA_VERSION \
    && juliaup default $JULIA_VERSION \
    && julia -e 'using Pkg; Pkg.update(); Pkg.pkg"add Plots IJulia"; Pkg.precompile()'

CMD start-notebook.py --NotebookApp.token='my-token'
