#注释

采用 *patchrom* 方式适配的机型要得到正常运行，不可或缺地需要对除 *framework* 之外的文件进行定制修改，对于示范机型
中的定制文件注释如下：

##1.FlymeLauncher
##2.Keyguard
##3.MmsService
##4.overlay
##5.SystemUI
##6.Telecom
##7.TeleService
##8.custom_app.sh

	原因： flyme/release暂时提供的是基于android 5.0开发的apk，TelephonyProvider调用到的框架层SmsManager类的接口getAllMessagesFromIcc在android 5.0上是一个静态方法，但是在android 5.1上该接口是一个实例方法

	解决： 在Makefile配置项board_modify_apps中增加TelephonyProvider，使用custom_app.sh通过sed命令将调用的接口由getAllMessagesFromIcc替换为getAllMessagesFromIccExtended，在SmsManager类中增加扩展静态方法getAllMessagesFromIccExtended并调用实例方法getAllMessagesFromIcc从而实现android 5.0上静态方法getAllMessagesFromIcc同样的功能

##9.custom_jar.sh
     原因：
     解决：

