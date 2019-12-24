FROM archlinux:latest
RUN pacman -Syu --noconfirm
RUN pacman -S which jre8-openjdk-headless --noconfirm
RUN useradd freenet
USER freenet
WORKDIR "/Freenet"
CMD ./run.sh console
