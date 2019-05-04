LABEL version="1.0"
LABEL name="school-docs"

ARG GIT_CREDENTIALS

# install git in order to be able to install serve-secure from git server
RUN apt-get update && apt-get -yq install git

# install serve-secure
RUN npm i -g git+https://${GIT_CREDENTIALS}git.jannik.ml/jannik/serve-secure.git

# incase the docs directory does not exist create it
RUN mkdir /docs
WORKDIR /docs

# the presence of a correctly configured .env file is assumed

CMD serve-secure
