FROM continuumio/miniconda

ADD environment.yml /tmp/environment.yml

RUN conda env create -f /tmp/environment.yml
# Pull the environment name out of the environment.yml
RUN echo "source activate r" >> ~/.bashrc

ENV PATH /opt/conda/envs/r/bin:$PATH
