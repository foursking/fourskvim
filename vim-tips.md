# Tips

01.  `:h` for help **The Best Tip**
02.  `ctrl+]` jump and `ctrl+o` jump back
03.  `q:` in command edit mode. You can edit the command like nomal mode , it is useful especially for long command. Just TRY :)
04.  cursor on a world  `#` for forword lookup `*` for reverse lookup
05.  `:%s/option//gn` 统计全文中出现多少个option `%`表示全部,如果不想全文的话,比如m,n行 `:m,ns/option//gn` 就能统计了
06.  `di(` ; `di{` ; `di"` ; `di'` 系列删除命令 区块删除 ,`di(` 删除的是括号里面的东西 括号本身不被删除， `da(`把括号一起删除了。 类似的`da{` 删除{}中全部内容 包括{}， d可以换为v,y来分别选定和复制
07.  `:TOhtml` 将vim语法高亮文件保存为html
08.  经常打错字怎么办 class经常输成calss :(  试试ab calss class 看到没有,妈妈再也不用担心我打错字了 :)
09.  查看当前时间 `echo strftime("%Y-%m-%d %H:%M:%S")` or `strftime("%c")` 作为php程序员别忘记了`date("Y-m-d H:i:s")`
10. `:sav! %<.bak` 换一个后缀保存
11. `:echo g:mapleader`
12. 块操作  `CTRL-A` 模式选中 s(修改) 保存 `<ESC>` 可以 `:h ctrl-v` 查看更多
14. 打开长行文件的时候速度慢 map j gj  & map k gk , :syntax=off
15.
