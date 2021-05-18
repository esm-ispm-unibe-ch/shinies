#docker run --rm -d -p 3838:3838 tosku/cinemashiny:1.4
#docker run -p 3838:3838 -v ABSOLUTEPATHTO/shinies/apps/:/srv/shiny-server/ tosku/cinemashiny

##tosku/cinemashiny:1.4
FROM tosku/cinemashiny:1.4

RUN sudo apt update && sudo apt install -y libxml2-dev libmagick++-dev

RUN sudo apt upgrade -y

RUN R -e "install.packages('devtools', repos='https://stat.ethz.ch/CRAN/')"

RUN cd /root && git clone https://github.com/esm-ispm-unibe-ch/shinies/ && \
    cp shinies/apps/* /srv/shiny-server/ -r && rm -rf shinies

EXPOSE 3838

CMD ["/usr/bin/shiny-server.sh"]
