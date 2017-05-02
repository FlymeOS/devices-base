.class public Lcom/android/server/hips/intercept/AutoRunInterception;
.super Lcom/android/server/hips/intercept/Interception;
.source "AutoRunInterception.java"


# static fields
.field private static final AUTO_RUN_VERSION:I = 0x1

.field private static final CURRENT_LIST_NAME:Ljava/lang/String; = "current_auto_run_white_list"

.field private static final LIST_NAME:Ljava/lang/String; = "auto_run_white_list"

.field private static final STORAGE_PATH:Ljava/lang/String; = "/data/system"

.field public static final TAG:Ljava/lang/String; = "AutoRunInterception"

.field private static mAutoRunInterception:Lcom/android/server/hips/intercept/AutoRunInterception;

.field private static mAutoRunTimeStamp:J

.field private static mAutoRunWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mWhiteActionList:Ljava/util/ArrayList;
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
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/hips/intercept/AutoRunInterception;->mWhiteActionList:Ljava/util/ArrayList;

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/hips/intercept/AutoRunInterception;->mAutoRunWhiteList:Ljava/util/ArrayList;

    .line 27
    sput-object v2, Lcom/android/server/hips/intercept/AutoRunInterception;->mAutoRunInterception:Lcom/android/server/hips/intercept/AutoRunInterception;

    .line 30
    sget-object v1, Lcom/android/server/hips/intercept/AutoRunInterception;->mWhiteActionList:Ljava/util/ArrayList;

    const-string/jumbo v2, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v1, Lcom/android/server/hips/intercept/AutoRunInterception;->mWhiteActionList:Ljava/util/ArrayList;

    const-string/jumbo v2, "android.appwidget.action.APPWIDGET_BIND"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v1, Lcom/android/server/hips/intercept/AutoRunInterception;->mWhiteActionList:Ljava/util/ArrayList;

    const-string/jumbo v2, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v1, Lcom/android/server/hips/intercept/AutoRunInterception;->mWhiteActionList:Ljava/util/ArrayList;

    const-string/jumbo v2, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v1, Lcom/android/server/hips/intercept/AutoRunInterception;->mWhiteActionList:Ljava/util/ArrayList;

    const-string/jumbo v2, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v1, Lcom/android/server/hips/intercept/AutoRunInterception;->mWhiteActionList:Ljava/util/ArrayList;

    const-string/jumbo v2, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v1, Lcom/android/server/hips/intercept/AutoRunInterception;->mWhiteActionList:Ljava/util/ArrayList;

    const-string/jumbo v2, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v1, Lcom/android/server/hips/intercept/AutoRunInterception;->mWhiteActionList:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.insdio.aqicn.airwidget.intent.action.CLICK"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    const-string/jumbo v1, "/data/system/auto_run_white_list"

    invoke-static {v1}, Lcom/android/server/hips/utils/HipsUtils;->readInfoFromFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 41
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 42
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/hips/intercept/AutoRunInterception;->setAutoRunWhiteList(Ljava/util/ArrayList;Z)I

    .line 12
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/server/hips/intercept/Interception;-><init>()V

    return-void
.end method

.method public static getAutoRunVersion()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    return v0
.end method

.method public static getAutoRunWhiteListTimeStamp()J
    .locals 2

    .prologue
    .line 62
    sget-wide v0, Lcom/android/server/hips/intercept/AutoRunInterception;->mAutoRunTimeStamp:J

    return-wide v0
.end method

