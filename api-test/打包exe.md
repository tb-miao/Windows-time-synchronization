```bash
nuitka --standalone --remove-output --output-dir="/dist" --product-name="Windows-time-synchronization" --file-version="1.0.0.1" --product-version="1.0.0.1" --file-description="Windows-time-synchronization" --copyright="tb-miao" --output-filename="Windows-time-synchronization" --windows-icon-from-ico="akquv-4xkjy-001.ico" --windows-uac-admin main.py
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