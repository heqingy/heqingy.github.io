serve-en:
	python3 -m mkdocs serve -f en/mkdocs.yml

serve-zh:
	python3 -m mkdocs serve -f zh/mkdocs.yml

build:
	python3 -m mkdocs build -d ./site -f zh/mkdocs.yml
	mv zh/site ./en/docs/zh
	python3 -m mkdocs build -d ./site -f en/mkdocs.yml

publish: build
	mkdocs gh-deploy --force -f en/mkdocs.yml

clean:
	rm -rf en/site