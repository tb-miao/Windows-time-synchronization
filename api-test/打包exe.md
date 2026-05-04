```bash
nuitka --standalone --onefile --remove-output --output-dir="/dist" --product-name="Windows-time-synchronization" --file-version="$version" --product-version="$version" --file-description="Windows-time-synchronization" --copyright="Nachceko" --output-filename="Windows-time-synchronization" --windows-icon-from-ico="./assets/icon/ico.ico" --windows-uac-admin main.py
```

pipreqs（仅导出项目实际使用的依赖）

步骤：

安装 pipreqs：

pip install pipreqs
复制
在项目根目录运行：

pipreqs ./ --encoding=utf8 --force
复制
如果要指定输出路径：

pipreqs /path/to/project --savepath /path/to/folder/requirements.txt --encoding=utf8 --force