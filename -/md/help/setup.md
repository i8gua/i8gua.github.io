# 八卦博客 · 安装部署
## 如何安装

1.  安装 npm
2.  npm install 8gua
3.  创建并克隆页面仓库（比如： [码云页面](http://git.mydoc.io/?t=154714) 、[GITHUB PAGE](https://pages.github.com/) 、[BITBUCKET PAGE](https://pages.bitbucket.io/) ）。
4.  到仓库目录下执行 8gua

## 部署到私有服务器

既然是静态博客，自然可以随处部署。

比如，nginx配置文件请参考 [这里](https://gitee.com/u8gua/tool/blob/master/nginx.8gua.conf) 。

其中用到的https免费证书，可使用 [acme.sh](https://github.com/Neilpang/acme.sh/wiki/%E8%AF%B4%E6%98%8E) 来自动生成。