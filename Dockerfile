#docker run --rm -d -p 3838:3838 tosku/shiny
#docker run -p 3838:3838 -v ABSOLUTEPATHTO/shinies/apps/:/srv/shiny-server/ tosku/shiny

FROM rocker/shiny:3.6.1

RUN sudo apt update && sudo apt install -y vim tmux

RUN R -e "install.packages('readxl')"

RUN R -e "install.packages(c('shinythemes','gridExtra','ggpubr'))"

RUN R -e "install.packages(c('kernlab','caret'))"

RUN R -e "install.packages(c('shinyjs'))"

COPY apps /srv/shiny-server/

EXPOSE 3838

CMD ["/usr/bin/shiny-server.sh"]
