FROM jupyter/base-notebook:notebook-6.0.3

ENV JULIA_MINOR_VERSION=1.5
ENV JULIA_PATCH_VERSION=1
RUN wget https://julialang-s3.julialang.org/bin/linux/x64/${JULIA_MINOR_VERSION}/julia-${JULIA_MINOR_VERSION}.${JULIA_PATCH_VERSION}-linux-x86_64.tar.gz && \
    tar xvf julia-${JULIA_MINOR_VERSION}.${JULIA_PATCH_VERSION}-linux-x86_64.tar.gz && \
    ./julia-$JULIA_MINOR_VERSION.$JULIA_PATCH_VERSION/bin/julia -e 'using Pkg; Pkg.update(); Pkg.pkg"add Plots IJulia"; Pkg.precompile()'

USER root
RUN apt-get update && \
    apt-get install -y texlive-science texlive-latex-extra cm-super dvipng imagemagick && \
    apt-get clean && rm -rf /var/lib/apt/lists/* && \
    ln -s $(pwd)/julia-$JULIA_MINOR_VERSION.$JULIA_PATCH_VERSION/bin/julia /usr/bin/julia

USER $NB_UID
RUN conda install --quiet --yes matplotlib

CMD /opt/conda/bin/jupyter notebook
