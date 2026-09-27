# YiDrop

[![API](https://img.shields.io/badge/API-21%2B-yellow.svg?style=flat)](https://developer.android.com/about/versions/lollipop)
[![Github License](https://img.shields.io/github/license/lingyicute/YiDrop?color=%2364f573&style=flat)](https://github.com/lingyicute/YiDrop/blob/main/LICENSE)
![GitHub Created At](https://img.shields.io/github/created-at/lingyicute/YiDrop)
![GitHub commit activity](https://img.shields.io/github/commit-activity/y/lingyicute/YiDrop)

**中文** • [English](README_EN.md)

YiDrop 是一个好玩的应用程序，帮助你快速且安全地分享文件。它开源、免费、跨平台。

你可以把它认为是一个可爱化的 LocalSend —— 梨按照自己的喜好做了一些调整。希望你喜欢它！

- 主页：<https://drop.92li.uk>
- 主仓库：<https://github.com/lingyicute/YiDrop>
- 发布页：<https://github.com/lingyicute/YiDrop/releases>

## 截图

<img src="https://drop.92li.uk/img/yidrop.webp" alt="Screenshot" height="300"/> <img src="https://drop.92li.uk/img/screenshot-pc.webp" alt="PC screenshot" height="300"/>

## 下载

[<img src="https://github.com/lingyicute/YiLink-Next/blob/next/images/get-it-on-github.png?raw=true" alt="Get it on GitHub" height="80">](https://github.com/lingyicute/YiDrop/releases)

**兼容性**

| Platform | Minimum Version |
|----------|-----------------|
| Android  | 5.0             |
| Windows  | 10              |

## 设置

在大多数情况下，YiDrop 应该可以直接使用。但是，如果你在发送或接收文件时遇到问题，可能需要配置防火墙以允许 YiDrop 在你的本地网络上通信。

| 流量类型 | 协议 | 端口  | 操作 |
|---------|------|------|------|
| 传入     | TCP, UDP | 59420 | 允许  |
| 传出     | TCP, UDP | 任意   | 允许  |

另外，请确保禁用路由器上的 AP 隔离。通常默认情况下应禁用它，但某些路由器可能会启用它（比如访客网络）。

**便携模式**

创建一个名为 `settings.json` 的文件，放置在与可执行文件相同的目录中。
此文件可以为空。
YiDrop 将使用此文件来存储设置，而不是默认位置。

**分离启动**

如果想让 YiDrop 在托盘里启动，请使用 `--hidden` 标志。

## 工作原理

YiDrop 使用安全通信协议，允许设备通过 REST API 进行通信。所有数据都通过 HTTPS 安全地发送，并且 TLS/SSL 证书会在每台设备上动态生成，确保最大的安全性。

## 问题排查

| 问题                | 发送平台          | 接收平台          | 解决方案                                                                                                                                |
|--------------------|--------------------|----------------------|-----------------------------------------------------------------------------------------------------------------------------------------|
| 设备不可见          | 任意              | 任意                | 确保在路由器上禁用 AP 隔离。如果启用，设备之间的连接将被禁止。                          |
| 设备不可见          | 任意              | Windows            | 确保将网络配置为“私有”网络。Windows 可能会在网络配置为公共网络时施加限制。          |
| 速度太慢           | 任意              | 任意                | 使用 5GHz 网络，并在两台设备上禁用加密。                                                                                           |
| 速度太慢           | 任意              | Android            | 已知问题。https://github.com/flutter-cavalry/saf_stream/issues/4                                                                     |


## 🗂️ 致谢与许可

YiDrop 是 LocalSend 的下游定制版本，由 lingyicute 维护。感谢 LocalSend 原作者 Tien Do Nam 和所有上游贡献者。

上游代码和下游修改均按照 [Apache-2.0](LICENSE) 授权。
