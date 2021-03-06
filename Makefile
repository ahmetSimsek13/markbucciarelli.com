.PHONEY: watch
watch:
	stack exec site build
	stack exec site watch

.PHONEY: fullwatch
fullwatch:
	stack build
	stack exec site rebuild
	./mksitemap.sh > _site/sitemap.txt
	stack exec site watch

.PHONEY: deploy
deploy:
	stack build
	stack exec site rebuild
	./mksitemap.sh > _site/sitemap.txt
	rsync -avz ./_site/ tinyvz:/home/markbucciarelli/www
	ssh tinyvz chown -R markbucciarelli:markbucciarelli /home/markbucciarelli/www
