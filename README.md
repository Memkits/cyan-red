
青朱
----

> Canvas shape drawing with some Chinese

Demo http://r.tiye.me/Memkits/cyan-red/ .

### Usages

_TODO_

使用配对的 Calcit/procs **0.30.1-alpha.4**（预发布，不是正式 0.30.1）、
Caps 0.1.1、Node.js 24 和 Yarn 4.18.0。模块使用正式 Reel 0.6.39、
Respo 0.16.122、UI 0.7.41、js-ffi 0.2.3。

提交代码后，`:ops` 统一保存为 Cirru 行列表，允许行内嵌套语法树；原 localStorage key、
Store 的 `:states` / `:ops` 字段不变。读取原 0.27.0 存档时兼容空 List 和 CirruQuote，
保留编辑内容并转换语法树，不清空存储。有效 Store 通过校验后保留原对象身份。
Canvas 的固定矩形绘制、尺寸、样式及 Meta+Enter 行为不变；本轮没有实现原 TODO 的 DSL 绘图执行器。

```sh
caps --strict --ci
yarn install --immutable
caps verify --toolchain
yarn build
node --test scripts/canvas-regression.test.mjs
```

`yarn build` compiles the default JS browser entry and builds once. `yarn dev`
compiles initially and starts Vite; for live edits, run `calcit calcit.cirru -w`
in another terminal. CI 使用 canonical、全部定义、完整 strict 与实际构建，保留原有
7 条 Canvas/输入回归，并在同一测试文件增加 1 条旧存档兼容/往返回归；不新增检查脚本。

移除伪 Reel 类型别名，按实际 Map 合同接入 Reel；外部 updater/事件值在边界检查。
DOM 挂载复用 Respo 已发布的 typed selector，未新增宿主强转；保留原两处 Canvas/KeyboardEvent
宿主身份信任边界。开放状态与语法树成员仍有显式 Dynamic，不宣称类型债务清零。

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
