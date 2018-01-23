.class public Landroid/content/res/flymetheme/FlymeScreenOffManager;
.super Ljava/lang/Object;
.source "FlymeScreenOffManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/flymetheme/FlymeScreenOffManager$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FlymeScreenOffManager"


# instance fields
.field private mCCScreenOffIntent:Landroid/content/Intent;

.field private mContext:Landroid/content/Context;

.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mSendCCScreenOffBroadRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -wrap0(Landroid/content/res/flymetheme/FlymeScreenOffManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/res/flymetheme/FlymeScreenOffManager;->sendCCScreenOffBroadcastIfNeed()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_CUSTOMIZE_SCREEN_OFF_INTENT:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/res/flymetheme/FlymeScreenOffManager;->mCCScreenOffIntent:Landroid/content/Intent;

    .line 27
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/flymetheme/FlymeScreenOffManager;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 28
    new-instance v0, Landroid/content/res/flymetheme/FlymeScreenOffManager$1;

    invoke-direct {v0, p0}, Landroid/content/res/flymetheme/FlymeScreenOffManager$1;-><init>(Landroid/content/res/flymetheme/FlymeScreenOffManager;)V

    iput-object v0, p0, Landroid/content/res/flymetheme/FlymeScreenOffManager;->mSendCCScreenOffBroadRunnable:Ljava/lang/Runnable;

    .line 36
    iput-object p1, p0, Landroid/content/res/flymetheme/FlymeScreenOffManager;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private isNeedSendCCScreenOffBroadcast()Z
    .locals 12

    .prologue
    const/4 v6, 0x1

    const-wide/16 v10, 0x0

    const/4 v7, 0x0

    .line 54
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_2

    .line 55
    iget-object v8, p0, Landroid/content/res/flymetheme/FlymeScreenOffManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/content/res/flymetheme/FlymeThemeManager;->SEND_CC_SCREEN_OFF_BROADCAST_MIN_TIME_INTERVAL:Ljava/lang/String;

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 56
    .local v2, "minTimeInterval":J
    iget-object v8, p0, Landroid/content/res/flymetheme/FlymeScreenOffManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/content/res/flymetheme/FlymeThemeManager;->LAST_TIME_SEND_CC_SCREEN_OFF_BROADCAST:Ljava/lang/String;

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 57
    .local v0, "lastTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v0

    .line 58
    .local v4, "timeInterval":J
    cmp-long v8, v4, v2

    if-gez v8, :cond_0

    cmp-long v8, v4, v10

    if-gez v8, :cond_2

    .line 59
    :cond_0
    iget-object v8, p0, Landroid/content/res/flymetheme/FlymeScreenOffManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/content/res/flymetheme/FlymeThemeManager;->IS_NEED_SEND_CC_SCREEN_OFF_BROADCAST:Ljava/lang/String;

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_1

    :goto_0
    return v6

    :cond_1
    move v6, v7

    goto :goto_0

    .line 62
    .end local v0    # "lastTime":J
    .end local v2    # "minTimeInterval":J
    .end local v4    # "timeInterval":J
    :cond_2
    return v7
.end method

.method private sendCCScreenOffBroadcastIfNeed()V
    .locals 4

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/content/res/flymetheme/FlymeScreenOffManager;->isNeedSendCCScreenOffBroadcast()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 45
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeScreenOffManager;->mCCScreenOffIntent:Landroid/content/Intent;

    const-string/jumbo v1, "com.meizu.customizecenter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeScreenOffManager;->mCCScreenOffIntent:Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 47
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeScreenOffManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeScreenOffManager;->mCCScreenOffIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 48
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeScreenOffManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/content/res/flymetheme/FlymeThemeManager;->LAST_TIME_SEND_CC_SCREEN_OFF_BROADCAST:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 49
    const-string/jumbo v0, "FlymeScreenOffManager"

    const-string/jumbo v1, "send broadcast"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    return-void
.end method


# virtual methods
.method public registerScreenOffBroadcast()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method
