FROM openjdk:11

RUN curl -O https://download.clojure.org/install/linux-install.sh && \
        chmod +x linux-install.sh && ./linux-install.sh && rm ./linux-install.sh

ARG USER
ARG UID

RUN groupadd -r $USER -g $UID && useradd -r -m -g $USER -u $UID $USER
USER $USER
WORKDIR /home/$USER

SHELL ["/bin/bash", "-c"]
ENTRYPOINT ["/bin/bash"]




