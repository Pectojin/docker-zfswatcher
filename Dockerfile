FROM crazymanjinn/zfs-utils

ENV zfswatcher_package="zfswatcher_0.4.6-1_amd64.deb" \
  zfswatcher_link="https://github.com/rouben/zfswatcher/releases/download/0.4.6/"

RUN curl -OL ${zfswatcher_link}${zfswatcher_package} && \
  dpkg -i ${zfswatcher_package} && \
  rm ${zfswatcher_package}

COPY zfswatcher /opt/bin/zfswatcher
ENTRYPOINT ["/opt/bin/zfswatcher"]
