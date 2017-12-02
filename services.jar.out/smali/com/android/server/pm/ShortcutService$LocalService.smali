.class Lcom/android/server/pm/ShortcutService$LocalService;
.super Landroid/content/pm/ShortcutServiceInternal;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutService$LocalService$-android_content_pm_ShortcutInfo_getShortcutInfoLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_lang_String_shortcutId_int_userId_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$LocalService$-java_util_List_getShortcuts_int_launcherUserId_java_lang_String_callingPackage_long_changedSince_java_lang_String_packageName_java_util_List_shortcutIds_android_content_ComponentName_componentName_int_queryFlags_int_userId_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$LocalService$-void_getShortcutsInnerLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_util_List_shortcutIds_long_changedSince_android_content_ComponentName_componentName_int_queryFlags_int_userId_java_util_ArrayList_ret_int_cloneFlag_LambdaImpl0;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method static synthetic -com_android_server_pm_ShortcutService$LocalService_lambda$2(JLandroid/util/ArraySet;Landroid/content/ComponentName;ILandroid/content/pm/ShortcutInfo;)Z
    .locals 4
    .param p0, "changedSince"    # J
    .param p2, "ids"    # Landroid/util/ArraySet;
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "queryFlags"    # I
    .param p5, "si"    # Landroid/content/pm/ShortcutInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2317
    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v0

    cmp-long v0, v0, p0

    if-gez v0, :cond_0

    .line 2318
    return v2

    .line 2320
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2323
    :cond_1
    if-eqz p3, :cond_2

    .line 2324
    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2325
    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2329
    :cond_2
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_5

    .line 2330
    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    .line 2329
    if-eqz v0, :cond_5

    .line 2331
    return v3

    .line 2321
    :cond_3
    return v2

    .line 2326
    :cond_4
    return v2

    .line 2333
    :cond_5
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_6

    .line 2334
    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v0

    .line 2333
    if-eqz v0, :cond_6

    .line 2335
    return v3

    .line 2337
    :cond_6
    and-int/lit8 v0, p4, 0x8

    if-eqz v0, :cond_7

    .line 2338
    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v0

    .line 2337
    if-eqz v0, :cond_7

    .line 2339
    return v3

    .line 2341
    :cond_7
    return v2
.end method

.method static synthetic -com_android_server_pm_ShortcutService$LocalService_lambda$3(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)Z
    .locals 1
    .param p0, "shortcutId"    # Ljava/lang/String;
    .param p1, "si"    # Landroid/content/pm/ShortcutInfo;

    .prologue
    .line 2381
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/ShortcutService;

    .prologue
    .line 2261
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/content/pm/ShortcutServiceInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutService$LocalService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/ShortcutService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService$LocalService;-><init>(Lcom/android/server/pm/ShortcutService;)V

    return-void
.end method

