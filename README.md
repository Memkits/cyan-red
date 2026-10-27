
青朱
----

> Canvas shape drawing with some Chinese

Demo http://r.tiye.me/Memkits/cyan-red/ .

### Usages

_TODO_

使用配对的正式 Calcit CLI / `@calcit/procs` **0.31.0**、Caps 0.1.1、
Node.js 24 和 Yarn 4.18.0。依赖已发布的精确 tag：Reel `0.7.0-alpha.3`、
Respo `0.17.0-alpha.3`、UI `0.9.0-alpha.3`、js-ffi `0.2.6`，Router 传递依赖为
`0.9.0-alpha.2`。升级后重新安装整图并生成 JS；Yarn 使用统一的一小时新包隔离期。

### 旧存档与操作类型

浏览器继续使用 `workflow` localStorage key 和 Cirru EDN 格式，保留 Store 的
`:states` / `:ops`。旧 `:ops` 为 CirruQuote 时，使用公开 `.to-list` 并处理 Option，
再校验为嵌套行 List；新的行 List 保持原值语义。原始 token、Unicode 与嵌套树按存档值
转换，不从编辑器内容重新解析旧树。

反序列化值先校验 Struct 与旧 `Store` 名称，转换并校验字段 Map，再由已有的
`decode-map-as` 恢复当前名义 Store。名称、字段集合、states Map 与 ops 行列表都会校验；
错误数据不会填默认值或丢弃额外字段。已经验证的 Store 继续由 `read-store` 保留原对象身份。
启动时先恢复成功，再渲染并注册 watch、定时保存和退出保存；坏存档会保留原文供修复。

默认 entry 将 `dispatch-op` 绑定到 `app.schema/Op`，声明 states、ops、hydrate 及
Reel 控制消息。输入/键盘回调的 `d!` 使用单个 Op 合同；浏览器 renderer 直接接入
`dispatch!`，devtools 的开放入口继续由 `dispatch-wire!` 校验 Enum。
Canvas 固定矩形绘制、尺寸、样式与 Meta+Enter 提交行为保持现状，DSL 绘图执行器仍为 TODO。

### 修改与验证

```sh
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit --check-only --all-defs
calcit fix --workflow strict --verify --format edn
calcit test app.schema --require-match --summary-only --format edn
yarn build
node --test scripts/canvas-regression.test.mjs
```

`yarn build` 编译默认 JS/browser entry 并构建一次；`yarn dev` 先编译再启动 Vite，
持续编辑时在另一终端运行 `calcit calcit.cirru -w`。CI 保留 canonical、全部定义、完整 strict、
原 8 项 Canvas/输入/旧存档回归；存档用例扩展了嵌套 Unicode token 与非法字段拒绝。
新增 Calcit definition `:tests` 直接验证旧树恢复和序列化往返，原生与宿主回归各守其边界。

canonical source 为 `calcit.cirru` / `deps.cirru`。修改 Snapshot 前读取
`calcit docs agents --contract`，通过 query/tree 与带 revision 守卫的事务修改。
PR 前端保存在现有 artifact 和独立 COS 预览前缀，生产 CDN base、
`dist/*` 的原 rsync 路径保持不变；COS Action v1.2.0 沿用内置公网校验。

### 限制

- Canvas 与 KeyboardEvent 保留原有宿主身份信任边界，原生测试只验证纯数据恢复，不代表原生 Canvas 支持。
- 状态、事件载荷和语法树成员仍含显式 Dynamic，使用处需要校验。
- 旧 Store 名称校验暂用一次 `&struct:get-name`，仅在 `struct?` 守卫后用于存档边界；0.31.0 没有对应公开名称 getter。

### Name Original

"青朱" from "青朱出入图".

### Workflow

https://github.com/calcit-lang/respo-calcit-workflow

### License

MIT
