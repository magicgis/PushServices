:: "::符号开头的行为注释信息"
:: 简单的批处理命令，这个命令即是执行java应用程序
:: 1. 查看当前bat文件目录下是否包含cloudservices-client-V1.0.jar文件
:: 2. 参数说明，此java程序包含4个参数
::		1 -- 表示采用的连接方式1表示短连接Http，2表示长连接Mqtt，3表示默认长短连接相结合
::		2 -- 客户端用户名
::    3 -- 此客户端发送消息的目标客户端的用户名；
::				 		如果需要发送给多个用户可以使用','分隔，例：toHttp_1,toHttp2（注：中间不能有空格）
::						如果不需要发送消息，则输入null
::		4 -- 发送消息的时间间隔，单位为秒
java -jar cloudservices-client-V1.0.jar 2 mqtt_main http_1,mqtt_1,http_2,mqtt_2 1
