# Vtuber-recorder
VTB多平台全自动录制
-----------------------------------------------------

环境依赖:ffmpeg,streamlink,biliroku-lite,livedl,youget,youtube-dl

-----------------------------------------------------
使用方法
新建一个txt文件,并放入某个vtb的所有直播平台连接和你希望保存的路径(路径请使用绝对路径),每行一个
文件夹下有示例文件

------------------------------------------------------------
启动指令

./index.sh [name] [format] [loop|once] [interval]

./index.sh txt文件名 需求的录像质量 是否循环 每次循环检查时间 

例如./index.sh yumeno_shiori best loop 150

------------------------------------------------------------

录像存储位置为脚本目录的savevideo下

------------------------------------------------------------
现版本bug
1.tc台的录制不会产生在设定目录
2.脚本无法终止,要么全关了,要么全开着
3.如果txt内没有写入目录并不会报错

------------------------------------------------------------
愿景:
1.添加菜单
2.添加iriam录制(梦里)
3.用函数重构
4.添加b站独播判断省的每天都是双倍的占用(优先度高)

------------------------------------------------------------

感谢https://github.com/printempw/live-stream-recorder 的基础脚本 
