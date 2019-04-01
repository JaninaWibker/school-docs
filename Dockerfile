RUN apt-get install git
ARG git_credentials
RUN npm i -g git+https://${git_credentials}git.jannik.ml/jannik/serve-secure.git
RUN mkdir /docs
CMD cd /docs
CMD serve-secure
