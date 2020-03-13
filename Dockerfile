#docker run --rm -d -p 3838:3838 tosku/cinemashiny:1.3
#docker run -p 3838:3838 -v ABSOLUTEPATHTO/shinies/apps/:/srv/shiny-server/ tosku/cinemashiny

##tosku/cinemashiny:1.3
FROM tosku/cinemashiny:1.2

RUN sudo apt update && sudo apt install -y libxml2-dev libmagick++-dev

RUN R -e "install.packages('slickR')"

RUN cd /root && git clone https://github.com/esm-ispm-unibe-ch/shinies/ && \
    cp shinies/apps/* /srv/shiny-server/ -r && rm -rf shinies

EXPOSE 3838

CMD ["/usr/bin/shiny-server.sh"]
