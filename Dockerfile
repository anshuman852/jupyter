FROM jupyter/minimal-notebook:python-3.9.12
USER root
RUN apt-get update -y \
    && apt-get install -y nano curl wget iputils-ping htop ncdu dos2unix
    
USER $NB_UID
RUN echo "c.NotebookApp.quit_button = False" >> /home/jovyan/.jupyter/jupyter_notebook_config.py

CMD ["start.sh", "jupyter", "notebook", "--NotebookApp.token=''", "--ip=0.0.0.0" ]
