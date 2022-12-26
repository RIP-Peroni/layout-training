install:
	npm install

lint:
	npx stylelint ./src/styles/*.css
	npx stylelint ./src/styles/**/*.scss
	npx htmlhint ./src/*.html

fix-lint:
	npx stylelint --fix ./src/styles/*.css
	npx stylelint --fix ./src/styles/**/*.scss

deploy:
	npx surge ./src/

compile:
	sass --watch src/styles/scss/app.scss src/styles/app.css