.method public static getInstance()Lcom/android/server/hips/intercept/AutoRunInterception;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/android/server/hips/intercept/AutoRunInterception;->mAutoRunInterception:Lcom/android/server/hips/intercept/AutoRunInterception;

    if-nez v0, :cond_1

    .line 51
    const-class v1, Lcom/android/server/hips/intercept/AutoRunInterception;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lcom/android/server/hips/intercept/AutoRunInterception;->mAutoRunInterception:Lcom/android/server/hips/intercept/AutoRunInterception;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/android/server/hips/intercept/AutoRunInterception;

    invoke-direct {v0}, Lcom/android/server/hips/intercept/AutoRunInterception;-><init>()V

    sput-object v0, Lcom/android/server/hips/intercept/AutoRunInterception;->mAutoRunInterception:Lcom/android/server/hips/intercept/AutoRunInterception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 58
    :cond_1
    sget-object v0, Lcom/android/server/hips/intercept/AutoRunInterception;->mAutoRunInterception:Lcom/android/server/hips/intercept/AutoRunInterception;

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isAutoRunSwitchOn(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 200
    sget-object v0, Lcom/android/server/hips/intercept/AutoRunInterception;->mAutoRunWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x1

    return v0

    .line 204
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setAutoRunWhiteList(Ljava/util/ArrayList;Z)I
    .locals 10
    .param p1, "fromStorage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 72
    :cond_0
    const-string/jumbo v7, "AutoRunInterception"

    .line 73
    const-string/jumbo v8, "setAutoRunWhiteList, the list is null or empty, return -1."

    .line 72
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const/4 v7, -0x1

    return v7

    .line 77
    :cond_1
    const-string/jumbo v6, ""

    .line 78
    .local v6, "usefulWhiteList":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 79
    .local v1, "currentWhiteList":Ljava/lang/String;
    const/4 v5, 0x0

    .line 80
    .local v5, "usefulCount":I
    const/4 v0, 0x0

    .line 81
    .local v0, "currentCount":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v4, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "pkgName$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 84
    .local v2, "pkgName":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_4

    .line 85
    :cond_3
    const-string/jumbo v7, "AutoRunInterception"

    .line 86
    const-string/jumbo v8, "setAutoRunWhiteList, the pkgName is null or empty, continue."

    .line 85
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "###"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 91
    add-int/lit8 v5, v5, 0x1

    .line 93
    invoke-static {v2}, Lcom/android/server/hips/utils/HipsUtils;->isPkgInstalled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 97
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "###"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_5
    sget-object v7, Lcom/android/server/hips/intercept/AutoRunInterception;->mAutoRunWhiteList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 104
    :try_start_0
    sput-object v4, Lcom/android/server/hips/intercept/AutoRunInterception;->mAutoRunWhiteList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    .line 107
    const-string/jumbo v7, "AutoRunInterception"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setAutoRunWhiteList, set list successfully, currentCount: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 108
    const-string/jumbo v9, " usefulCount: "

    .line 107
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    if-nez p1, :cond_6

    if-eqz v6, :cond_6

    .line 111
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_6

    .line 112
    const-string/jumbo v7, "/data/system/auto_run_white_list"

    invoke-static {v6, v7}, Lcom/android/server/hips/utils/HipsUtils;->saveInfoToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7

    .line 117
    const-string/jumbo v7, "/data/system/current_auto_run_white_list"

    invoke-static {v1, v7}, Lcom/android/server/hips/utils/HipsUtils;->saveInfoToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_7
    return v5

    .line 103
    :catchall_0
    move-exception v8

    monitor-exit v7

    throw v8
.end method

.method public static setAutoRunWhiteListTimeStamp(J)V
    .locals 0
    .param p0, "timeStamp"    # J

    .prologue
    .line 66
    sput-wide p0, Lcom/android/server/hips/intercept/AutoRunInterception;->mAutoRunTimeStamp:J

    .line 65
    return-void
.end method

.method public static updateAutoRunWhiteList(Ljava/lang/String;Z)V
    .locals 4
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "isReadAllList"    # Z

    .prologue
    .line 130
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 131
    :cond_0
    const-string/jumbo v1, "AutoRunInterception"

    .line 132
    const-string/jumbo v2, "updateAutoRunWhiteList, the pkgName is null or empty, return."

    .line 131
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void

    .line 136
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v0, "whiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_3

    .line 139
    const-string/jumbo v1, "/data/system/auto_run_white_list"

    invoke-static {v1}, Lcom/android/server/hips/utils/HipsUtils;->readInfoFromFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 146
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 147
    :cond_2
    const-string/jumbo v1, "AutoRunInterception"

    .line 148
    const-string/jumbo v2, "updateAutoRunWhiteList, the whiteList is null or empty, return."

    .line 147
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void

    .line 142
    :cond_3
    const-string/jumbo v1, "/data/system/current_auto_run_white_list"

    invoke-static {v1}, Lcom/android/server/hips/utils/HipsUtils;->readInfoFromFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_4
    const-string/jumbo v1, "AutoRunInterception"

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAutoRunWhiteList, begin to update the auto run white list, pkgName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 154
    const-string/jumbo v3, " isReadAllList: "

    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 156
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/hips/intercept/AutoRunInterception;->setAutoRunWhiteList(Ljava/util/ArrayList;Z)I

    .line 129
    :cond_5
    return-void
.end method


# virtual methods
.method public isInterceptAsUsual(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 7
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "calleePkg"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "runType"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 162
    invoke-virtual {p0, p2}, Lcom/android/server/hips/intercept/AutoRunInterception;->isAlwaysAllow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    return v5

    .line 166
    :cond_0
    invoke-static {}, Lcom/android/server/hips/security/SecurityMargin;->getInstance()Lcom/android/server/hips/security/SecurityMargin;

    move-result-object v1

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/hips/security/SecurityMargin;->isInSecurityMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    const-string/jumbo v1, "AutoRunInterception"

    .line 169
    const-string/jumbo v2, "isInterceptAsUsual, now is in security margin, return true, type: default."

    .line 168
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return v6

    .line 173
    :cond_1
    if-eqz p4, :cond_2

    const-string/jumbo v1, "broadcast"

    if-ne p4, v1, :cond_2

    .line 174
    if-eqz p3, :cond_2

    sget-object v1, Lcom/android/server/hips/intercept/AutoRunInterception;->mWhiteActionList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 175
    const-string/jumbo v1, "AutoRunInterception"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isInterceptAsUsual, the Action(calleePkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 176
    const-string/jumbo v3, "): "

    .line 175
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 176
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 177
    const-string/jumbo v3, " is in mWhiteActionList, return false."

    .line 175
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return v5

    .line 182
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/server/hips/intercept/AutoRunInterception;->getInterceptionItemState(Ljava/lang/String;)I

    move-result v0

    .line 183
    .local v0, "mode":I
    const-string/jumbo v1, "AutoRunInterception"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isInterceptAsUsual, the mode of interception item is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 184
    const-string/jumbo v3, " calleePkg: "

    .line 183
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    if-ne v0, v6, :cond_3

    .line 186
    const-string/jumbo v1, "AutoRunInterception"

    .line 187
    const-string/jumbo v2, "isInterceptAsUsual, user set calleePkg as allow, return false."

    .line 186
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return v5

    .line 190
    :cond_3
    if-nez v0, :cond_4

    invoke-static {p2}, Lcom/android/server/hips/intercept/AutoRunInterception;->isAutoRunSwitchOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 191
    const-string/jumbo v1, "AutoRunInterception"

    .line 192
    const-string/jumbo v2, "isInterceptAsUsual, the auto run switch of calleePkg is on, return false."

    .line 191
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return v5

    .line 196
    :cond_4
    return v6
.end method
