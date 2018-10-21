echo ">> 移动至Hexo目录"
cd /data/blog/sites/royians.cn/hexo/
echo ">> 清理数据库和public文件夹"
hexo clean
echo ">> Generate Public 文件夹"
hexo g
read -p "是否更新？（y/n）" ifup
if [ "$ifup"x = "y"x ]; then
cd
echo ">> 删除 www 目录"
rm -rf /data/blog/sites/royians.cn/www
sleep 2
echo ">> 移动 public 到 www"
mv /data/blog/sites/royians.cn/hexo/public /data/blog/sites/royians.cn/www
echo ">> UPDATE SUCCESS"
else
echo ">> UPDATE CANCELED"
fi
