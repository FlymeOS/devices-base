.class public Lcom/android/internal/app/IntentForwarderActivity;
.super Landroid/app/Activity;
.source "IntentForwarderActivity.java"


# static fields
.field public static FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

.field public static FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string/jumbo v0, "IntentForwarderActivity"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    .line 49
    const-string/jumbo v0, "com.android.internal.app.ForwardIntentToParent"

    .line 48
    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "com.android.internal.app.ForwardIntentToManagedProfile"

    .line 51
    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private getManagedProfile()I
    .locals 7

    .prologue
    .line 177
    const-string/jumbo v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 178
    .local v3, "userManager":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 179
    .local v0, "relatedUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "userInfo$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 180
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    return v4

    .line 182
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_1
    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 183
    const-string/jumbo v6, " has been called, but there is no managed profile"

    .line 182
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const/16 v4, -0x2710

    return v4
.end method

.method private getProfileParent()I
    .locals 5

    .prologue
    .line 192
    const-string/jumbo v2, "user"

    invoke-virtual {p0, v2}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 193
    .local v1, "userManager":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 194
    .local v0, "parent":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_0

    .line 195
    sget-object v2, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 196
    const-string/jumbo v4, " has been called, but there is no parent"

    .line 195
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/16 v2, -0x2710

    return v2

    .line 199
    :cond_0
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    return v2
.end method


# virtual methods
.method canForward(Landroid/content/Intent;I)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "targetUserId"    # I

    .prologue
    const/4 v5, 0x0

    .line 136
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 137
    .local v1, "ipm":Landroid/content/pm/IPackageManager;
    const-string/jumbo v3, "android.intent.action.CHOOSER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    const-string/jumbo v3, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "An chooser intent with extra initial intents cannot be forwarded to a different user"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return v5

    .line 144
    :cond_0
    const-string/jumbo v3, "android.intent.extra.REPLACEMENT_EXTRAS"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "A chooser intent with replacement extras cannot be forwarded to a different user"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return v5

    .line 149
    :cond_1
    const-string/jumbo v3, "android.intent.extra.INTENT"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .end local p1    # "intent":Landroid/content/Intent;
    check-cast p1, Landroid/content/Intent;

    .line 150
    .restart local p1    # "intent":Landroid/content/Intent;
    if-nez p1, :cond_2

    .line 151
    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Cannot forward a chooser intent with no extra android.intent.extra.INTENT"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return v5

    .line 156
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    .line 157
    .local v2, "resolvedType":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 158
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    .line 161
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v3

    invoke-interface {v1, p1, v2, v3, p2}, Landroid/content/pm/IPackageManager;->canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "PackageManagerService is dead?"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return v5
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 59
    .local v6, "intentReceived":Landroid/content/Intent;
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "className":Ljava/lang/String;
    sget-object v14, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 64
    const v13, 0x104047c

    .line 65
    .local v13, "userMessageId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getProfileParent()I

    move-result v12

    .line 74
    .local v12, "targetUserId":I
    :goto_0
    const/16 v14, -0x2710

    if-ne v12, v14, :cond_2

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    .line 77
    return-void

    .line 66
    .end local v12    # "targetUserId":I
    .end local v13    # "userMessageId":I
    :cond_0
    sget-object v14, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 67
    const v13, 0x104047d

    .line 68
    .restart local v13    # "userMessageId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getManagedProfile()I

    move-result v12

    .restart local v12    # "targetUserId":I
    goto :goto_0

    .line 70
    .end local v12    # "targetUserId":I
    .end local v13    # "userMessageId":I
    :cond_1
    sget-object v14, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-class v16, Lcom/android/internal/app/IntentForwarderActivity;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " cannot be called directly"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v13, -0x1

    .line 72
    .restart local v13    # "userMessageId":I
    const/16 v12, -0x2710

    .restart local v12    # "targetUserId":I
    goto :goto_0

    .line 79
    :cond_2
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 80
    .local v9, "newIntent":Landroid/content/Intent;
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 82
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const/high16 v14, 0x3000000

    invoke-virtual {v9, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v1

    .line 87
    .local v1, "callingUserId":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12}, Lcom/android/internal/app/IntentForwarderActivity;->canForward(Landroid/content/Intent;I)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 88
    const-string/jumbo v14, "android.intent.action.CHOOSER"

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 89
    const-string/jumbo v14, "android.intent.extra.INTENT"

    invoke-virtual {v9, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 92
    .local v5, "innerIntent":Landroid/content/Intent;
    invoke-virtual {v5, v1}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    .line 97
    .end local v5    # "innerIntent":Landroid/content/Intent;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 98
    const/high16 v15, 0x10000

    .line 97
    invoke-virtual {v14, v9, v15, v12}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .line 102
    .local v10, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v10, :cond_3

    iget-object v14, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v14, :cond_6

    :cond_3
    const/4 v11, 0x1

    .line 108
    .local v11, "shouldShowDisclosure":Z
    :goto_2
    const/4 v14, 0x0

    const/4 v15, 0x0

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v14, v15, v12}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_3
    if-eqz v11, :cond_4

    .line 126
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 132
    .end local v10    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v11    # "shouldShowDisclosure":Z
    :cond_4
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    .line 55
    return-void

    .line 94
    :cond_5
    invoke-virtual {v9, v1}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    goto :goto_1

    .line 103
    .restart local v10    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_6
    const-string/jumbo v14, "android"

    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 104
    const-class v14, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 105
    const-class v14, Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .line 104
    if-eqz v14, :cond_8

    :cond_7
    const/4 v11, 0x0

    .restart local v11    # "shouldShowDisclosure":Z
    goto :goto_2

    .end local v11    # "shouldShowDisclosure":Z
    :cond_8
    const/4 v11, 0x1

    .restart local v11    # "shouldShowDisclosure":Z
    goto :goto_2

    .line 109
    :catch_0
    move-exception v3

    .line 110
    .local v3, "e":Ljava/lang/RuntimeException;
    const/4 v8, -0x1

    .line 111
    .local v8, "launchedFromUid":I
    const-string/jumbo v7, "?"

    .line 113
    .local v7, "launchedFromPackage":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v14

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v15

    .line 113
    invoke-interface {v14, v15}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v8

    .line 115
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v14

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v15

    .line 115
    invoke-interface {v14, v15}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 120
    :goto_5
    sget-object v14, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Unable to launch as UID "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " package "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 121
    const-string/jumbo v16, ", while running in "

    .line 120
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 122
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v16

    .line 120
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 129
    .end local v3    # "e":Ljava/lang/RuntimeException;
    .end local v7    # "launchedFromPackage":Ljava/lang/String;
    .end local v8    # "launchedFromUid":I
    .end local v10    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v11    # "shouldShowDisclosure":Z
    :cond_9
    sget-object v14, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "the intent: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " cannot be forwarded from user "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 130
    const-string/jumbo v16, " to user "

    .line 129
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 117
    .restart local v3    # "e":Ljava/lang/RuntimeException;
    .restart local v7    # "launchedFromPackage":Ljava/lang/String;
    .restart local v8    # "launchedFromUid":I
    .restart local v10    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "shouldShowDisclosure":Z
    :catch_1
    move-exception v4

    .local v4, "ignored":Landroid/os/RemoteException;
    goto :goto_5
.end method
