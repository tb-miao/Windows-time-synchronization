# Windows-time-synchronization , Windows 时间同步工具

<div align="center">
  <img src="./assets/icon/ico.ico" alt="Logo">
</div>

![GitHub](https://img.shields.io/github/license/tb-miao/windows-time-synchronization?style=flat-square)
![Python](https://img.shields.io/badge/Python-3.7%2B-blue?style=flat-square)

## 项目简介

Windows-time-synchronization工具是一个简单易用的时间同步脚本，能够自动获取网络标准时间并与本地系统时间进行同步，确保系统时间的准确性。



## 功能特点

- 🚀 **自动获取网络标准时间**：通过 API 获取精准的网络时间
- ⏰ **时间差异检测**：自动计算本地时间与网络时间的差异
- 🔄 **一键同步**：当时间差异较大时，可快速同步系统时间
- 🔒 **管理员权限检测**：自动检测并获取管理员权限
- 🎨 **友好的命令行界面**：包含 ASCII 艺术字和彩色输出
- ⏳ **自动超时处理**：用户无响应时自动执行同步操作

## 系统要求

- Windows 10 或更高版本

## 本地开发

1. 克隆或下载本项目到本地

2. 安装所需依赖：

``` bash
pip install -r requirements.txt
```

## 实现原理

1. **权限检测**：使用 `ctypes.windll.shell32.IsUserAnAdmin()` 检测是否具有管理员权限

2. **网络时间获取**：通过 `https://api.uuni.cn/api/time` API 获取网络时间戳

3. **时间转换**：将获取的时间戳转换为本地时区的 `datetime` 对象

4. **时间比较**：计算本地时间与网络时间的差异

5. **系统时间修改**：根据不同操作系统执行相应的时间设置命令

## 许可证

本项目采用 Apache-2.0 许可证，详见 [LICENSE](LICENSE) 文件。

## 贡献

欢迎提交 Issue 和 Pull Request 来改进此项目。
（第一次做这种项目，请大佬轻喷）

---

⭐ 如果这个项目对您有帮助，请给它一个星标，不给也行。