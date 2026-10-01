
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
yarn build
node --test scripts/canvas-regression.test.mjs
```

`yarn build` compiles the default JS browser entry and builds once. `yarn dev`
compiles initially and starts Vite; for live edits, run `calcit calcit.cirru -w`
in another terminal. CI retains canonical, entry/public checks and existing
Canvas/input regressions, without repeated migration or diagnostic reports.

Only `calcit.cirru` and `deps.cirru` are canonical; do not restore the retired
`compact.cirru` and `package.cirru` snapshots. CI builds frontend `dist/` with
the production `https://cos-sh.tiye.me/Memkits/cyan-red/` CDN base (isolated
`pr/<number>/<run-id>/<attempt>/` prefix for previews). Released COS action
v1.2.0 validates HTML references and publicly verifies the upload itself;
no extra upload-verification script is needed.
The existing `dist/*` rsync destination at
`rsync-user@tiye.me:/web-assets/repo/Memkits/cyan-red` remains unchanged.

### Name Original

"青朱" from "青朱出入图".

### Workflow

https://github.com/calcit-lang/respo-calcit-workflow

### License

MIT
