FROM jekyll/jekyll
COPY --chown=jekyll:jekyll . /srv/jekyll
RUN jekyll build
CMD jekyll serve --watch --drafts
