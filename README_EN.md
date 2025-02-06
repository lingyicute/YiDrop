# YiDrop

[![API](https://img.shields.io/badge/API-21%2B-yellow.svg?style=flat)](https://developer.android.com/about/versions/lollipop)
[![Github License](https://img.shields.io/github/license/lingyicute/YiDrop?color=%2364f573&style=flat)](https://github.com/lingyicute/YiDrop/blob/master/COPYING)
![GitHub Created At](https://img.shields.io/github/created-at/lingyicute/YiDrop)
![GitHub commit activity](https://img.shields.io/github/commit-activity/y/lingyicute/YiDrop)

**English** • [中文](README.md)

YiDrop is a free, open-source app that allows you to securely share files and messages with nearby devices over your local network without needing an internet connection.

## Screenshots

<img src="https://drop.92li.us.kg/img/yidrop.webp" alt="Screenshot" height="300"/> <img src="https://drop.92li.us.kg/img/screenshot-pc.webp" alt="PC screenshot" height="300"/>

## Download

[<img src="https://github.com/lingyicute/YiLink-Next/blob/next/images/get-it-on-github.png?raw=true" alt="Get it on GitHub" height="80">](https://github.com/lingyicute/YiDrop/releases)

**Compatibility**

| Platform | Minimum Version |
|----------|-----------------|
| Android  | 5.0             |
| Windows  | 10              |

## Setup

In most cases, YiDrop should work out of the box. However, if you are having trouble sending or receiving files, you may need to configure your firewall to allow YiDrop to communicate over your local network.

| Traffic Type | Protocol | Port  | Action |
|--------------|----------|-------|--------|
| Incoming     | TCP, UDP | 59420 | Allow  |
| Outgoing     | TCP, UDP | Any   | Allow  |

Also make sure to disable AP isolation on your router. It should be usually disabled by default but some routers may have it enabled (especially guest networks).

**Portable Mode**

Create a file named `settings.json` located in the same directory as the executable.
This file can be empty.
The app will use this file to store settings instead of the default location.

**Start hidden**

To start the app hidden (only in tray), use the `--hidden` flag.

## How It Works

YiDrop uses a secure communication protocol that allows devices to communicate with each other using a REST API. All data is sent securely over HTTPS, and the TLS/SSL certificate is generated on the fly on each device, ensuring maximum security.

## Troubleshooting

| Issue              | Platform (Sending) | Platform (Receiving) | Solution                                                                                                                                |
|--------------------|--------------------|----------------------|-----------------------------------------------------------------------------------------------------------------------------------------|
| Device not visible | Any                | Any                  | Make sure to disable AP-Isolation on your router. If it is enabled, connections between devices are forbidden.                          |
| Device not visible | Any                | Windows              | Make sure to configure your network as a "private" network. Windows might be more restrictive when the network is configured as public. |
| Speed too slow     | Any                | Any                  | Use 5 Ghz; Disable encryption on both devices                                                                                           |
| Speed too slow     | Any                | Android              | Known issue. https://github.com/flutter-cavalry/saf_stream/issues/4                                                                     |

## 🗂️ License

YiDrop Next is released under the GNU General Public License v3.0 (GPLv3).

Copyright (C) 2025 lingyicute.

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see https://www.gnu.org/licenses.
