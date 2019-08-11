FROM jupyter/scipy-notebook:latest

LABEL maintainer="prasoon2211@gmail.com"

WORKDIR /app

USER root
RUN conda install --quiet --yes \
    'conda-forge::altair' \
    'conda-forge::vega_datasets' \
    'conda-forge::jupyterlab_code_formatter' \
    'conda-forge::notebook' \
    'conda-forge::vega' \
    'conda-forge::jupyter_contrib_nbextensions' \
    'conda-forge::jupyter_nbextensions_configurator' \
    && jupyter contrib nbextension install --system \
    && jupyter labextension install @lckr/jupyterlab_variableinspector \
    && jupyter labextension install jupyterlab-spreadsheet \
    && jupyter labextension install @ryantam626/jupyterlab_code_formatter \
    && jupyter serverextension enable --py jupyterlab_code_formatter

ENV PATH /app:$PATH
USER root
CMD /bin/bash
