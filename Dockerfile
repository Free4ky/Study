FROM ubuntu:20.04
RUN apt update \
        && apt install -y python3 fortune \
        && cd /usr/bin \
        && ln -s python3 python \
	&& apt install -y gpg
ADD ./data /mnt/files/data
EXPOSE 80
CMD ["python", "-m", "http.server", "-d", "/mnt/files", "80"]
