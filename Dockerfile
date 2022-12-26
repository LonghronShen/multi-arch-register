FROM busybox

ENV QEMU_BIN_DIR=/usr/bin

# ADD https://raw.githubusercontent.com/multiarch/qemu-user-static/master/containers/latest/register.sh /register
ADD https://raw.githubusercontent.com/qemu/qemu/master/scripts/qemu-binfmt-conf.sh /qemu-binfmt-conf.sh

COPY register.sh /register

RUN chmod +x /qemu-binfmt-conf.sh && chmod +x /register

ENTRYPOINT ["/register"]
