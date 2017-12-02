.class public Lcom/android/server/TextServicesManagerService;
.super Lcom/android/internal/textservice/ITextServicesManager$Stub;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;,
        Lcom/android/server/TextServicesManagerService$InternalServiceConnection;,
        Lcom/android/server/TextServicesManagerService$Lifecycle;,
        Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;,
        Lcom/android/server/TextServicesManagerService$TextServicesBroadcastReceiver;,
        Lcom/android/server/TextServicesManagerService$TextServicesMonitor;,
        Lcom/android/server/TextServicesManagerService$TextServicesSettings;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

.field private final mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

.field private final mSpellCheckerBindGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpellCheckerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpellCheckerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemReady:Z

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/TextServicesManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/TextServicesManagerService;)Lcom/android/server/TextServicesManagerService$TextServicesSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/TextServicesManagerService;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 1
    .param p1, "prefPackage"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService;->findAvailSpellCheckerLocked(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/server/TextServicesManagerService$TextServicesSettings;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "list"    # Ljava/util/ArrayList;
    .param p2, "map"    # Ljava/util/HashMap;
    .param p3, "settings"    # Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/TextServicesManagerService;->buildSpellCheckerMapLocked(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/server/TextServicesManagerService$TextServicesSettings;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;)V
    .locals 0
    .param p1, "sciId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerLocked(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/android/server/TextServicesManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 149
    invoke-direct {p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;-><init>()V

    .line 80
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    .line 81
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    .line 82
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    .line 150
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/TextServicesManagerService;->mSystemReady:Z

    .line 151
    iput-object p1, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    .line 153
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    const-class v5, Landroid/os/UserManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    iput-object v4, p0, Lcom/android/server/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    .line 155
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 156
    .local v0, "broadcastFilter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string/jumbo v4, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/TextServicesManagerService$TextServicesBroadcastReceiver;

    invoke-direct {v5, p0}, Lcom/android/server/TextServicesManagerService$TextServicesBroadcastReceiver;-><init>(Lcom/android/server/TextServicesManagerService;)V

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    const/4 v3, 0x0

    .line 162
    .local v3, "userId":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v4

    iget v3, v4, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    new-instance v4, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    invoke-direct {v4, p0, v6}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;-><init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$TextServicesMonitor;)V

    iput-object v4, p0, Lcom/android/server/TextServicesManagerService;->mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    .line 167
    iget-object v4, p0, Lcom/android/server/TextServicesManagerService;->mMonitor:Lcom/android/server/TextServicesManagerService$TextServicesMonitor;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v6, v5}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 169
    iget-boolean v4, p0, Lcom/android/server/TextServicesManagerService;->mSystemReady:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v3}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    .line 170
    .local v2, "useCopyOnWriteSettings":Z
    :goto_1
    new-instance v4, Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-direct {v4, v5, v3, v2}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;-><init>(Landroid/content/ContentResolver;IZ)V

    iput-object v4, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    .line 174
    invoke-direct {p0, v3}, Lcom/android/server/TextServicesManagerService;->resetInternalState(I)V

    .line 149
    return-void

    .line 163
    .end local v2    # "useCopyOnWriteSettings":Z
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Couldn\'t get current user ID; guessing it\'s 0"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 169
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x1

    .restart local v2    # "useCopyOnWriteSettings":Z
    goto :goto_1
.end method

