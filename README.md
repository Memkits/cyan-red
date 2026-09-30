
青朱
----

> Canvas shape drawing with some Chinese

Demo http://r.tiye.me/Memkits/cyan-red/ .

### Usages

_TODO_

Development requires Calcit 0.27.0, Caps 0.1.1, Node.js 24 and Yarn 4.18.0:

```sh
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit --check-only
calcit js
node --test scripts/canvas-regression.test.mjs
yarn build
```

Only `calcit.cirru` and `deps.cirru` are canonical; do not restore the retired
`compact.cirru` and `package.cirru` snapshots. CI builds frontend `dist/` with
the production `https://cos-sh.tiye.me/Memkits/cyan-red/` CDN base (isolated
`pr/` prefix for previews), then uploads and publicly verifies those files.
The existing `dist/*` rsync destination at
`rsync-user@tiye.me:/web-assets/repo/Memkits/cyan-red` remains unchanged.

### Name Original

"青朱" from "青朱出入图".

### Workflow

https://github.com/calcit-lang/respo-calcit-workflow

### License

MIT