.method private getShortcutInfoLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ShortcutInfo;
    .locals 7
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 2367
    const-string/jumbo v2, "packageName"

    invoke-static {p3, v2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2368
    const-string/jumbo v2, "shortcutId"

    invoke-static {p4, v2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2370
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v2, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2371
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2373
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v2, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    .line 2375
    .local v0, "p":Lcom/android/server/pm/ShortcutPackage;
    if-nez v0, :cond_0

    .line 2376
    return-object v6

    .line 2379
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2381
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    new-instance v2, Lcom/android/server/pm/ShortcutService$LocalService$-android_content_pm_ShortcutInfo_getShortcutInfoLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_lang_String_shortcutId_int_userId_LambdaImpl0;

    invoke-direct {v2, p4}, Lcom/android/server/pm/ShortcutService$LocalService$-android_content_pm_ShortcutInfo_getShortcutInfoLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_lang_String_shortcutId_int_userId_LambdaImpl0;-><init>(Ljava/lang/String;)V

    move-object v4, p2

    move v5, p1

    .line 2380
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;I)V

    .line 2383
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v6

    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    goto :goto_0
.end method

.method private getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;I)V
    .locals 13
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p5, "changedSince"    # J
    .param p7, "componentName"    # Landroid/content/ComponentName;
    .param p8, "queryFlags"    # I
    .param p9, "userId"    # I
    .param p11, "cloneFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Landroid/content/ComponentName;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2306
    .local p4, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p10, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    if-nez p4, :cond_0

    const/4 v6, 0x0

    .line 2309
    :goto_0
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v2

    .line 2311
    .local v2, "p":Lcom/android/server/pm/ShortcutPackage;
    if-nez v2, :cond_1

    .line 2312
    return-void

    .line 2307
    .end local v2    # "p":Lcom/android/server/pm/ShortcutPackage;
    :cond_0
    new-instance v6, Landroid/util/ArraySet;

    move-object/from16 v0, p4

    invoke-direct {v6, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .local v6, "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    goto :goto_0

    .line 2316
    .end local v6    # "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v2    # "p":Lcom/android/server/pm/ShortcutPackage;
    :cond_1
    new-instance v3, Lcom/android/server/pm/ShortcutService$LocalService$-void_getShortcutsInnerLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_util_List_shortcutIds_long_changedSince_android_content_ComponentName_componentName_int_queryFlags_int_userId_java_util_ArrayList_ret_int_cloneFlag_LambdaImpl0;

    move-wide/from16 v4, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/ShortcutService$LocalService$-void_getShortcutsInnerLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_util_List_shortcutIds_long_changedSince_android_content_ComponentName_componentName_int_queryFlags_int_userId_java_util_ArrayList_ret_int_cloneFlag_LambdaImpl0;-><init>(JLandroid/util/ArraySet;Landroid/content/ComponentName;I)V

    move-object v7, v2

    move-object/from16 v8, p10

    move-object v9, v3

    move/from16 v10, p11

    move-object v11, p2

    move v12, p1

    .line 2315
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/pm/ShortcutPackage;->findAll(Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;I)V

    .line 2305
    return-void
.end method


# virtual methods
.method synthetic -com_android_server_pm_ShortcutService$LocalService_lambda$1(ILjava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;ILcom/android/server/pm/ShortcutPackage;)V
    .locals 14
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "shortcutIdsF"    # Ljava/util/List;
    .param p4, "changedSince"    # J
    .param p6, "componentName"    # Landroid/content/ComponentName;
    .param p7, "queryFlags"    # I
    .param p8, "userId"    # I
    .param p9, "ret"    # Ljava/util/ArrayList;
    .param p10, "cloneFlag"    # I
    .param p11, "p"    # Lcom/android/server/pm/ShortcutPackage;

    .prologue
    .line 2294
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    .line 2293
    invoke-direct/range {v1 .. v12}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;I)V

    .line 0
    return-void
.end method

