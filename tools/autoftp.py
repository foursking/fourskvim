#! /usr/bin/env python
#coding:utf-8
import os.path
import string
from ftplib import FTP
import sys
# conf=[' / Users / jack / web / ','Web / ','xx.xx.xx.xx','user','pwd']
conf = ['/Users/mac/Kingnet/workspacenew/branches/',
        '/tmp/', '192.168.78.22', 'kingnet', 'Em.SWYXlzxn0Q']


def main(argv):
    ftp = FTP()
    ftp.connect('192.168.78.22', 21, 10)  # 连接FTP服务器
    ftp.login('kingnet', '3BE5EF429769ACBB7B9BB73443EA9FEE')  # 登录
    if os.path.isdir(argv[0]):
        commitDir(argv[0], conf, ftp)
    else:
        commitFile(argv[0], conf, ftp)
    ftp.quit()


def commitFile(path, conf, ftp):
    # 获得目录,比如从/Users/jack/web/pixg/a.php中获得pixg
    dir = os.path.dirname(path)
    dir = string.lstrip(dir, conf[0])
    # 获得远程目录路径
    dir = conf[1] + dir  # Web/pixg
    # 获得文件名
    filename = string.replace(path, os.path.dirname(path) + "/", "")
    print path
    print filename
    checkDir(dir, ftp)
    ftp.storbinary('STOR ' + './' + filename, open(path, 'rb'))
    print path + " 上传成功!"


def commitDir(path, conf, ftp):
    # 获得目录,比如从/Users/jack/web/pixg/中获得pixg
    # 目录路径最后必须得是/结尾
    dir = os.path.dirname(path)
    dir = string.lstrip(dir, conf[0])
    # 获得远程目录路径
    remotedir = conf[1] + dir  # Web/pixg
    checkDir(remotedir, ftp)
    commitR(path, conf, ftp)
    #ftp.dir()


def commitR(path, conf, ftp):
    files = os.listdir(path)
    for f in files:
        if os.path.isdir(path + f + "/"):
            # 检查目录是否存在
            filelist = ftp.nlst()
            isin = 0
            for file in filelist:
                if(file == f):
                    isin = 1
                    break
            if isin == 1:
                ftp.cwd(f)
            else:
                ftp.mkd(f)
                ftp.cwd(f)
            # 递归调用
            commitR(path + f + "/", conf, ftp)
        else:
            ftp.storbinary('STOR ' + f, open(path + f, 'rb'))
            print path + f + " 上传成功!"
    ftp.cwd("../")
# 检查目录不存在就创建


def checkDir(remotedir, ftp):
    dirs = string.split(remotedir, "/")  # ['Web','pixg']
    # 检查目录是否存在
    # 循环每一层dirs里的本地目录和远程目录对比
    for vdir in dirs:

        if vdir.strip() == '':
            continue

        # 检查目录是否存在
        filelist = ftp.nlst()
        isin = 0
        for file in filelist:
            if(file == vdir):
                isin = 1
                break
        if isin == 1:
            ftp.cwd(vdir)
        else:
            ftp.mkd(vdir)
            ftp.cwd(vdir)
main(sys.argv[1:])