.method private bindCurrentSpellCheckerService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 3
    .param p1, "service"    # Landroid/content/Intent;
    .param p2, "conn"    # Landroid/content/ServiceConnection;
    .param p3, "flags"    # I

    .prologue
    .line 359
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 360
    :cond_0
    sget-object v0, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "--- bind failed: service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", conn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v0, 0x0

    return v0

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    .line 364
    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v2}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 363
    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method private static buildSpellCheckerMapLocked(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/server/TextServicesManagerService$TextServicesSettings;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p3, "settings"    # Lcom/android/server/TextServicesManagerService$TextServicesSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/textservice/SpellCheckerInfo;",
            ">;",
            "Lcom/android/server/TextServicesManagerService$TextServicesSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/textservice/SpellCheckerInfo;>;"
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/textservice/SpellCheckerInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 256
    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    .line 257
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 262
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v11, "android.service.textservice.SpellCheckerService"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    move-result v11

    .line 262
    const/16 v12, 0x80

    .line 261
    invoke-virtual {v5, v10, v12, v11}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v8

    .line 264
    .local v8, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .line 265
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_2

    .line 266
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 267
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 268
    .local v9, "si":Landroid/content/pm/ServiceInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v10, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v11, v9, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    .local v1, "compName":Landroid/content/ComponentName;
    const-string/jumbo v10, "android.permission.BIND_TEXT_SERVICE"

    iget-object v11, v9, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 270
    sget-object v10, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Skipping text service "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 271
    const-string/jumbo v12, ": it does not require the permission "

    .line 270
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 272
    const-string/jumbo v12, "android.permission.BIND_TEXT_SERVICE"

    .line 270
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 277
    :cond_0
    :try_start_0
    new-instance v7, Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {v7, p0, v6}, Landroid/view/textservice/SpellCheckerInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 278
    .local v7, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v10

    if-gtz v10, :cond_1

    .line 279
    sget-object v10, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Skipping text service "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 280
    const-string/jumbo v12, ": it does not contain subtypes."

    .line 279
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 285
    .end local v7    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :catch_0
    move-exception v3

    .line 286
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    sget-object v10, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unable to load the spell checker "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 283
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_1
    :try_start_1
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 287
    .end local v7    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :catch_1
    move-exception v2

    .line 288
    .local v2, "e":Ljava/io/IOException;
    sget-object v10, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unable to load the spell checker "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 254
    .end local v1    # "compName":Landroid/content/ComponentName;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "si":Landroid/content/pm/ServiceInfo;
    :cond_2
    return-void
.end method

.method private calledFromValidUser()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 301
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 302
    .local v4, "uid":I
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 319
    .local v5, "userId":I
    const/16 v8, 0x3e8

    if-eq v4, v8, :cond_0

    iget-object v8, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v8}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    move-result v8

    if-ne v5, v8, :cond_1

    .line 320
    :cond_0
    return v6

    .line 327
    :cond_1
    iget-object v8, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v8, v5}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->isCurrentProfile(I)Z

    move-result v0

    .line 331
    .local v0, "isCurrentProfile":Z
    iget-object v8, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v8, v5}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->isCurrentProfile(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 332
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellCheckerWithoutVerification()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v3

    .line 333
    .local v3, "spellCheckerInfo":Landroid/view/textservice/SpellCheckerInfo;
    if-eqz v3, :cond_3

    .line 334
    invoke-virtual {v3}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 336
    .local v2, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v8, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    move v1, v6

    .line 341
    .local v1, "isSystemSpellChecker":Z
    :goto_0
    if-eqz v1, :cond_3

    .line 342
    return v6

    .end local v1    # "isSystemSpellChecker":Z
    :cond_2
    move v1, v7

    .line 336
    goto :goto_0

    .line 354
    .end local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v3    # "spellCheckerInfo":Landroid/view/textservice/SpellCheckerInfo;
    :cond_3
    return v7
.end method

.method private findAvailSpellCheckerLocked(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 17
    .param p1, "prefPackage"    # Ljava/lang/String;

    .prologue
    .line 375
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 376
    .local v7, "spellCheckersCount":I
    if-nez v7, :cond_0

    .line 377
    sget-object v15, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "no available spell checker services found"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v15, 0x0

    return-object v15

    .line 380
    :cond_0
    if-eqz p1, :cond_2

    .line 381
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_2

    .line 382
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/textservice/SpellCheckerInfo;

    .line 383
    .local v6, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 387
    return-object v6

    .line 381
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 395
    .end local v1    # "i":I
    .end local v6    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget-object v14, v15, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 397
    .local v14, "systemLocal":Ljava/util/Locale;
    invoke-static {v14}, Lcom/android/internal/inputmethod/InputMethodUtils;->getSuitableLocalesForSpellChecker(Ljava/util/Locale;)Ljava/util/ArrayList;

    move-result-object v13

    .line 402
    .local v13, "suitableLocales":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/Locale;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 403
    .local v4, "localeCount":I
    const/4 v5, 0x0

    .local v5, "localeIndex":I
    :goto_1
    if-ge v5, v4, :cond_6

    .line 404
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    .line 405
    .local v3, "locale":Ljava/util/Locale;
    const/4 v8, 0x0

    .local v8, "spellCheckersIndex":I
    :goto_2
    if-ge v8, v7, :cond_5

    .line 407
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/textservice/SpellCheckerInfo;

    .line 408
    .local v2, "info":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v10

    .line 409
    .local v10, "subtypeCount":I
    const/4 v11, 0x0

    .local v11, "subtypeIndex":I
    :goto_3
    if-ge v11, v10, :cond_4

    .line 410
    invoke-virtual {v2, v11}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v9

    .line 412
    .local v9, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-virtual {v9}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v15

    .line 411
    invoke-static {v15}, Lcom/android/internal/inputmethod/InputMethodUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v12

    .line 413
    .local v12, "subtypeLocale":Ljava/util/Locale;
    invoke-virtual {v3, v12}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 417
    return-object v2

    .line 409
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 406
    .end local v9    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    .end local v12    # "subtypeLocale":Ljava/util/Locale;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 403
    .end local v2    # "info":Landroid/view/textservice/SpellCheckerInfo;
    .end local v10    # "subtypeCount":I
    .end local v11    # "subtypeIndex":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 423
    .end local v3    # "locale":Ljava/util/Locale;
    .end local v8    # "spellCheckersIndex":I
    :cond_6
    const/4 v15, 0x1

    if-le v7, v15, :cond_7

    .line 424
    sget-object v15, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "more than one spell checker service found, picking first"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/textservice/SpellCheckerInfo;

    return-object v15
.end method

.method private getCurrentSpellCheckerWithoutVerification()Landroid/view/textservice/SpellCheckerInfo;
    .locals 3

    .prologue
    .line 441
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 442
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getSelectedSpellChecker()Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "curSpellCheckerId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    const/4 v1, 0x0

    monitor-exit v2

    return-object v1

    .line 449
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textservice/SpellCheckerInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object v1

    .line 441
    .end local v0    # "curSpellCheckerId":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static getStackTrace()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1194
    .local v3, "sb":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1195
    :catch_0
    move-exception v0

    .line 1196
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 1198
    .local v1, "frames":[Ljava/lang/StackTraceElement;
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 1199
    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1202
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private isSpellCheckerEnabledLocked()Z
    .locals 4

    .prologue
    .line 778
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 780
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v3}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->isSpellCheckerEnabled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 786
    .local v2, "retval":Z
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 784
    return v2

    .line 785
    .end local v2    # "retval":Z
    :catchall_0
    move-exception v3

    .line 786
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 785
    throw v3
.end method

.method private resetInternalState(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const/4 v6, 0x0

    .line 179
    iget-boolean v2, p0, Lcom/android/server/TextServicesManagerService;->mSystemReady:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .line 180
    .local v1, "useCopyOnWriteSettings":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->switchCurrentUser(IZ)V

    .line 181
    invoke-virtual {p0}, Lcom/android/server/TextServicesManagerService;->updateCurrentProfileIds()V

    .line 182
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->unbindServiceLocked()V

    .line 183
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/TextServicesManagerService;->buildSpellCheckerMapLocked(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/server/TextServicesManagerService$TextServicesSettings;)V

    .line 184
    invoke-virtual {p0, v6}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 185
    .local v0, "sci":Landroid/view/textservice/SpellCheckerInfo;
    if-nez v0, :cond_0

    .line 186
    invoke-direct {p0, v6}, Lcom/android/server/TextServicesManagerService;->findAvailSpellCheckerLocked(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerLocked(Ljava/lang/String;)V

    .line 177
    :cond_0
    return-void

    .line 179
    .end local v0    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .end local v1    # "useCopyOnWriteSettings":Z
    :cond_1
    const/4 v1, 0x1

    .restart local v1    # "useCopyOnWriteSettings":Z
    goto :goto_0
.end method

.method private setCurrentSpellCheckerLocked(Ljava/lang/String;)V
    .locals 5
    .param p1, "sciId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 730
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 731
    invoke-virtual {p0, v4}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 732
    .local v0, "currentSci":Landroid/view/textservice/SpellCheckerInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 734
    return-void

    .line 730
    .end local v0    # "currentSci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_0
    return-void

    .line 736
    .restart local v0    # "currentSci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 738
    .local v2, "ident":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v1, p1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->putSelectedSpellChecker(Ljava/lang/String;)V

    .line 739
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerSubtypeLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 741
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 726
    return-void

    .line 740
    :catchall_0
    move-exception v1

    .line 741
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 740
    throw v1
.end method

.method private setCurrentSpellCheckerSubtypeLocked(I)V
    .locals 6
    .param p1, "hashCode"    # I

    .prologue
    const/4 v5, 0x0

    .line 749
    invoke-virtual {p0, v5}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    .line 750
    .local v1, "sci":Landroid/view/textservice/SpellCheckerInfo;
    const/4 v4, 0x0

    .line 751
    .local v4, "tempHashCode":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 752
    invoke-virtual {v1, v0}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 753
    move v4, p1

    .line 757
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 759
    .local v2, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v5, v4}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->putSelectedSpellCheckerSubtype(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 745
    return-void

    .line 751
    .end local v2    # "ident":J
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 760
    .restart local v2    # "ident":J
    :catchall_0
    move-exception v5

    .line 761
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 760
    throw v5
.end method

.method private setSpellCheckerEnabledLocked(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 769
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 771
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v2, p1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->setSpellCheckerEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 765
    return-void

    .line 772
    :catchall_0
    move-exception v2

    .line 773
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 772
    throw v2
.end method

.method private startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)V
    .locals 11
    .param p1, "info"    # Landroid/view/textservice/SpellCheckerInfo;
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "tsListener"    # Lcom/android/internal/textservice/ITextServicesSessionListener;
    .param p4, "scListener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .param p5, "uid"    # I
    .param p6, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 620
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v9

    .line 621
    .local v9, "sciId":Ljava/lang/String;
    new-instance v3, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    move-object/from16 v0, p6

    invoke-direct {v3, p0, v9, p2, v0}, Lcom/android/server/TextServicesManagerService$InternalServiceConnection;-><init>(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 623
    .local v3, "connection":Lcom/android/server/TextServicesManagerService$InternalServiceConnection;
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v2, "android.service.textservice.SpellCheckerService"

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 624
    .local v10, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 629
    const v2, 0x2000001

    .line 628
    invoke-direct {p0, v10, v3, v2}, Lcom/android/server/TextServicesManagerService;->bindCurrentSpellCheckerService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 630
    sget-object v2, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Failed to get a spell checker service."

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    return-void

    .line 633
    :cond_0
    new-instance v1, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    move-object v2, p0

    move-object v4, p3

    move-object v5, p2

    move-object v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;-><init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$InternalServiceConnection;Lcom/android/internal/textservice/ITextServicesSessionListener;Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)V

    .line 635
    .local v1, "group":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    invoke-virtual {v2, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    return-void
.end method

.method private unbindServiceLocked()V
    .locals 3

    .prologue
    .line 368
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "scbg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 369
    .local v0, "scbg":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    invoke-virtual {v0}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAll()V

    goto :goto_0

    .line 371
    .end local v0    # "scbg":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    :cond_0
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 367
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 792
    iget-object v9, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "android.permission.DUMP"

    invoke-virtual {v9, v10}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_0

    .line 795
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Permission Denial: can\'t dump TextServicesManagerService from from pid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 796
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 795
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 797
    const-string/jumbo v10, ", uid="

    .line 795
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 797
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 795
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 798
    return-void

    .line 801
    :cond_0
    iget-object v10, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v10

    .line 802
    :try_start_0
    const-string/jumbo v9, "Current Text Services Manager state:"

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 803
    const-string/jumbo v9, "  Spell Checkers:"

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 804
    const/4 v8, 0x0

    .line 805
    .local v8, "spellCheckerIndex":I
    iget-object v9, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/textservice/SpellCheckerInfo;

    .line 806
    .local v5, "info":Landroid/view/textservice/SpellCheckerInfo;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "  Spell Checker #"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 807
    const-string/jumbo v9, "    "

    invoke-virtual {v5, p2, v9}, Landroid/view/textservice/SpellCheckerInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 808
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 810
    .end local v5    # "info":Landroid/view/textservice/SpellCheckerInfo;
    :cond_1
    const-string/jumbo v9, ""

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 811
    const-string/jumbo v9, "  Spell Checker Bind Groups:"

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 813
    iget-object v9, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    .line 812
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "ent$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 814
    .local v1, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 815
    .local v3, "grp":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "    "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, " "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, ":"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 816
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "      mInternalConnection="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->-get0(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Lcom/android/server/TextServicesManagerService$InternalServiceConnection;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 817
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "      mSpellChecker="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v3, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 818
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "      mBound="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, v3, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mBound:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, " mConnected="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v11, v3, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 819
    invoke-static {v3}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->-get1(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    .line 820
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 821
    invoke-static {v3}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->-get1(Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;

    .line 822
    .local v7, "listener":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "      Listener #"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, ":"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "        mTsListener="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v7, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mTsListener:Lcom/android/internal/textservice/ITextServicesSessionListener;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 824
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "        mScListener="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v7, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "        mGroup="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->-get0(Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;)Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 826
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "        mScLocale="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v7, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScLocale:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 827
    const-string/jumbo v11, " mUid="

    .line 826
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 827
    iget v11, v7, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mUid:I

    .line 826
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 820
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 830
    .end local v0    # "N":I
    .end local v1    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    .end local v3    # "grp":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v4    # "i":I
    .end local v7    # "listener":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :cond_3
    const-string/jumbo v9, ""

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 831
    const-string/jumbo v9, "  mSettings:"

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 832
    iget-object v9, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    const-string/jumbo v11, "    "

    invoke-virtual {v9, p2, v11}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    .line 791
    return-void

    .line 801
    .end local v2    # "ent$iterator":Ljava/util/Iterator;
    .end local v6    # "info$iterator":Ljava/util/Iterator;
    .end local v8    # "spellCheckerIndex":I
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method public finishSpellCheckerService(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .prologue
    .line 655
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    move-result v5

    if-nez v5, :cond_0

    .line 656
    return-void

    .line 661
    :cond_0
    iget-object v6, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 662
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 663
    .local v3, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    iget-object v5, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "group$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 664
    .local v0, "group":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    if-eqz v0, :cond_1

    .line 666
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 661
    .end local v0    # "group":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v1    # "group$iterator":Ljava/util/Iterator;
    .end local v3    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 668
    .restart local v1    # "group$iterator":Ljava/util/Iterator;
    .restart local v3    # "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 669
    .local v4, "removeSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_3

    .line 670
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-virtual {v5, p1}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 669
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    monitor-exit v6

    .line 654
    return-void
.end method

.method public getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    .locals 1
    .param p1, "locale"    # Ljava/lang/String;

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    const/4 v0, 0x0

    return-object v0

    .line 437
    :cond_0
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellCheckerWithoutVerification()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSpellCheckerSubtype(Ljava/lang/String;Z)Landroid/view/textservice/SpellCheckerSubtype;
    .locals 14
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "allowImplicitlySelectedSubtype"    # Z

    .prologue
    .line 459
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    move-result v11

    if-nez v11, :cond_0

    .line 460
    const/4 v11, 0x0

    return-object v11

    .line 465
    :cond_0
    iget-object v12, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v12

    .line 467
    :try_start_0
    iget-object v11, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getSelectedSpellCheckerSubtype(I)I

    move-result v9

    .line 471
    .local v9, "subtypeHashCode":I
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v6

    .line 472
    .local v6, "sci":Landroid/view/textservice/SpellCheckerInfo;
    iget-object v11, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v10, v11, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v10, "systemLocale":Ljava/util/Locale;
    monitor-exit v12

    .line 474
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v11

    if-nez v11, :cond_2

    .line 478
    :cond_1
    const/4 v11, 0x0

    return-object v11

    .line 465
    .end local v6    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .end local v9    # "subtypeHashCode":I
    .end local v10    # "systemLocale":Ljava/util/Locale;
    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    .line 480
    .restart local v6    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .restart local v9    # "subtypeHashCode":I
    .restart local v10    # "systemLocale":Ljava/util/Locale;
    :cond_2
    if-nez v9, :cond_3

    .line 481
    if-eqz p2, :cond_6

    .line 484
    :cond_3
    const/4 v1, 0x0

    .line 485
    .local v1, "candidateLocale":Ljava/lang/String;
    if-nez v9, :cond_5

    .line 487
    iget-object v11, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    const-class v12, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 488
    .local v4, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v4, :cond_4

    .line 490
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->getCurrentInputMethodSubtype()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v2

    .line 491
    .local v2, "currentInputMethodSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    if-eqz v2, :cond_4

    .line 492
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v5

    .line 493
    .local v5, "localeString":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 495
    move-object v1, v5

    .line 499
    .end local v1    # "candidateLocale":Ljava/lang/String;
    .end local v2    # "currentInputMethodSubtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v5    # "localeString":Ljava/lang/String;
    :cond_4
    if-nez v1, :cond_5

    .line 501
    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 504
    .end local v4    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_5
    const/4 v0, 0x0

    .line 505
    .local v0, "candidate":Landroid/view/textservice/SpellCheckerSubtype;
    const/4 v3, 0x0

    .end local v0    # "candidate":Landroid/view/textservice/SpellCheckerSubtype;
    .local v3, "i":I
    :goto_0
    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v11

    if-ge v3, v11, :cond_a

    .line 506
    invoke-virtual {v6, v3}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v7

    .line 507
    .local v7, "scs":Landroid/view/textservice/SpellCheckerSubtype;
    if-nez v9, :cond_9

    .line 508
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v8

    .line 509
    .local v8, "scsLocale":Ljava/lang/String;
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 510
    return-object v7

    .line 482
    .end local v3    # "i":I
    .end local v7    # "scs":Landroid/view/textservice/SpellCheckerSubtype;
    .end local v8    # "scsLocale":Ljava/lang/String;
    :cond_6
    const/4 v11, 0x0

    return-object v11

    .line 511
    .restart local v3    # "i":I
    .restart local v7    # "scs":Landroid/view/textservice/SpellCheckerSubtype;
    .restart local v8    # "scsLocale":Ljava/lang/String;
    :cond_7
    if-nez v0, :cond_8

    .line 512
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x2

    if-lt v11, v12, :cond_8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x2

    if-lt v11, v12, :cond_8

    .line 513
    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    .line 512
    if-eqz v11, :cond_8

    .line 515
    move-object v0, v7

    .line 505
    .end local v8    # "scsLocale":Ljava/lang/String;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 518
    :cond_9
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v11

    if-ne v11, v9, :cond_8

    .line 524
    return-object v7

    .line 530
    .end local v7    # "scs":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_a
    return-object v0
.end method

.method public getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;
    .locals 2

    .prologue
    .line 641
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 642
    const/4 v0, 0x0

    return-object v0

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/textservice/SpellCheckerInfo;

    return-object v0
.end method

.method public getSpellCheckerService(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V
    .locals 21
    .param p1, "sciId"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "tsListener"    # Lcom/android/internal/textservice/ITextServicesSessionListener;
    .param p4, "scListener"    # Lcom/android/internal/textservice/ISpellCheckerSessionListener;
    .param p5, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 537
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_0

    .line 538
    return-void

    .line 540
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/TextServicesManagerService;->mSystemReady:Z

    if-nez v2, :cond_1

    .line 541
    return-void

    .line 543
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez p3, :cond_3

    .line 544
    :cond_2
    sget-object v2, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getSpellCheckerService: Invalid input."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    return-void

    .line 543
    :cond_3
    if-eqz p4, :cond_2

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 548
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    monitor-exit v20

    .line 549
    return-void

    .line 551
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/textservice/SpellCheckerInfo;

    .line 552
    .local v8, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 553
    .local v6, "uid":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    .line 555
    .local v14, "bindGroup":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    if-eqz v14, :cond_6

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerBindGroups:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->addListener(Lcom/android/internal/textservice/ITextServicesSessionListener;Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v18

    .line 559
    .local v18, "recipient":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    if-nez v18, :cond_5

    monitor-exit v20

    .line 563
    return-void

    .line 565
    :cond_5
    :try_start_2
    iget-object v2, v14, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    if-nez v2, :cond_7

    const/4 v2, 0x1

    :goto_0
    iget-boolean v3, v14, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mConnected:Z

    and-int/2addr v2, v3

    if-eqz v2, :cond_8

    .line 566
    sget-object v2, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "The state of the spell checker bind group is illegal."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-virtual {v14}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAll()V

    .line 593
    .end local v14    # "bindGroup":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v18    # "recipient":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :cond_6
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v16

    .local v16, "ident":J
    move-object/from16 v7, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move v12, v6

    move-object/from16 v13, p5

    .line 595
    :try_start_3
    invoke-direct/range {v7 .. v13}, Lcom/android/server/TextServicesManagerService;->startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;ILandroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 598
    :try_start_4
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v20

    .line 601
    return-void

    .line 565
    .end local v16    # "ident":J
    .restart local v14    # "bindGroup":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .restart local v18    # "recipient":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    .line 568
    :cond_8
    :try_start_5
    iget-object v2, v14, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_6

    .line 575
    :try_start_6
    iget-object v2, v14, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->mSpellChecker:Lcom/android/internal/textservice/ISpellCheckerService;

    .line 576
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScLocale:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;->mScListener:Lcom/android/internal/textservice/ISpellCheckerSessionListener;

    .line 575
    move-object/from16 v0, p5

    invoke-interface {v2, v3, v4, v0}, Lcom/android/internal/textservice/ISpellCheckerService;->getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)Lcom/android/internal/textservice/ISpellCheckerSession;

    move-result-object v19

    .line 577
    .local v19, "session":Lcom/android/internal/textservice/ISpellCheckerSession;
    if-eqz v19, :cond_9

    .line 578
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Lcom/android/internal/textservice/ITextServicesSessionListener;->onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v20

    .line 579
    return-void

    .line 584
    :cond_9
    :try_start_7
    invoke-virtual {v14}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAll()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 586
    .end local v19    # "session":Lcom/android/internal/textservice/ISpellCheckerSession;
    :catch_0
    move-exception v15

    .line 587
    .local v15, "e":Landroid/os/RemoteException;
    :try_start_8
    sget-object v2, Lcom/android/server/TextServicesManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception in getting spell checker session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-virtual {v14}, Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;->removeAll()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 547
    .end local v6    # "uid":I
    .end local v8    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .end local v14    # "bindGroup":Lcom/android/server/TextServicesManagerService$SpellCheckerBindGroup;
    .end local v15    # "e":Landroid/os/RemoteException;
    .end local v18    # "recipient":Lcom/android/server/TextServicesManagerService$InternalDeathRecipient;
    :catchall_0
    move-exception v2

    monitor-exit v20

    throw v2

    .line 597
    .restart local v6    # "uid":I
    .restart local v8    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    .restart local v16    # "ident":J
    :catchall_1
    move-exception v2

    .line 598
    :try_start_9
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 597
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method public isSpellCheckerEnabled()Z
    .locals 2

    .prologue
    .line 606
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 607
    const/4 v0, 0x0

    return v0

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 610
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->isSpellCheckerEnabledLocked()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    .line 609
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method onSwitchUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 135
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService;->resetInternalState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 133
    return-void

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method onUnlockUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 140
    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 142
    .local v0, "currentUserId":I
    if-eq p1, v0, :cond_0

    monitor-exit v2

    .line 143
    return-void

    .line 145
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/TextServicesManagerService;->resetInternalState(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 139
    return-void

    .line 140
    .end local v0    # "currentUserId":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setCurrentSpellChecker(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "sciId"    # Ljava/lang/String;

    .prologue
    .line 677
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 678
    return-void

    .line 680
    :cond_0
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 681
    :try_start_0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    .line 682
    const-string/jumbo v2, "android.permission.WRITE_SECURE_SETTINGS"

    .line 681
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 684
    new-instance v0, Ljava/lang/SecurityException;

    .line 685
    const-string/jumbo v2, "Requires permission android.permission.WRITE_SECURE_SETTINGS"

    .line 684
    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 688
    :cond_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerLocked(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 676
    return-void
.end method

.method public setCurrentSpellCheckerSubtype(Ljava/lang/String;I)V
    .locals 3
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "hashCode"    # I

    .prologue
    .line 694
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 695
    return-void

    .line 697
    :cond_0
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 698
    :try_start_0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    .line 699
    const-string/jumbo v2, "android.permission.WRITE_SECURE_SETTINGS"

    .line 698
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 701
    new-instance v0, Ljava/lang/SecurityException;

    .line 702
    const-string/jumbo v2, "Requires permission android.permission.WRITE_SECURE_SETTINGS"

    .line 701
    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 705
    :cond_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/TextServicesManagerService;->setCurrentSpellCheckerSubtypeLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 693
    return-void
.end method

.method public setSpellCheckerEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 711
    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService;->calledFromValidUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 712
    return-void

    .line 714
    :cond_0
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mContext:Landroid/content/Context;

    .line 716
    const-string/jumbo v2, "android.permission.WRITE_SECURE_SETTINGS"

    .line 715
    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 718
    new-instance v0, Ljava/lang/SecurityException;

    .line 719
    const-string/jumbo v2, "Requires permission android.permission.WRITE_SECURE_SETTINGS"

    .line 718
    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 722
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService;->setSpellCheckerEnabledLocked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 710
    return-void
.end method

.method systemRunning()V
    .locals 2

    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mSpellCheckerMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 126
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/TextServicesManagerService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/TextServicesManagerService;->mSystemReady:Z

    .line 128
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v0}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/TextServicesManagerService;->resetInternalState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 124
    return-void

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method updateCurrentProfileIds()V
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    .line 198
    iget-object v1, p0, Lcom/android/server/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService;->mSettings:Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    invoke-virtual {v2}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->setCurrentProfileIds([I)V

    .line 196
    return-void
.end method
