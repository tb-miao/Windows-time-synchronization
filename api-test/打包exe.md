```bash
Nuitka-Options: Used command line options:
Nuitka-Options:   --mingw64 --standalone --onefile --remove-output main.py
Nuitka: Starting Python compilation with:
Nuitka:   Version '2.7.12' on Python 3.12 (flavor 'CPython Official') commercial grade 'not installed'.
Backend C compiler: gcc (gcc 14.2.0)
```

[NuitkaGUI](https://github.com/271374667/NuitkaGUI)

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