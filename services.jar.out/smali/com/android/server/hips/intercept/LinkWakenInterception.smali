.class public Lcom/android/server/hips/intercept/LinkWakenInterception;
.super Lcom/android/server/hips/intercept/Interception;
.source "LinkWakenInterception.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "LinkWakenInterception"

.field private static mLinkWakenInterception:Lcom/android/server/hips/intercept/LinkWakenInterception;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/hips/intercept/LinkWakenInterception;->mLinkWakenInterception:Lcom/android/server/hips/intercept/LinkWakenInterception;

    .line 14
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/server/hips/intercept/Interception;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/hips/intercept/LinkWakenInterception;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/android/server/hips/intercept/LinkWakenInterception;->mLinkWakenInterception:Lcom/android/server/hips/intercept/LinkWakenInterception;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lcom/android/server/hips/intercept/LinkWakenInterception;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcom/android/server/hips/intercept/LinkWakenInterception;->mLinkWakenInterception:Lcom/android/server/hips/intercept/LinkWakenInterception;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/android/server/hips/intercept/LinkWakenInterception;

    invoke-direct {v0}, Lcom/android/server/hips/intercept/LinkWakenInterception;-><init>()V

    sput-object v0, Lcom/android/server/hips/intercept/LinkWakenInterception;->mLinkWakenInterception:Lcom/android/server/hips/intercept/LinkWakenInterception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 32
    :cond_1
    sget-object v0, Lcom/android/server/hips/intercept/LinkWakenInterception;->mLinkWakenInterception:Lcom/android/server/hips/intercept/LinkWakenInterception;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public isInterceptAsUsual(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 13
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "calleePkg"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "runType"    # Ljava/lang/String;

    .prologue
    .line 37
    sget-boolean v8, Landroid/os/BuildExt;->IS_CTA:Z

    if-eqz v8, :cond_0

    .line 38
    const/4 v8, 0x0

    return v8

    .line 41
    :cond_0
    if-eqz p4, :cond_6

    const-string/jumbo v8, "activity"

    move-object/from16 v0, p4

    if-ne v0, v8, :cond_6

    .line 42
    const-string/jumbo v1, ""

    .line 43
    .local v1, "calleeClass":Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 44
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 45
    .local v7, "name":Landroid/content/ComponentName;
    if-eqz v7, :cond_1

    .line 46
    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 50
    .end local v7    # "name":Landroid/content/ComponentName;
    :cond_1
    invoke-static {}, Lcom/android/server/hips/security/SecurityMargin;->getInstance()Lcom/android/server/hips/security/SecurityMargin;

    move-result-object v8

    .line 52
    const/4 v9, 0x2

    .line 50
    invoke-virtual {v8, p1, p2, v1, v9}, Lcom/android/server/hips/security/SecurityMargin;->isInSecurityMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 53
    .local v4, "isInSecurityMargin":Z
    invoke-static {p1}, Lcom/android/server/hips/utils/HipsUtils;->isSystemApp(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {p2}, Lcom/android/server/hips/utils/HipsUtils;->isSystemApp(Ljava/lang/String;)Z

    move-result v5

    .line 55
    :goto_0
    invoke-static {p1}, Lcom/android/server/hips/utils/HipsUtils;->isHasSystemSignature(Ljava/lang/String;)Z

    move-result v3

    .line 58
    .local v3, "isHasSystemSignature":Z
    if-eqz v4, :cond_2

    if-eqz v5, :cond_4

    .line 68
    :cond_2
    const-string/jumbo v8, "LinkWakenInterception"

    .line 69
    const-string/jumbo v9, "isInterceptAsUsual, the run type is activity, return false."

    .line 68
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const/4 v8, 0x0

    return v8

    .line 53
    .end local v3    # "isHasSystemSignature":Z
    :cond_3
    const/4 v5, 0x1

    .local v5, "isSystemApp":Z
    goto :goto_0

    .line 58
    .end local v5    # "isSystemApp":Z
    .restart local v3    # "isHasSystemSignature":Z
    :cond_4
    if-nez v3, :cond_2

    .line 59
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 60
    .local v2, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "app_name"

    if-nez p2, :cond_5

    const-string/jumbo p2, ""

    .end local p2    # "calleePkg":Ljava/lang/String;
    :cond_5
    invoke-interface {v2, v8, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string/jumbo v8, "interface_cover"

    invoke-static {v8, v2}, Lcom/android/server/hips/utils/HipsUtils;->saveUsageStatsData(Ljava/lang/String;Ljava/util/Map;)V

    .line 63
    const-string/jumbo v8, "LinkWakenInterception"

    .line 64
    const-string/jumbo v9, "isInterceptAsUsual, now is in security margin, return true, type: activity."

    .line 63
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v8, 0x1

    return v8

    .line 73
    .end local v1    # "calleeClass":Ljava/lang/String;
    .end local v2    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "isHasSystemSignature":Z
    .end local v4    # "isInSecurityMargin":Z
    .restart local p2    # "calleePkg":Ljava/lang/String;
    :cond_6
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 74
    const-string/jumbo v8, "LinkWakenInterception"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isInterceptAsUsual, the callerPkg("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 75
    const-string/jumbo v10, ") and calleePkg are same, return false."

    .line 74
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v8, 0x0

    return v8

    .line 79
    :cond_7
    invoke-virtual {p0, p2}, Lcom/android/server/hips/intercept/LinkWakenInterception;->isAlwaysAllow(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 80
    const/4 v8, 0x0

    return v8

    .line 83
    :cond_8
    invoke-static {}, Lcom/android/server/hips/security/SecurityMargin;->getInstance()Lcom/android/server/hips/security/SecurityMargin;

    move-result-object v8

    const-string/jumbo v9, ""

    const-string/jumbo v10, ""

    const-string/jumbo v11, ""

    .line 84
    const/4 v12, 0x0

    .line 83
    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/android/server/hips/security/SecurityMargin;->isInSecurityMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 85
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 86
    .restart local v2    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, "app_name"

    if-nez p2, :cond_9

    const-string/jumbo p2, ""

    .end local p2    # "calleePkg":Ljava/lang/String;
    :cond_9
    invoke-interface {v2, v8, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string/jumbo v8, "new_process"

    invoke-static {v8, v2}, Lcom/android/server/hips/utils/HipsUtils;->saveUsageStatsData(Ljava/lang/String;Ljava/util/Map;)V

    .line 89
    const-string/jumbo v8, "LinkWakenInterception"

    .line 90
    const-string/jumbo v9, "isInterceptAsUsual, now is in security margin, return true, type: default."

    .line 89
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v8, 0x1

    return v8

    .line 94
    .end local v2    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p2    # "calleePkg":Ljava/lang/String;
    :cond_a
    invoke-virtual {p0, p2}, Lcom/android/server/hips/intercept/LinkWakenInterception;->getInterceptionItemState(Ljava/lang/String;)I

    move-result v6

    .line 95
    .local v6, "mode":I
    const/4 v8, 0x2

    if-ne v6, v8, :cond_b

    .line 96
    const-string/jumbo v8, "LinkWakenInterception"

    .line 97
    const-string/jumbo v9, "isInterceptAsUsual, user set calleePkg as deny, return true."

    .line 96
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v8, 0x1

    return v8

    .line 101
    :cond_b
    invoke-static {p1}, Lcom/android/server/hips/utils/HipsUtils;->isSystemApp(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 102
    const-string/jumbo v8, "LinkWakenInterception"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isInterceptAsUsual, the callerPkg("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 103
    const-string/jumbo v10, ") is system app, return false."

    .line 102
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v8, 0x0

    return v8

    .line 107
    :cond_c
    invoke-static {p1}, Lcom/android/server/hips/utils/HipsUtils;->isHasSystemSignature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 108
    const-string/jumbo v8, "LinkWakenInterception"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isInterceptAsUsual, the callerPkg("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 109
    const-string/jumbo v10, ") has system signature, return false."

    .line 108
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const/4 v8, 0x0

    return v8

    .line 113
    :cond_d
    const-string/jumbo v8, "LinkWakenInterception"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isInterceptAsUsual, the mode of interception item is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 114
    const-string/jumbo v10, " calleePkg: "

    .line 113
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v8, 0x1

    if-ne v6, v8, :cond_e

    .line 116
    const-string/jumbo v8, "LinkWakenInterception"

    .line 117
    const-string/jumbo v9, "isInterceptAsUsual, user set calleePkg as allow, return false."

    .line 116
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v8, 0x0

    return v8

    .line 120
    :cond_e
    if-nez v6, :cond_f

    .line 121
    invoke-static {p2}, Lcom/android/server/hips/intercept/AutoRunInterception;->isAutoRunSwitchOn(Ljava/lang/String;)Z

    move-result v8

    .line 120
    if-eqz v8, :cond_f

    .line 122
    const-string/jumbo v8, "LinkWakenInterception"

    .line 123
    const-string/jumbo v9, "isInterceptAsUsual, the auto run switch of calleePkg is on, return false."

    .line 122
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v8, 0x0

    return v8

    .line 127
    :cond_f
    invoke-virtual {p0, p2}, Lcom/android/server/hips/intercept/LinkWakenInterception;->isAllowByWhiteListForSleep(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 128
    const-string/jumbo v8, "LinkWakenInterception"

    .line 129
    const-string/jumbo v9, "isInterceptAsUsual, the calleePkg is allowed by white list for sleep, return false."

    .line 128
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v8, 0x0

    return v8

    .line 133
    :cond_10
    const/4 v8, 0x1

    return v8
.end method
