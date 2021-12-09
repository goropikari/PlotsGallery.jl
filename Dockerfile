FROM jupyter/base-notebook:notebook-6.2.0

ENV JULIA_VERSION=1.7.0
RUN wget https://julialang-s3.julialang.org/bin/linux/x64/$(echo ${JULIA_VERSION} | cut -d. -f1,2)/julia-${JULIA_VERSION}-linux-x86_64.tar.gz && \
    tar xvf julia-${JULIA_VERSION}-linux-x86_64.tar.gz && \
    ./julia-$JULIA_VERSION/bin/julia -e 'using Pkg; Pkg.update(); Pkg.pkg"add Plots IJulia"; Pkg.precompile()'

USER root
RUN apt-get update && \
    apt-get install -y texlive-science texlive-latex-extra cm-super dvipng imagemagick && \
    apt-get clean && rm -rf /var/lib/apt/lists/* && \
    ln -s $(pwd)/julia-$JULIA_VERSION/bin/julia /usr/bin/julia

USER $NB_UID
RUN conda install --quiet --yes matplotlib

CMD /opt/conda/bin/jupyter notebook
