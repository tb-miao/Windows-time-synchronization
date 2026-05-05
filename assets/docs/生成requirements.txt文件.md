# 生成 requirements.txt 文件
## pipreqs（仅导出项目实际使用的依赖）

### 步骤：

1. 安装 pipreqs：
```bash
pip install pipreqs
```
2. 在项目根目录运行：
```bash
pipreqs ./requirements.txt --encoding=utf8 --force
```
### 报错
```bash
INFO: Not scanning for jupyter notebooks.
<unknown>:165: SyntaxWarning: invalid escape sequence '\S'
<unknown>:166: SyntaxWarning: invalid escape sequence '\['
<unknown>:207: SyntaxWarning: invalid escape sequence '\['
<unknown>:456: SyntaxWarning: invalid escape sequence '\S'
<unknown>:37: SyntaxWarning: invalid escape sequence '\Z'
<unknown>:68: SyntaxWarning: invalid escape sequence '\A'
<unknown>:662: SyntaxWarning: invalid escape sequence '\('
<unknown>:663: SyntaxWarning: invalid escape sequence '\)'
<unknown>:1349: SyntaxWarning: invalid escape sequence '\]'
<unknown>:1352: SyntaxWarning: invalid escape sequence '\]'
<unknown>:1354: SyntaxWarning: invalid escape sequence '\]'
<unknown>:1357: SyntaxWarning: invalid escape sequence '\]'
<unknown>:1541: SyntaxWarning: invalid escape sequence '\ '
<unknown>:1876: SyntaxWarning: invalid escape sequence '\ '
<unknown>:31: SyntaxWarning: invalid escape sequence '\s'
<unknown>:79: SyntaxWarning: invalid escape sequence '\s'
<unknown>:1: SyntaxWarning: invalid escape sequence '\_'
<unknown>:212: SyntaxWarning: invalid escape sequence '\d'
<unknown>:293: SyntaxWarning: invalid escape sequence '\d'
<unknown>:429: SyntaxWarning: invalid escape sequence '\s'
<unknown>:1945: SyntaxWarning: invalid escape sequence '\d'
<unknown>:957: SyntaxWarning: invalid escape sequence '\?'
Traceback (most recent call last):
  File "<frozen runpy>", line 198, in _run_module_as_main
  File "<frozen runpy>", line 88, in _run_code
  File "D:\Code\Python\flask-api\.venv\Scripts\pipreqs.exe\__main__.py", line 7, in <module>
  File "D:\Code\Python\flask-api\.venv\Lib\site-packages\pipreqs\pipreqs.py", line 609, in main
    init(args)
  File "D:\Code\Python\flask-api\.venv\Lib\site-packages\pipreqs\pipreqs.py", line 533, in init
    candidates = get_all_imports(
                 ^^^^^^^^^^^^^^^^
  File "D:\Code\Python\flask-api\.venv\Lib\site-packages\pipreqs\pipreqs.py", line 136, in get_all_imports
    contents = read_file_content(file_name, encoding)
               ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "D:\Code\Python\flask-api\.venv\Lib\site-packages\pipreqs\pipreqs.py", line 181, in read_file_content
    contents = f.read()
               ^^^^^^^^
  File "<frozen codecs>", line 322, in decode
UnicodeDecodeError: 'utf-8' codec can't decode byte 0xb1 in position 81: invalid start byte
```
> 解决方法：
虚拟环境依赖问题忽略.venv：执行成功
```bash
pipreqs --ignore .venv --force
```
