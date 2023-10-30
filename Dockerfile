FROM jupyter/minimal-notebook

RUN apt-get update && apt-get install -y python3-pip

RUN pip install pandas matplotlib seaborn