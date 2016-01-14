.PHONY: css
css:
	mkdir -p bundle
	node_modules/.bin/postcss --watch --use autoprefixer --use postcss-import css/index.css --output bundle/index.css

.PHONY: server
server:
	browser-sync start --server --files='index.html,bundle/index.css'

.PHONY: clean
clean:
	rm -r bundle

.PHONY: all
all:
	make clean & make css & make server 


