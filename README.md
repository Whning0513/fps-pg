# 夜班信号 · After Hours

第一人称城市探索原型。现代写字楼和创意园区在夜班交付前突然断网；玩家从工作室大堂出发，按交接单逐台恢复楼宇网络节点，再到主楼入口启动同步。

在线试玩：<https://whning0513.github.io/fps-pg/>

## 场景

- 玻璃写字楼由重复楼层、窗格、幕墙压条和屋顶设备组合而成；窗格使用 `InstancedMesh`，在增加建筑密度时控制 draw call。
- 街区包含接待大堂、共享休息区、公交站、绿化、路灯、路面标线和停放的电动车。
- 混凝土和沥青继续复用 Poly Haven 的 PBR 材质；道路上的积水用物理材质配合 HDRI 做反射。
- 三台楼宇接入点使用不同的频道位置，玩家要查大堂交接单后完成配置。

## 运行

需要支持 WebGL 2 的现代浏览器和 Python 3。Three.js 0.180.0 从 jsDelivr 加载，首次运行需要网络。浏览器不能直接用 `file://` 打开页面，请在 PowerShell 中运行：

```powershell
./run.ps1
```

然后访问 <http://127.0.0.1:8000/>。脚本只启动本地静态文件服务，不会自动打开浏览器。按 `Ctrl+C` 结束服务。

## 操作

- 标题页点击“开始巡检”后进入游戏并锁定鼠标；按 `Esc` 释放鼠标。
- `W A S D` 移动，鼠标观察，`E` 检查或交互，`Shift` 快走。
- 未打开面板时，按 `1` 切步枪、`2` 切 Glock 风格手枪、`3` 切 M9 风格刺刀；当前只有持械切换，没有攻击动作。
- 节点配置面板打开时，`1`、`2`、`3` 选择频道，也可以点击选项。
- 释放鼠标后，点击游戏画面可重新锁定。

## 素材

环境图和地面材质来自 Poly Haven，按 CC0 发布：

- [Modern Evening Street HDRI](https://polyhaven.com/a/modern_evening_street)（2K HDR）
- [Concrete Layers 02](https://polyhaven.com/a/concrete_layers_02)
- [Asphalt Track](https://polyhaven.com/a/asphalt_track)
- [Poly Haven license](https://polyhaven.com/license)

街道、楼体、窗格、室内家具、车辆、标识、天气粒子、界面和交互逻辑为本项目编写。

## 当前范围

目前包含大堂巡检单、三组网络节点配置、主楼同步结局和三种第一人称持械模型。还没有保存进度、完整音景、行人或移动端操作。
