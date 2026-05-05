激活虚拟环境
激活后，当前终端的 python 和 pip 命令将自动指向该虚拟环境，所有安装操作均在隔离空间内进行。

macOS / Linux
source .venv/bin/activate
Windows（CMD / PowerShell）
.venv\Scripts\activate
激活成功后，命令行提示符通常会显示环境名称：

(.venv) $
验证激活是否生效：

# 查看 Python 路径，应指向 .venv 目录
which python       # macOS/Linux
where python       # Windows
→ /path/to/my_project/.venv/bin/python

退出虚拟环境
当完成工作后，可以退出虚拟环境：

deactivate
退出后，命令行提示符会恢复正常，Python 和 pip 命令将使用系统全局版本。

删除虚拟环境
要删除虚拟环境，只需删除对应的目录即可：

# 确保已退出环境
deactivate
删除虚拟环境
虚拟环境本质上是一个普通目录，删除目录即彻底移除：

macOS / Linux
rm -rf .venv
Windows
rmdir /s /q .venv
注意：删除前请先执行 deactivate 退出环境，否则当前 Shell 会保留失效的环境变量。