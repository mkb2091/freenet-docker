FROM archlinux:latest
RUN pacman -Syu --noconfirm
RUN pacman -S which jre8-openjdk-headless --noconfirm
COPY Freenet /Freenet
RUN useradd freenet
RUN chown freenet:freenet /Freenet -R
USER freenet
WORKDIR "/Freenet"
CMD ./run.sh console
