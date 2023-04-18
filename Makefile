initialize:
	cargo generate --name rust-sample --git https://github.com/rustwasm/wasm-pack-template
	npx create-react-app react-sample
	cd react-sample && yarn

build:
	cd rust-sample && wasm-pack build --target web
	cp -r rust-sample/pkg/ react-sample/src/wasm/
	cd react-sample && yarn build

run:
	cd react-sample && yarn start

upload:
	gsutil -m -h "Content-Encoding:gzip" \
		-h "Cache-Control:public, max-age=15, no-store" \
		cp -Z -r react-sample/build/* gs://rust-webassembly
