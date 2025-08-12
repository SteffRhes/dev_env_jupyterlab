FROM debian:latest
RUN apt update
RUN apt install -y python3 python3-pip
RUN pip install --break-system-packages \
  jupyterlab \
  jupyterlab-code-formatter \
  black \
  ipywidgets \
  jupyterlab-lsp \
  python-lsp-server[all]
WORKDIR /mount/
COPY ./jupyter_config/ /jupyter_config/
ENV JUPYTER_CONFIG_DIR=/jupyter_config/
CMD ["jupyter", "lab", "--allow-root", "--ip='*'", "--NotebookApp.token=''", "--NotebookApp.password=''"]

