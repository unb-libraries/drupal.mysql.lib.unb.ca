FROM mysql:5.7


ENV TZ="America/Moncton"

COPY ./build/scripts /scripts
COPY ./build/conf.d /etc/mysql/conf.d

LABEL ca.unb.lib.generator="mysql" \
  org.opencontainers.image.authors="libsupport@unb.ca" \
  org.opencontainers.image.created="$BUILD_DATE" \
  org.opencontainers.image.description="drupal.mysql.lib.unb.ca is the mysql application serving drupal instances at UNB Libraries." \
  org.opencontainers.image.revision="$VCS_REF" \
  org.opencontainers.image.source="https://github.com/unb-libraries/drupal.mysql.lib.unb.ca" \
  org.opencontainers.image.title="drupal.mysql.lib.unb.ca" \
  org.opencontainers.image.vendor="University of New Brunswick Libraries" \
  org.opencontainers.image.version="$VERSION"
