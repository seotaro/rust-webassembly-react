initialize:
	cargo generate --name rust-sample --git https://github.com/rustwasm/wasm-pack-template
	npx create-react-app react-sample

build:
	cd rust-sample && wasm-pack build --target web
	cp -r rust-sample/pkg react-sample/src

	cd react-sample && yarn

run:
	cd react-sample && yarn start

