#docker run --rm -d -p 3838:3838 tosku/shiny
#docker run -p 3838:3838 -v ABSOLUTEPATHTO/shinies/apps/:/srv/shiny-server/ tosku/shiny

FROM rocker/shiny:3.6.1

RUN sudo apt update && sudo apt install -y vim tmux

RUN R -e "install.packages(c('shinyjs','kernlab','caret','readxl','shinythemes','gridExtra','ggpubr'))"

COPY apps /srv/shiny-server/

COPY shiny-server.conf /etc/shiny-server/

EXPOSE 3838

CMD ["/usr/bin/shiny-server.sh"]
