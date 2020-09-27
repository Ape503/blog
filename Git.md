# Github的配置
## 空仓库的创建
    随便取一个名字，最好容易辨别的以免仓库混淆其他的都不需要勾选全部保持默认
    之后就需要根据操作复制命令
    echo "# blog" >> README.md-----创建一个内容为“blog”名为README.md的文件
    git init   -----初始化本地仓库
    git add README.md  -----将README.md 添加到git仓库中
    git commit -m "first commit"-----更改记录提交到本地暂存区并以first commit命名
    git remote add origin https://github.com/Ape503/blog.git -----关联远端仓库
    git push -u origin master    -----将更改的本地仓库origin推送到远端仓库
出错也不要紧，删除重来或者也可能是因为没有设置SSH密钥也会报错所以要设置ssh密钥。
## SSH密钥的设置
    找到SSH and GPG keys选项设置新的密钥如果没有设置过的请看下面的密钥设置指南将生成的密钥复制进去
    刷新gitHub仓库页面就会看见下图的页面。这就表示gitHub已经配置成功了
# Git配置
依次填入如下命令
    git config --global user.name "Ape503"   -----指定用户名
    git config --global user.email "3238827607@qq.com"-----指定电子邮件
    git config --global push.default matching-----当git push但未指定任何分支时将自动匹配本地所有分支到远端仓库
    git config --global core.quotepath false -----显示status编码
    git config --global core.editor "vim"    -----设置编辑器为Vim
    ![仓库配置](https://github.com/Ape503/blog/blob/master/IMG/Git/2.jpg)
    ![密钥创建](https://github.com/Ape503/blog/blob/master/IMG/Git/3.jpg)
    ![密钥创建](https://github.com/Ape503/blog/blob/master/IMG/Git/4.jpg)
    ![密钥创建](https://github.com/Ape503/blog/blob/master/IMG/Git/5.jpg)
    ![密钥创建](https://github.com/Ape503/blog/blob/master/IMG/Git/6.jpg)
    ![密钥创建](https://github.com/Ape503/blog/blob/master/IMG/Git/7.jpg)
# Git使用
    本地使用   
    将本地仓库上传到 GitHub
    下载 GitHub 上的仓库
## git命令 
    git init---本地仓库初始化  git status -sb---查看文件状态 git add xxx---将当前文件加入暂存区  git commit xxx -m 'xxx'---将add过的文件提交到本地仓库
    git log---日志变动  git clone git@github.com:xxxx---下载远端仓库到本地
    ![创建仓库](https://github.com/Ape503/blog/blob/master/IMG/Git/1.jpg)
