FROM jekyll/minimal:3.8

RUN apk add --virtual buildpack \
	g++ \
	make \
	libxslt-dev \
	libxml2-dev && \
    apk add bash && \
    gem install jekyll-paginate \
	jekyll-redirect-from \
	jekyll-sitemap \
	jekyll-feed \
	jekyll-seo-tag \
	jemoji

EXPOSE 4000
ENTRYPOINT ["jekyll", "serve", "--watch", "--incremental"]
