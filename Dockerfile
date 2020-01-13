#docker run --rm -d -p 3838:3838 tosku/cinemashiny:1.1
#docker run -p 3838:3838 -v ABSOLUTEPATHTO/shinies/apps/:/srv/shiny-server/ tosku/shiny

##tosku/cinemashiny:1.0
#FROM rocker/shiny:3.6.1

#RUN sudo apt update && sudo apt install -y vim tmux

#RUN R -e "install.packages(c('shinyjs','kernlab','caret','readxl','shinythemes','gridExtra','ggpubr'))"

#COPY apps /srv/shiny-server/

#COPY shiny-server.conf /etc/shiny-server/

##tosku/cinemashiny:1.1
FROM tosku/cinemashiny:1.0

RUN sudo apt update && sudo apt upgrade && sudo apt install -y git

RUN cd /root && git clone https://github.com/esm-ispm-unibe-ch/shinies/ && \
    cp shinies/apps/* /srv/shinyapps/ -r && rm -rf shinies

EXPOSE 3838

CMD ["/usr/bin/shiny-server.sh"]
