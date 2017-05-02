.class Lcom/android/server/hips/intercept/LocalInterceptionRule;
.super Ljava/lang/Object;
.source "LocalInterceptionRule.java"


# instance fields
.field private mLocalRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 5
    return-void
.end method

.method private initLocalInterceptionRule()V
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 19
    const-string/jumbo v1, "runType===*|||callerPkg===*|||calleePkg===*|||calleeClass===*|||processName===*|||action===android.view.InputMethod|||data===*|||extras===*|||interception===false"

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 21
    const-string/jumbo v1, "runType===*|||callerPkg===*|||calleePkg===com.alipay.security.mobile.authenticator|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false"

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 23
    const-string/jumbo v1, "runType===*|||callerPkg===*|||calleePkg===com.google.android.gms|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false"

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 25
    const-string/jumbo v1, "runType===*|||callerPkg===*|||calleePkg===com.eg.android.AlipayGphone|||calleeClass===com.alipay.android.app.MspService|||processName===com.eg.android.AlipayGphone|||action===com.eg.android.AlipayGphone.IAlixPay|||data===*|||extras===*|||interception===false"

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 27
    const-string/jumbo v1, "runType===provider|||callerPkg===*|||calleePkg===com.tencent.mm|||calleeClass===com.tencent.mm.plugin.base.stub.MMPluginProvider|||processName===com.tencent.mm|||action===*|||data===*|||extras===uri=com.tencent.mm.sdk.plugin.provider|||interception===false"

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 29
    const-string/jumbo v1, "runType===*|||callerPkg===*|||calleePkg===com.sina.weibo|||calleeClass===com.sina.weibo.business.RemoteSSOService|||processName===com.sina.weibo|||action===*|||data===*|||extras===*|||interception===false"

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    iget-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 31
    const-string/jumbo v1, "runType===*|||callerPkg===*|||calleePkg===com.google.android.gsf|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false"

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    iget-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 33
    const-string/jumbo v1, "runType===*|||callerPkg===*|||calleePkg===com.unionpay.mobile.tsm|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false"

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 35
    const-string/jumbo v1, "runType===*|||callerPkg===*|||calleePkg===com.tencent.unipay|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false"

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 37
    const-string/jumbo v1, "runType===*|||callerPkg===*|||calleePkg===com.iflytek.vflynote|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false"

    .line 36
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 39
    const-string/jumbo v1, "runType===*|||callerPkg===*|||calleePkg===com.xiaomi.gamecenter.sdk.service|||calleeClass===*|||processName===com.xiaomi.gamecenter.sdk.service|||action===com.xiaomi.gamecenter.sdk.service|||data===*|||extras===*|||interception===false"

    .line 38
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    iget-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 41
    const-string/jumbo v1, "runType===*|||callerPkg===*|||calleePkg===com.cmcc.wallet|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false"

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 43
    const-string/jumbo v1, "runType===*|||callerPkg===com.google.android.wearable.app|||calleePkg===*|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false"

    .line 42
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 45
    const-string/jumbo v1, "runType===*|||callerPkg===com.google.android.wearable.app.cn|||calleePkg===*|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false"

    .line 44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 47
    const-string/jumbo v1, "runType===*|||callerPkg===*|||calleePkg===com.google.android.wearable.app|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false"

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 49
    const-string/jumbo v1, "runType===*|||callerPkg===*|||calleePkg===com.google.android.wearable.app.cn|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false"

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 51
    const-string/jumbo v1, "runType===*|||callerPkg===*|||calleePkg===android.view.accessibility.services|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false"

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 53
    const-string/jumbo v1, "runType===*|||callerPkg===*|||calleePkg===android.voicesettings.service|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false"

    .line 52
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 55
    const-string/jumbo v1, "runType===*|||callerPkg===*|||calleePkg===android.voiceinteraction.service|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false"

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 57
    const-string/jumbo v1, "runType===*|||callerPkg===*|||calleePkg===android.assist.service|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false"

    .line 56
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 59
    const-string/jumbo v1, "runType===*|||callerPkg===*|||calleePkg===com.google.android.marvin.talkback|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false"

    .line 58
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 61
    const-string/jumbo v1, "runType===*|||callerPkg===*|||calleePkg===com.huawei.android.hwpay|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false"

    .line 60
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 63
    const-string/jumbo v1, "runType===*|||callerPkg===*|||calleePkg===com.cmcc.swpplugin|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false"

    .line 62
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 65
    const-string/jumbo v1, "runType===*|||callerPkg===*|||calleePkg===com.iflytek.speechcloud|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false"

    .line 64
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 67
    const-string/jumbo v1, "runType===*|||callerPkg===com.google.android.marvin.talkback|||calleePkg===*|||calleeClass===*|||processName===*|||action===*|||data===*|||extras===*|||interception===false"

    .line 66
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 69
    const-string/jumbo v1, "runType===broadcast|||callerPkg===*|||calleePkg===*|||calleeClass===*|||procesName===*|||action===android.provider.Telephony.SMS_DELIVER|||data===*|||extras===*|||interception===false"

    .line 68
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    .line 71
    const-string/jumbo v1, "runType===broadcast|||callerPkg===*|||calleePkg===*|||calleeClass===*|||processName===*|||action===android.intent.action.MEDIA_BUTTON|||data===*|||extras===*|||interception===false"

    .line 70
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
.end method


# virtual methods
.method getData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 10
    iget-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 11
    invoke-direct {p0}, Lcom/android/server/hips/intercept/LocalInterceptionRule;->initLocalInterceptionRule()V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/server/hips/intercept/LocalInterceptionRule;->mLocalRules:Ljava/util/ArrayList;

    return-object v0
.end method
