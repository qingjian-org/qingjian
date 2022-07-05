# Git使用

1. Clone仓库代码

   ```
   git clone git@github.com:ZhuKerui/qingjian.git
   ```

   通过这个指令可以下载远程仓库代码并**保留版本管理**（不要用download zip）

2. 添加修改

   本地修改了文件之后，要将需要保存的修改记录下来

   ```
   git add <文件名>
   ```

   比如修改了a.txt文件，那就写

   ```
   git add a.txt
   ```

   如果修改了a.txt和b.txt文件，可以写

   ```
   git add a.txt b.txt
   ```

3. 本地保存修改

   添加修改后，修改并不会被立刻保存，还需要commit

   ```
   git commit -m "some comments"
   ```

   这一步之后，之前被添加的修改才会被git本地保存

4. 获取远程更新

   假设别人也修改了代码并更新了远程仓库，你本地代码并不会自动更新，需要使用

   ```
   git pull
   ```

   来获取远程更新的代码。建议每次开始写代码之前都先git pull一次，确保自己是基于最新的代码来写新代码。git pull之前确保你本地想保存的更改已经被commit（步骤3），否则你的修改可能会被覆盖。

5. 提交本地更新

   将本地保存的修改上传到远程仓库

   ```
   git push
   ```

   必须在git push之前使用git pull以确保本地代码已经获得远程仓库的所有更新，否则git push会被拒绝。