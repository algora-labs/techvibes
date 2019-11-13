FROM jekyll/minimal:3.8

COPY Gemfile Gemfile.lock ./

RUN apk add --virtual buildpack \
		g++ \
		make \
		libxslt-dev \
		libxml2-dev && \
    apk add bash && \
	bundle install

EXPOSE 4000
ENTRYPOINT ["jekyll", "serve", "--watch", "--incremental"]
