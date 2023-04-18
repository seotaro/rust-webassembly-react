initialize:
	npx create-react-app react-sample
	cd react-sample && yarn

	cargo generate --name rust-sample --git https://github.com/rustwasm/wasm-pack-template
	cd rust-sample && wasm-pack build

run:
	cd react-sample && yarn start

