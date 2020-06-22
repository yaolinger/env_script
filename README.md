# env_script
内含第三方包及自动化部署脚本  
脚本执行顺序  
* bash res/pull_res.sh  
* cp env_integration.config.example env_integration.config 并修改所需参数  
* bash env_integration_server.sh  

## 脚本介绍
1. res/pull_res.sh 拉取项目所依赖的第三方包  
2. env_integration.config.example脚本参数模板示例  
3. env_integration_server.sh 编译第三方包并生成编译环境及运行环境  
4. gen_integration_server_conf.python 生成动态库加载配置(无需自己操作)  
5. copy_script.sh 拷贝第三方脚本至工作目录  
