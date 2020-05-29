# env_script
内含第三方包及自动化部署脚本  
脚本执行顺序  
* bash res/pull_res.sh  
* bash env_integration_server.sh  

## 脚本介绍
. pull_res.sh 拉取项目所依赖的第三方包  
. env_integration_server.sh 编译第三方包并生成编译环境及运行环境  
. gen_integration_server_conf.python 生成动态库加载配置(无需自己操作)  