.method public addListener(Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;

    .prologue
    .line 2438
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2439
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-get1(Lcom/android/server/pm/ShortcutService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2437
    return-void

    .line 2438
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public createShortcutIntents(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[Landroid/content/Intent;
    .locals 6
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .prologue
    const/4 v5, 0x0

    .line 2414
    const-string/jumbo v1, "packageName can\'t be empty"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2415
    const-string/jumbo v1, "shortcutId can\'t be empty"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2417
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2418
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2419
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2421
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 2425
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 2428
    .local v0, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2432
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getIntents()[Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 2429
    :cond_0
    :try_start_1
    const-string/jumbo v1, "ShortcutService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Shortcut "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " does not exist or disabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 2430
    return-object v5

    .line 2417
    .end local v0    # "si":Landroid/content/pm/ShortcutInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getShortcutIconFd(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .locals 8
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .prologue
    const/4 v7, 0x0

    .line 2473
    const-string/jumbo v3, "callingPackage"

    invoke-static {p2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2474
    const-string/jumbo v3, "packageName"

    invoke-static {p3, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2475
    const-string/jumbo v3, "shortcutId"

    invoke-static {p4, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2477
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v3}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2478
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v3, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2479
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v3, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2481
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v3, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 2484
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v3, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2486
    .local v1, "p":Lcom/android/server/pm/ShortcutPackage;
    if-nez v1, :cond_0

    monitor-exit v4

    .line 2487
    return-object v7

    .line 2490
    :cond_0
    :try_start_1
    invoke-virtual {v1, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    .line 2491
    .local v2, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 2495
    :try_start_2
    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    .line 2496
    const-string/jumbo v3, "ShortcutService"

    const-string/jumbo v5, "null bitmap detected in getShortcutIconFd()"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    .line 2497
    return-object v7

    :cond_1
    monitor-exit v4

    .line 2492
    return-object v7

    .line 2500
    :cond_2
    :try_start_3
    new-instance v3, Ljava/io/File;

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2501
    const/high16 v5, 0x10000000

    .line 2499
    invoke-static {v3, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    monitor-exit v4

    return-object v3

    .line 2502
    :catch_0
    move-exception v0

    .line 2503
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    const-string/jumbo v3, "ShortcutService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Icon file not found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v4

    .line 2504
    return-object v7

    .line 2477
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "p":Lcom/android/server/pm/ShortcutPackage;
    .end local v2    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getShortcutIconResId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2446
    const-string/jumbo v3, "callingPackage"

    invoke-static {p2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2447
    const-string/jumbo v3, "packageName"

    invoke-static {p3, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2448
    const-string/jumbo v3, "shortcutId"

    invoke-static {p4, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2450
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v3}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2451
    :try_start_0
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2452
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2454
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 2457
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, p5}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2459
    .local v0, "p":Lcom/android/server/pm/ShortcutPackage;
    if-nez v0, :cond_0

    monitor-exit v3

    .line 2460
    return v2

    .line 2463
    :cond_0
    :try_start_1
    invoke-virtual {v0, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    .line 2464
    .local v1, "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2465
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    :cond_1
    monitor-exit v3

    .line 2464
    return v2

    .line 2450
    .end local v0    # "p":Lcom/android/server/pm/ShortcutPackage;
    .end local v1    # "shortcutInfo":Landroid/content/pm/ShortcutInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;II)Ljava/util/List;
    .locals 19
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "changedSince"    # J
    .param p5, "packageName"    # Ljava/lang/String;
    .param p7, "componentName"    # Landroid/content/ComponentName;
    .param p8, "queryFlags"    # I
    .param p9, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/ComponentName;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2269
    .local p6, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2272
    .local v15, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ShortcutInfo;>;"
    and-int/lit8 v5, p8, 0x4

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    .line 2273
    .local v4, "cloneKeyFieldOnly":Z
    :goto_0
    if-eqz v4, :cond_2

    const/16 v16, 0x4

    .line 2275
    .local v16, "cloneFlag":I
    :goto_1
    if-nez p5, :cond_0

    .line 2276
    const/16 p6, 0x0

    .line 2279
    .end local p6    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v5}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v17

    monitor-enter v17

    .line 2280
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move/from16 v0, p9

    invoke-virtual {v5, v0}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2281
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2283
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move-object/from16 v0, p2

    move/from16 v1, p9

    move/from16 v2, p1

    invoke-virtual {v5, v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 2286
    if-eqz p5, :cond_3

    move-object/from16 v5, p0

    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p3

    move-object/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    .line 2287
    invoke-direct/range {v5 .. v16}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    monitor-exit v17

    .line 2299
    return-object v15

    .line 2272
    .end local v4    # "cloneKeyFieldOnly":Z
    .end local v16    # "cloneFlag":I
    .restart local p6    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 2274
    .restart local v4    # "cloneKeyFieldOnly":Z
    :cond_2
    const/16 v16, 0xb

    .restart local v16    # "cloneFlag":I
    goto :goto_1

    .line 2291
    .end local p6    # "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v9, p6

    .line 2292
    .local v9, "shortcutIdsF":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move/from16 v0, p9

    invoke-virtual {v5, v0}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v18

    new-instance v5, Lcom/android/server/pm/ShortcutService$LocalService$-java_util_List_getShortcuts_int_launcherUserId_java_lang_String_callingPackage_long_changedSince_java_lang_String_packageName_java_util_List_shortcutIds_android_content_ComponentName_componentName_int_queryFlags_int_userId_LambdaImpl0;

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-wide/from16 v10, p3

    move-object/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    invoke-direct/range {v5 .. v16}, Lcom/android/server/pm/ShortcutService$LocalService$-java_util_List_getShortcuts_int_launcherUserId_java_lang_String_callingPackage_long_changedSince_java_lang_String_packageName_java_util_List_shortcutIds_android_content_ComponentName_componentName_int_queryFlags_int_userId_LambdaImpl0;-><init>(Lcom/android/server/pm/ShortcutService$LocalService;ILjava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 2279
    .end local v9    # "shortcutIdsF":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    monitor-exit v17

    throw v5
.end method

.method public hasShortcutHostPermission(ILjava/lang/String;)Z
    .locals 1
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 2512
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/pm/ShortcutService;->hasShortcutHostPermission(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isPinnedByCaller(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "shortcutId"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .prologue
    .line 2348
    const-string/jumbo v1, "packageName"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2349
    const-string/jumbo v1, "shortcutId"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2351
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2352
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2353
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2355
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 2358
    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    .line 2360
    .local v0, "si":Landroid/content/pm/ShortcutInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 2351
    .end local v0    # "si":Landroid/content/pm/ShortcutInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public pinShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .locals 3
    .param p1, "launcherUserId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2391
    .local p4, "shortcutIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v1, "packageName"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    .line 2392
    const-string/jumbo v1, "shortcutIds"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2394
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2395
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2396
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/ShortcutService;->throwIfUserLockedL(I)V

    .line 2399
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v0

    .line 2400
    .local v0, "launcher":Lcom/android/server/pm/ShortcutLauncher;
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave()V

    .line 2402
    invoke-virtual {v0, p5, p3, p4}, Lcom/android/server/pm/ShortcutLauncher;->pinShortcuts(ILjava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 2404
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p3, p5}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    .line 2406
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 2389
    return-void

    .line 2394
    .end local v0    # "launcher":Lcom/android/server/pm/ShortcutLauncher;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
