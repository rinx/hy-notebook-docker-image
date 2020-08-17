FROM jupyter/minimal-notebook:latest as jupyter

LABEL maintainer "rinx <rintaro.okamura@gmail.com>"

RUN pip3 install git+https://github.com/ekaschalk/jedhy.git --user \
    && pip3 install git+https://github.com/Calysto/calysto_hy.git --user \
    && python3 -m calysto_hy install --user

USER $NB_UID

WORKDIR $HOME
