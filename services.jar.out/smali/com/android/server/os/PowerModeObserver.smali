.class Lcom/android/server/os/PowerModeObserver;
.super Landroid/database/ContentObserver;
.source "PowerModeObserver.java"


# static fields
.field public static final BOOST_INFO_CONFIG_NAME:Ljava/lang/String; = "boost_info_configration"

.field public static final BOOST_POWER_MODE_BENCHMARK:Ljava/lang/String; = "PowerModeBench"

.field public static final BOOST_POWER_MODE_HIGH:Ljava/lang/String; = "PowerModeHigh"

.field public static final BOOST_POWER_MODE_LOW:Ljava/lang/String; = "PowerModeLow"

.field public static final BOOST_POWER_MODE_NORMAL:Ljava/lang/String; = "PowerModeNormal"

.field public static final H_CONFIG_SCENE_BOOST:I = 0x1

.field static final POWER_MODE_BENCHMARK:I = 0x3

.field static final POWER_MODE_HIGH:I = 0x0

.field static final POWER_MODE_LOW:I = 0x2

.field static final POWER_MODE_NORMAL:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 37
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 38
    iput-object p1, p0, Lcom/android/server/os/PowerModeObserver;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/android/server/os/PowerModeObserver;->mHandler:Landroid/os/Handler;

    .line 36
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/os/PowerModeObserver;->onChange(ZLandroid/net/Uri;)V

    .line 43
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x1

    .line 49
    iget-object v3, p0, Lcom/android/server/os/PowerModeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 50
    const-string/jumbo v4, "cpu_l"

    .line 49
    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 51
    .local v2, "powerMode":I
    iget-object v3, p0, Lcom/android/server/os/PowerModeObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 52
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v0, "data":Landroid/os/Bundle;
    packed-switch v2, :pswitch_data_0

    .line 67
    const-string/jumbo v3, "boost_info_configration"

    const-string/jumbo v4, "PowerModeNormal"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_0
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 71
    iget-object v3, p0, Lcom/android/server/os/PowerModeObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 48
    return-void

    .line 55
    :pswitch_0
    const-string/jumbo v3, "boost_info_configration"

    const-string/jumbo v4, "PowerModeHigh"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :pswitch_1
    const-string/jumbo v3, "boost_info_configration"

    const-string/jumbo v4, "PowerModeNormal"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :pswitch_2
    const-string/jumbo v3, "boost_info_configration"

    const-string/jumbo v4, "PowerModeLow"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :pswitch_3
    const-string/jumbo v3, "boost_info_configration"

    const-string/jumbo v4, "PowerModeBench"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
