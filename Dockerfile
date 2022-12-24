FROM busybox

ENV QEMU_BIN_DIR=/usr/bin

ADD https://raw.githubusercontent.com/multiarch/qemu-user-static/master/containers/latest/register.sh /register
ADD https://raw.githubusercontent.com/qemu/qemu/master/scripts/qemu-binfmt-conf.sh /qemu-binfmt-conf.sh

RUN chmod +x /qemu-binfmt-conf.sh

ENTRYPOINT ["/register"]
