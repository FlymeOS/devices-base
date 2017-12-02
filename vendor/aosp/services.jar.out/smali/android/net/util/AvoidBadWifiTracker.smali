.class public Landroid/net/util/AvoidBadWifiTracker;
.super Ljava/lang/Object;
.source "AvoidBadWifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/util/AvoidBadWifiTracker$-void__init__android_content_Context_ctx_android_os_Handler_handler_java_lang_Runnable_cb_LambdaImpl0;,
        Landroid/net/util/AvoidBadWifiTracker$SettingObserver;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private volatile mAvoidBadWifi:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mReevaluateRunnable:Ljava/lang/Runnable;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSettingObserver:Landroid/net/util/AvoidBadWifiTracker$SettingObserver;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/net/util/AvoidBadWifiTracker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/util/AvoidBadWifiTracker;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/net/util/AvoidBadWifiTracker;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Landroid/net/util/AvoidBadWifiTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/util/AvoidBadWifiTracker;->TAG:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/util/AvoidBadWifiTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "cb"    # Ljava/lang/Runnable;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/util/AvoidBadWifiTracker;->mAvoidBadWifi:Z

    .line 72
    iput-object p1, p0, Landroid/net/util/AvoidBadWifiTracker;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Landroid/net/util/AvoidBadWifiTracker;->mHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Landroid/net/util/AvoidBadWifiTracker$-void__init__android_content_Context_ctx_android_os_Handler_handler_java_lang_Runnable_cb_LambdaImpl0;

    invoke-direct {v0, p0, p3}, Landroid/net/util/AvoidBadWifiTracker$-void__init__android_content_Context_ctx_android_os_Handler_handler_java_lang_Runnable_cb_LambdaImpl0;-><init>(Landroid/net/util/AvoidBadWifiTracker;Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/net/util/AvoidBadWifiTracker;->mReevaluateRunnable:Ljava/lang/Runnable;

    .line 75
    const-string/jumbo v0, "network_avoid_bad_wifi"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/net/util/AvoidBadWifiTracker;->mUri:Landroid/net/Uri;

    .line 76
    iget-object v0, p0, Landroid/net/util/AvoidBadWifiTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/net/util/AvoidBadWifiTracker;->mResolver:Landroid/content/ContentResolver;

    .line 77
    new-instance v0, Landroid/net/util/AvoidBadWifiTracker$SettingObserver;

    invoke-direct {v0, p0}, Landroid/net/util/AvoidBadWifiTracker$SettingObserver;-><init>(Landroid/net/util/AvoidBadWifiTracker;)V

    iput-object v0, p0, Landroid/net/util/AvoidBadWifiTracker;->mSettingObserver:Landroid/net/util/AvoidBadWifiTracker$SettingObserver;

    .line 78
    new-instance v0, Landroid/net/util/AvoidBadWifiTracker$1;

    invoke-direct {v0, p0}, Landroid/net/util/AvoidBadWifiTracker$1;-><init>(Landroid/net/util/AvoidBadWifiTracker;)V

    iput-object v0, p0, Landroid/net/util/AvoidBadWifiTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    invoke-virtual {p0}, Landroid/net/util/AvoidBadWifiTracker;->update()Z

    .line 71
    return-void
.end method


# virtual methods
.method synthetic -android_net_util_AvoidBadWifiTracker_lambda$1(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "cb"    # Ljava/lang/Runnable;

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/net/util/AvoidBadWifiTracker;->update()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 0
    :cond_0
    return-void
.end method

.method public configRestrictsAvoidBadWifi()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 113
    iget-object v1, p0, Landroid/net/util/AvoidBadWifiTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public currentValue()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Landroid/net/util/AvoidBadWifiTracker;->mAvoidBadWifi:Z

    return v0
.end method

.method public getSettingsValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Landroid/net/util/AvoidBadWifiTracker;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "network_avoid_bad_wifi"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reevaluate()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Landroid/net/util/AvoidBadWifiTracker;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/util/AvoidBadWifiTracker;->mReevaluateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void
.end method

.method public shouldNotifyWifiUnvalidated()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0}, Landroid/net/util/AvoidBadWifiTracker;->configRestrictsAvoidBadWifi()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/net/util/AvoidBadWifiTracker;->getSettingsValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Landroid/net/util/AvoidBadWifiTracker;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/net/util/AvoidBadWifiTracker;->mSettingObserver:Landroid/net/util/AvoidBadWifiTracker$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 102
    iget-object v0, p0, Landroid/net/util/AvoidBadWifiTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/util/AvoidBadWifiTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 89
    iget-object v0, p0, Landroid/net/util/AvoidBadWifiTracker;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/net/util/AvoidBadWifiTracker;->mUri:Landroid/net/Uri;

    iget-object v2, p0, Landroid/net/util/AvoidBadWifiTracker;->mSettingObserver:Landroid/net/util/AvoidBadWifiTracker$SettingObserver;

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 91
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 92
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Landroid/net/util/AvoidBadWifiTracker;->mContext:Landroid/content/Context;

    .line 94
    iget-object v1, p0, Landroid/net/util/AvoidBadWifiTracker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    .line 93
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0}, Landroid/net/util/AvoidBadWifiTracker;->reevaluate()V

    .line 88
    return-void
.end method

.method public update()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 133
    const-string/jumbo v2, "1"

    invoke-virtual {p0}, Landroid/net/util/AvoidBadWifiTracker;->getSettingsValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 134
    .local v1, "settingAvoidBadWifi":Z
    iget-boolean v0, p0, Landroid/net/util/AvoidBadWifiTracker;->mAvoidBadWifi:Z

    .line 135
    .local v0, "prev":Z
    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/net/util/AvoidBadWifiTracker;->configRestrictsAvoidBadWifi()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    :goto_0
    iput-boolean v2, p0, Landroid/net/util/AvoidBadWifiTracker;->mAvoidBadWifi:Z

    .line 136
    iget-boolean v2, p0, Landroid/net/util/AvoidBadWifiTracker;->mAvoidBadWifi:Z

    if-eq v2, v0, :cond_1

    :goto_1
    return v3

    :cond_0
    move v2, v3

    .line 135
    goto :goto_0

    :cond_1
    move v3, v4

    .line 136
    goto :goto_1
.end method
