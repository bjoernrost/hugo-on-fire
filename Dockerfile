FROM klakegg/hugo:0.82.0-ext-alpine-ci

LABEL maintainer="Bjoern Rost"

#RUN npm install -g firebase-tools
RUN apk add curl && \
    apk add sudo && \
    apk add gcompat && \
    curl -sL https://firebase.tools | bash

# Start the building & deploying now
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["sh", "/entrypoint.sh"]
