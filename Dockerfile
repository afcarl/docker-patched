FROM dockerimages/docker
ADD ./apply_patches /
ADD ./installer /
CMD cd /docker \
 && git fetch origin && \
 && git reset --hard origin/master \
 && /apply_patches \
 && make cross \
 && /installer
