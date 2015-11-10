#devices/base_lollipop-5.1

*android-5.1.1* 基础机型，是所有 *android-5.1.1* 机型“插桩”的基础。

*Base device for Android 5.1.1, as a basis for all the other Android 5.1.1 devices.*

目前的 *patch* 适用于 *Flyme 4.5*， 和 *Android 5.0.2* 共用 *Flyme 4.5* 的 *Apk* 和其他文件，待 *Flyme 5* 开放适配后，会升级至 *Flyme 5* 的patch

********

##base_lollipop-5.1使用方法：

###1.	下载

为了减少 *repo* 库的体积， *base_lollipop-5.1* 暂时没有放在 *repo* 的默认下载列表里，待 *Flyme 5* 开放适配

后会新建 *lollipop-5.1* 的 *repo* 库，则可以直接下载 *lollipop-5.1* 分支的 *repo* 库

因此下载 *base_lollipop-5.1* 推荐使用 *git clone* 下载，第一次下载时先 *cd* 到 *devices* 目录，然后输入：

	git clone https://github.com/FlymeOS/devices-base.git --single-branch -b lollipop-5.1

当然也可以自行修改 *mainfest/default.xml* 将 *base_lollipop-5.1* 放在 *repo* 的下载列表里

为了解决中国的开发者访问 *<https://github.com/FlymeOS>* 过于缓慢的问题，增加了本项目的中国镜像地址： *<http://git.oschina.net/FlymeOS>*

因此，中国的开发者可以使用下面的命令下载代码：

	git clone https://git.oschina.net/FlymeOS/devices-base.git --single-branch -b lollipop-5.1

下载完成后建议对其重命名,  *cd* 到 *devices* 目录，输入：

	mv ./devices-base ./base_lollipop-5.1

即将其重命名为 *base_lollipop-5.1*，以后 *base_lollipop-5.1* 的更新则只需要 *cd* 到 *devices/base_lollipop-5.1* 目录，输入如下命令：

	git pull origin lollipop-5.1

即可下载 *base_lollipop-5.1* 的更新，如果不使用 *git clone* 下载，则需要每次下载整个zip包进行覆盖，较为不便。

###2.	使用

正确下载后，与使用默认方式来 *patch*（即使用 *base* 来 *patch* ）的各项操作相同，只需要额外进行一项配置即可。

要使用指定 *base*（如 *base_lollipop-5.1* ）的 *patch* 来进行插桩，需要在你的机型目录下的 *Makefile* 文件中进行配置，配置项为：

	BASE :=

在 *base* 及 *base_lollipop-5.1* 目录下的 *Makefile* 文件中均有示例说明，按照说明正确配置即可。

例如，下载后的目录你命名为 *base_lollipop-5.1*，配置示例如下：

	BASE :=base_lollipop-5.1

配置完成后，即可分别使用 *make patchall* 和 *make upgrade* 来进行首次插桩和更新。

**需要特别注意的是：**

*base_lollipop-5.1* 的正确运行可能需要对部分 *apk* 或者资源文件进行定制，但是需要定制的文件改动目前并没有被包含

在 *patchall* 及 *upgrade* 中，因此，你需要查看 *base_lollipop-5.1* 下对 *apk* 或者资源文件进行定制的文件以

及其相应的配置信息，将配置文件和配置信息一并写在你的机型目录中。

	例如：不同的厂商会对ITelephony.aidl这个binder文件中的接口进行修改或者扩展，因此需要对这个binder接口的实现部

    分进行定制修改，它的实现部分通常位于TeleService.apk中的PhoneInterfaceManager文件中。由于

    base_lollipop-5.1已经对TeleService.apk进行了定制，因此需要自行将TeleService目录

    拷贝到你的机型目录中，并且在Makefile文件中给予相应的配置。

对 *base_lollipop-5.1* 中已经定制的其他 *apk* 或者资源文件可以采用类似的操作，若要详细了解对 *apk* 或者资源文件进行定制的方法请参考相关文档。