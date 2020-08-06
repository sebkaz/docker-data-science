# Ubuntu for our image
FROM ubuntu

# Updating Ubuntu
RUN apt-get update && yes | apt-get upgrade

# Adding python3 and pip3
RUN apt-get install -y python3 python3-pip git 
# test for python
RUN mkdir -p test
RUN pip3 install jupyter pandas numpy matplotlib


# Configuring access to Jupyter
RUN mkdir /opt/notebooks
RUN jupyter notebook --generate-config --allow-root
RUN echo "c.NotebookApp.password = u'sha1:6a3f528eec40:6e896b6e4828f525a6e20e5411cd1c8075d68619'" >> /root/.jupyter/jupyter_notebook_config.py
# Jupyter listens port: 8888
EXPOSE 8888
# Run Jupytewr notebook as Docker main process
CMD ["jupyter", "notebook", "--allow-root", "--notebook-dir=/opt/notebooks", "--ip='*'", "--port=8888", "--no-browser"]
