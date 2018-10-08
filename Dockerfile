FROM jupyter/scipy-notebook
LABEL maintainer "David Waterworth <wateda@gmail.com>"

USER root

RUN conda install --quiet --yes \
    'tensorflow-gpu' \
    'keras' && \
    conda clean -tipsy && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER

USER $UID