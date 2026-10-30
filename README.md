
青朱
----

> Canvas shape drawing with some Chinese

Demo http://r.tiye.me/Memkits/cyan-red/ .

### 使用者影响

CLI / `@calcit/procs` 配对正式 **0.32.1**，升级后整图安装、重新生成JS并完整刷新。
使用已发布UI **0.9.0**、Respo **0.17.1**、JS-FFI **0.2.9**、Reel **0.7.0-alpha.5**，
传递Router仍有alpha，不宣称整图全部稳定，不使用本地候选或未发布版本。

官方工具转换12处旧类型标注，28个定义schema保持。Canvas固定绘制、Meta+Enter
提交、原存档恢复和HUD不变；DSL绘图执行器仍为TODO，不能把矩形当作DSL执行结果。
原完整strict、全定义、一项原生存档测试及八项JS Canvas/键盘/状态/存档回归保留，
不新增强转、预算或验证脚本。真实Caps strict/toolchain、原测试、构建与immutable通过。

此前0.32.0候选已验收固定矩形、合成输入和刷新恢复；本次未重跑浏览器，不操作真实
存档。原生存档测试仍提示Struct `.to-map` 动态查找，不为清零伪造宿主或名义证明。
npm等待保持一小时，无单包例外；artifact仅升级正式patch，生产路径和COS内置verify
保持。本PR不合并、部署生产或发版。

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
原 8 项 Canvas/输入/旧存档回归；原存档用例保留嵌套 Unicode token 与非法字段拒绝。
原 Calcit definition `:tests` 直接验证旧树恢复和序列化往返，原生与宿主回归各守其边界。

canonical source 为 `calcit.cirru` / `deps.cirru`。修改 Snapshot 前读取
`calcit docs agents --contract`，通过 query/tree 与带 revision 守卫的事务修改。
PR 前端保存在现有 artifact 和独立 COS 预览前缀，生产 CDN base、
`dist/*` 的原 rsync 路径保持不变；COS Action v1.2.0 沿用内置公网校验。

### 限制

- Canvas 与 KeyboardEvent 保留原有宿主身份信任边界，原生测试只验证纯数据恢复，不代表原生 Canvas 支持。
- 状态、事件载荷和语法树成员仍含显式 Dynamic，使用处需要校验。
- 旧Store名称筛选保留一次受 `struct?` 守卫的内部 `&struct:get-name`；名称只是wire数据条件，不代表来源或授权，之后完整解码并重建本地Store。0.32.1的只读元数据API定位及同路径动态提示已反馈到[上游收敛议题](https://github.com/calcit-lang/calcit/issues/2456#issuecomment-6513364453)，不为应用增加特例或放宽门禁。

### Name Original

"青朱" from "青朱出入图".

### Workflow

https://github.com/calcit-lang/respo-calcit-workflow

### License

MIT
