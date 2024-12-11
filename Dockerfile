FROM rocker/rstudio AS base

WORKDIR /project

RUN apt-get update && apt-get install -y \
    libxml2-dev \
    libssl-dev \
    libcurl4-openssl-dev \
    libharfbuzz-dev \
    libfribidi-dev \
    libfontconfig1-dev \
    libyajl-dev

RUN echo "options(repos = c(CRAN = 'https://mirrors.tuna.tsinghua.edu.cn/CRAN/'))" >> /usr/local/lib/R/etc/Rprofile.site

RUN R -e "install.packages('renv', repos='https://mirrors.tuna.tsinghua.edu.cn/CRAN/')"

RUN R -e "options(repos = 'https://mirrors.tuna.tsinghua.edu.cn/CRAN/'); install.packages('jsonlite')"

RUN mkdir -p renv

COPY renv.lock renv.lock
COPY .Rprofile .Rprofile
COPY renv/activate.R renv/activate.R
COPY renv/settings.json renv/settings.json

RUN mkdir -p renv/cache
ENV RENV_PATHS_CACHE=renv/cache

RUN chmod -R 777 /project

CMD ["bash"]
