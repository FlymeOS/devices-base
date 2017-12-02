.class public abstract Landroid/content/ContentResolver;
.super Ljava/lang/Object;
.source "ContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentResolver$CursorWrapperInner;,
        Landroid/content/ContentResolver$OpenResourceIdResult;,
        Landroid/content/ContentResolver$ParcelFileDescriptorInner;
    }
.end annotation


# static fields
.field public static final ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

.field public static final ANY_CURSOR_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/*"

.field public static final CONTENT_SERVICE_NAME:Ljava/lang/String; = "content"

.field public static final CURSOR_DIR_BASE_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir"

.field public static final CURSOR_ITEM_BASE_TYPE:Ljava/lang/String; = "vnd.android.cursor.item"

.field private static final ENABLE_CONTENT_SAMPLE:Z = false

.field public static final EXTRA_SIZE:Ljava/lang/String; = "android.content.extra.SIZE"

.field public static final NOTIFY_SKIP_NOTIFY_FOR_DESCENDANTS:I = 0x2

.field public static final NOTIFY_SYNC_TO_NETWORK:I = 0x1

.field public static final SCHEME_ANDROID_RESOURCE:Ljava/lang/String; = "android.resource"

.field public static final SCHEME_CONTENT:Ljava/lang/String; = "content"

.field public static final SCHEME_FILE:Ljava/lang/String; = "file"

.field private static final SLOW_THRESHOLD_MILLIS:I = 0x1f4

.field public static final SYNC_ERROR_AUTHENTICATION:I = 0x2

.field public static final SYNC_ERROR_CONFLICT:I = 0x5

.field public static final SYNC_ERROR_INTERNAL:I = 0x8

.field public static final SYNC_ERROR_IO:I = 0x3

.field private static final SYNC_ERROR_NAMES:[Ljava/lang/String;

.field public static final SYNC_ERROR_PARSE:I = 0x4

.field public static final SYNC_ERROR_SYNC_ALREADY_IN_PROGRESS:I = 0x1

.field public static final SYNC_ERROR_TOO_MANY_DELETIONS:I = 0x6

.field public static final SYNC_ERROR_TOO_MANY_RETRIES:I = 0x7

.field public static final SYNC_EXTRAS_ACCOUNT:Ljava/lang/String; = "account"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SYNC_EXTRAS_DISALLOW_METERED:Ljava/lang/String; = "allow_metered"

.field public static final SYNC_EXTRAS_DISCARD_LOCAL_DELETIONS:Ljava/lang/String; = "discard_deletions"

.field public static final SYNC_EXTRAS_DO_NOT_RETRY:Ljava/lang/String; = "do_not_retry"

.field public static final SYNC_EXTRAS_EXPECTED_DOWNLOAD:Ljava/lang/String; = "expected_download"

.field public static final SYNC_EXTRAS_EXPECTED_UPLOAD:Ljava/lang/String; = "expected_upload"

.field public static final SYNC_EXTRAS_EXPEDITED:Ljava/lang/String; = "expedited"

.field public static final SYNC_EXTRAS_FORCE:Ljava/lang/String; = "force"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SYNC_EXTRAS_IGNORE_BACKOFF:Ljava/lang/String; = "ignore_backoff"

.field public static final SYNC_EXTRAS_IGNORE_SETTINGS:Ljava/lang/String; = "ignore_settings"

.field public static final SYNC_EXTRAS_INITIALIZE:Ljava/lang/String; = "initialize"

.field public static final SYNC_EXTRAS_MANUAL:Ljava/lang/String; = "force"

.field public static final SYNC_EXTRAS_OVERRIDE_TOO_MANY_DELETIONS:Ljava/lang/String; = "deletions_override"

.field public static final SYNC_EXTRAS_PRIORITY:Ljava/lang/String; = "sync_priority"

.field public static final SYNC_EXTRAS_REQUIRE_CHARGING:Ljava/lang/String; = "require_charging"

.field public static final SYNC_EXTRAS_UPLOAD:Ljava/lang/String; = "upload"

.field public static final SYNC_OBSERVER_TYPE_ACTIVE:I = 0x4

.field public static final SYNC_OBSERVER_TYPE_ALL:I = 0x7fffffff

.field public static final SYNC_OBSERVER_TYPE_PENDING:I = 0x2

.field public static final SYNC_OBSERVER_TYPE_SETTINGS:I = 0x1

.field public static final SYNC_OBSERVER_TYPE_STATUS:I = 0x8

.field private static final TAG:Ljava/lang/String; = "ContentResolver"

.field private static sContentService:Landroid/content/IContentService;


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mPackageName:Ljava/lang/String;

.field private final mRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 179
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    sput-object v0, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    .line 253
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 254
    const-string/jumbo v1, "already-in-progress"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 255
    const-string/jumbo v1, "authentication-error"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 256
    const-string/jumbo v1, "io-error"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 257
    const-string/jumbo v1, "parse-error"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 258
    const-string/jumbo v1, "conflict"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 259
    const-string/jumbo v1, "too-many-deletions"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 260
    const-string/jumbo v1, "too-many-retries"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 261
    const-string/jumbo v1, "internal-error"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 253
    sput-object v0, Landroid/content/ContentResolver;->SYNC_ERROR_NAMES:[Ljava/lang/String;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/content/ContentResolver;->mRandom:Ljava/util/Random;

    .line 329
    if-eqz p1, :cond_0

    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    iput-object p1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    .line 330
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    .line 328
    return-void

    .line 329
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object p1

    goto :goto_0
.end method

.method public static addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 7
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "pollFrequency"    # J

    .prologue
    const/4 v1, 0x0

    .line 2148
    invoke-static {p2}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 2149
    const-string/jumbo v0, "force"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2150
    const-string/jumbo v0, "do_not_retry"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2149
    if-nez v0, :cond_0

    .line 2151
    const-string/jumbo v0, "ignore_backoff"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2149
    if-nez v0, :cond_0

    .line 2152
    const-string/jumbo v0, "ignore_settings"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2149
    if-nez v0, :cond_0

    .line 2153
    const-string/jumbo v0, "initialize"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2149
    if-nez v0, :cond_0

    .line 2154
    const-string/jumbo v0, "force"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2149
    if-nez v0, :cond_0

    .line 2155
    const-string/jumbo v0, "expedited"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2149
    if-eqz v0, :cond_1

    .line 2156
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "illegal extras were set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2159
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentService;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2147
    :goto_0
    return-void

    .line 2160
    :catch_0
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;
    .locals 4
    .param p0, "mask"    # I
    .param p1, "callback"    # Landroid/content/SyncStatusObserver;

    .prologue
    .line 2489
    if-nez p1, :cond_0

    .line 2490
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "you passed in a null callback"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2493
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/ContentResolver$1;

    invoke-direct {v1, p1}, Landroid/content/ContentResolver$1;-><init>(Landroid/content/SyncStatusObserver;)V

    .line 2498
    .local v1, "observer":Landroid/content/ISyncStatusObserver$Stub;
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v2

    invoke-interface {v2, p0, v1}, Landroid/content/IContentService;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2499
    return-object v1

    .line 2500
    .end local v1    # "observer":Landroid/content/ISyncStatusObserver$Stub;
    :catch_0
    move-exception v0

    .line 2501
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "the ContentService should always be reachable"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 2003
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, p1, v2}, Landroid/content/IContentService;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2001
    :goto_0
    return-void

    .line 2004
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static cancelSync(Landroid/content/SyncRequest;)V
    .locals 3
    .param p0, "request"    # Landroid/content/SyncRequest;

    .prologue
    .line 2219
    if-nez p0, :cond_0

    .line 2220
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "request cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2223
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/IContentService;->cancelRequest(Landroid/content/SyncRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2218
    :goto_0
    return-void

    .line 2224
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2014
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, p1, v2, p2}, Landroid/content/IContentService;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2012
    :goto_0
    return-void

    .line 2015
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getContentService()Landroid/content/IContentService;
    .locals 2

    .prologue
    .line 2673
    sget-object v1, Landroid/content/ContentResolver;->sContentService:Landroid/content/IContentService;

    if-eqz v1, :cond_0

    .line 2674
    sget-object v1, Landroid/content/ContentResolver;->sContentService:Landroid/content/IContentService;

    return-object v1

    .line 2676
    :cond_0
    const-string/jumbo v1, "content"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2678
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IContentService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IContentService;

    move-result-object v1

    sput-object v1, Landroid/content/ContentResolver;->sContentService:Landroid/content/IContentService;

    .line 2680
    sget-object v1, Landroid/content/ContentResolver;->sContentService:Landroid/content/IContentService;

    return-object v1
.end method

.method public static getCurrentSync()Landroid/content/SyncInfo;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2382
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/IContentService;->getCurrentSyncs()Ljava/util/List;

    move-result-object v1

    .line 2383
    .local v1, "syncs":Ljava/util/List;, "Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2384
    const/4 v2, 0x0

    return-object v2

    .line 2386
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 2387
    :catch_0
    move-exception v0

    .line 2388
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "the ContentService should always be reachable"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getCurrentSyncs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2403
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/IContentService;->getCurrentSyncs()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2404
    :catch_0
    move-exception v0

    .line 2405
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getCurrentSyncsAsUser(I)Ljava/util/List;
    .locals 3
    .param p0, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2415
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/IContentService;->getCurrentSyncsAsUser(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2416
    :catch_0
    move-exception v0

    .line 2417
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 2255
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/content/IContentService;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2256
    :catch_0
    move-exception v0

    .line 2257
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2268
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Landroid/content/IContentService;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2269
    :catch_0
    move-exception v0

    .line 2270
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getMasterSyncAutomatically()Z
    .locals 3

    .prologue
    .line 2299
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/IContentService;->getMasterSyncAutomatically()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2300
    :catch_0
    move-exception v0

    .line 2301
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getMasterSyncAutomaticallyAsUser(I)Z
    .locals 3
    .param p0, "userId"    # I

    .prologue
    .line 2311
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/IContentService;->getMasterSyncAutomaticallyAsUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2312
    :catch_0
    move-exception v0

    .line 2313
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2241
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, p1, v2}, Landroid/content/IContentService;->getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2242
    :catch_0
    move-exception v0

    .line 2243
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    .line 2051
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/content/IContentService;->getSyncAdapterPackagesForAuthorityAsUser(Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2052
    :catch_0
    move-exception v0

    .line 2054
    .local v0, "e":Landroid/os/RemoteException;
    const-class v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public static getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    .locals 3

    .prologue
    .line 2025
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/IContentService;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2026
    :catch_0
    move-exception v0

    .line 2027
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;
    .locals 3
    .param p0, "userId"    # I

    .prologue
    .line 2037
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/IContentService;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2038
    :catch_0
    move-exception v0

    .line 2039
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 2068
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/content/IContentService;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2069
    :catch_0
    move-exception v0

    .line 2070
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2081
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Landroid/content/IContentService;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2082
    :catch_0
    move-exception v0

    .line 2083
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 2430
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, p1, v2}, Landroid/content/IContentService;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/SyncStatusInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2431
    :catch_0
    move-exception v0

    .line 2432
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Landroid/content/SyncStatusInfo;
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2443
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, p1, v2, p2}, Landroid/content/IContentService;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Landroid/content/SyncStatusInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 2444
    :catch_0
    move-exception v0

    .line 2445
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static invalidPeriodicExtras(Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 2174
    const-string/jumbo v0, "force"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2175
    const-string/jumbo v0, "do_not_retry"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2174
    if-nez v0, :cond_0

    .line 2176
    const-string/jumbo v0, "ignore_backoff"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2174
    if-nez v0, :cond_0

    .line 2177
    const-string/jumbo v0, "ignore_settings"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2174
    if-nez v0, :cond_0

    .line 2178
    const-string/jumbo v0, "initialize"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2174
    if-nez v0, :cond_0

    .line 2179
    const-string/jumbo v0, "force"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2174
    if-nez v0, :cond_0

    .line 2180
    const-string/jumbo v0, "expedited"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2174
    if-eqz v0, :cond_1

    .line 2181
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2183
    :cond_1
    return v1
.end method

.method public static isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 2352
    if-nez p0, :cond_0

    .line 2353
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "account must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2355
    :cond_0
    if-nez p1, :cond_1

    .line 2356
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "authority must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2360
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, p1, v2}, Landroid/content/IContentService;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2361
    :catch_0
    move-exception v0

    .line 2362
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 1
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 2458
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/content/ContentResolver;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2468
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, p1, v2, p2}, Landroid/content/IContentService;->isSyncPendingAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2469
    :catch_0
    move-exception v0

    .line 2470
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private maybeLogQueryToEventLog(JLandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "durationMillis"    # J
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 2558
    return-void
.end method

.method private maybeLogUpdateToEventLog(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "durationMillis"    # J
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "operation"    # Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;

    .prologue
    .line 2598
    return-void
.end method

.method public static removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2197
    invoke-static {p2}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 2199
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Landroid/content/IContentService;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2196
    return-void

    .line 2200
    :catch_0
    move-exception v0

    .line 2201
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "the ContentService should always be reachable"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static removeStatusChangeListener(Ljava/lang/Object;)V
    .locals 3
    .param p0, "handle"    # Ljava/lang/Object;

    .prologue
    .line 2510
    if-nez p0, :cond_0

    .line 2511
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "you passed in a null handle"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2514
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    check-cast p0, Landroid/content/ISyncStatusObserver$Stub;

    .end local p0    # "handle":Ljava/lang/Object;
    invoke-interface {v1, p0}, Landroid/content/IContentService;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2509
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 2515
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1908
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0, p2}, Landroid/content/ContentResolver;->requestSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 1907
    return-void
.end method

.method public static requestSync(Landroid/content/SyncRequest;)V
    .locals 2
    .param p0, "request"    # Landroid/content/SyncRequest;

    .prologue
    .line 1939
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/IContentService;->sync(Landroid/content/SyncRequest;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1937
    :goto_0
    return-void

    .line 1940
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static requestSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 4
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1917
    if-nez p3, :cond_0

    .line 1918
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Must specify extras."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1921
    :cond_0
    new-instance v2, Landroid/content/SyncRequest$Builder;

    invoke-direct {v2}, Landroid/content/SyncRequest$Builder;-><init>()V

    invoke-virtual {v2, p0, p1}, Landroid/content/SyncRequest$Builder;->setSyncAdapter(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncRequest$Builder;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/SyncRequest$Builder;->setExtras(Landroid/os/Bundle;)Landroid/content/SyncRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/SyncRequest$Builder;->syncOnce()Landroid/content/SyncRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/SyncRequest$Builder;->build()Landroid/content/SyncRequest;

    move-result-object v1

    .line 1927
    .local v1, "request":Landroid/content/SyncRequest;
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v2

    invoke-interface {v2, v1, p2}, Landroid/content/IContentService;->syncAsUser(Landroid/content/SyncRequest;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1916
    :goto_0
    return-void

    .line 1928
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private samplePercentForDuration(J)I
    .locals 5
    .param p1, "durationMillis"    # J

    .prologue
    const-wide/16 v2, 0x1f4

    .line 2549
    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    .line 2550
    const/16 v0, 0x64

    return v0

    .line 2552
    :cond_0
    const-wide/16 v0, 0x64

    mul-long/2addr v0, p1

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "syncable"    # I

    .prologue
    .line 2282
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Landroid/content/IContentService;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2280
    :goto_0
    return-void

    .line 2283
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static setMasterSyncAutomatically(Z)V
    .locals 1
    .param p0, "sync"    # Z

    .prologue
    .line 2326
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 2325
    return-void
.end method

.method public static setMasterSyncAutomaticallyAsUser(ZI)V
    .locals 2
    .param p0, "sync"    # Z
    .param p1, "userId"    # I

    .prologue
    .line 2335
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Landroid/content/IContentService;->setMasterSyncAutomaticallyAsUser(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2333
    :goto_0
    return-void

    .line 2336
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "sync"    # Z

    .prologue
    .line 2097
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/content/ContentResolver;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 2096
    return-void
.end method

.method public static setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    .locals 2
    .param p0, "account"    # Landroid/accounts/Account;
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 2107
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2, p3}, Landroid/content/IContentService;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2105
    :goto_0
    return-void

    .line 2108
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static syncErrorStringToInt(Ljava/lang/String;)I
    .locals 6
    .param p0, "error"    # Ljava/lang/String;

    .prologue
    .line 274
    const/4 v1, 0x0

    .local v1, "i":I
    sget-object v3, Landroid/content/ContentResolver;->SYNC_ERROR_NAMES:[Ljava/lang/String;

    array-length v2, v3

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 275
    sget-object v3, Landroid/content/ContentResolver;->SYNC_ERROR_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 276
    add-int/lit8 v3, v1, 0x1

    return v3

    .line 274
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    :cond_1
    if-eqz p0, :cond_2

    .line 281
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "ContentResolver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error parsing sync error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method public static syncErrorToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "error"    # I

    .prologue
    .line 266
    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    sget-object v0, Landroid/content/ContentResolver;->SYNC_ERROR_NAMES:[Ljava/lang/String;

    array-length v0, v0

    if-le p0, v0, :cond_1

    .line 267
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 269
    :cond_1
    sget-object v0, Landroid/content/ContentResolver;->SYNC_ERROR_NAMES:[Ljava/lang/String;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static validateSyncExtrasBundle(Landroid/os/Bundle;)V
    .locals 8
    .param p0, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1961
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "key$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1962
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 1963
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 1964
    instance-of v5, v4, Ljava/lang/Long;

    if-nez v5, :cond_0

    .line 1965
    instance-of v5, v4, Ljava/lang/Integer;

    if-nez v5, :cond_0

    .line 1966
    instance-of v5, v4, Ljava/lang/Boolean;

    if-nez v5, :cond_0

    .line 1967
    instance-of v5, v4, Ljava/lang/Float;

    if-nez v5, :cond_0

    .line 1968
    instance-of v5, v4, Ljava/lang/Double;

    if-nez v5, :cond_0

    .line 1969
    instance-of v5, v4, Ljava/lang/String;

    if-nez v5, :cond_0

    .line 1970
    instance-of v5, v4, Landroid/accounts/Account;

    if-nez v5, :cond_0

    .line 1971
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unexpected value type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1972
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1971
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1974
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "key$iterator":Ljava/util/Iterator;
    .end local v4    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1975
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 1976
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 1977
    .local v1, "exc":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "error unparceling Bundle"

    invoke-direct {v5, v6, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1959
    .end local v1    # "exc":Ljava/lang/RuntimeException;
    .restart local v3    # "key$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method


# virtual methods
.method public final acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 1544
    const-string/jumbo v1, "uri"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 1546
    .local v0, "provider":Landroid/content/IContentProvider;
    if-eqz v0, :cond_0

    .line 1547
    new-instance v1, Landroid/content/ContentProviderClient;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Landroid/content/ContentProviderClient;-><init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Z)V

    return-object v1

    .line 1549
    :cond_0
    return-object v2
.end method

.method public final acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1565
    const-string/jumbo v1, "name"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 1567
    .local v0, "provider":Landroid/content/IContentProvider;
    if-eqz v0, :cond_0

    .line 1568
    new-instance v1, Landroid/content/ContentProviderClient;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Landroid/content/ContentProviderClient;-><init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Z)V

    return-object v1

    .line 1571
    :cond_0
    return-object v2
.end method

.method protected acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 344
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public final acquireExistingProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 1484
    const-string/jumbo v1, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1485
    return-object v3

    .line 1487
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1488
    .local v0, "auth":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1489
    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v1

    return-object v1

    .line 1491
    :cond_1
    return-object v3
.end method

.method protected abstract acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
.end method

.method public final acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 1465
    const-string/jumbo v1, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1466
    return-object v3

    .line 1468
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1469
    .local v0, "auth":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1470
    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v1

    return-object v1

    .line 1472
    :cond_1
    return-object v3
.end method

.method public final acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1498
    if-nez p1, :cond_0

    .line 1499
    return-object v0

    .line 1501
    :cond_0
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public final acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 1592
    const-string/jumbo v1, "uri"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1593
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 1594
    .local v0, "provider":Landroid/content/IContentProvider;
    if-eqz v0, :cond_0

    .line 1595
    new-instance v1, Landroid/content/ContentProviderClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Landroid/content/ContentProviderClient;-><init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Z)V

    return-object v1

    .line 1598
    :cond_0
    return-object v2
.end method

.method public final acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1619
    const-string/jumbo v1, "name"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1620
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 1621
    .local v0, "provider":Landroid/content/IContentProvider;
    if-eqz v0, :cond_0

    .line 1622
    new-instance v1, Landroid/content/ContentProviderClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Landroid/content/ContentProviderClient;-><init>(Landroid/content/ContentResolver;Landroid/content/IContentProvider;Z)V

    return-object v1

    .line 1625
    :cond_0
    return-object v2
.end method

.method protected abstract acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
.end method

.method public final acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 1512
    const-string/jumbo v1, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1513
    return-object v3

    .line 1515
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1516
    .local v0, "auth":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1517
    iget-object v1, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v1

    return-object v1

    .line 1519
    :cond_1
    return-object v3
.end method

.method public final acquireUnstableProvider(Ljava/lang/String;)Landroid/content/IContentProvider;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1526
    if-nez p1, :cond_0

    .line 1527
    return-object v0

    .line 1529
    :cond_0
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public appNotRespondingViaProvider(Landroid/content/IContentProvider;)V
    .locals 2
    .param p1, "icp"    # Landroid/content/IContentProvider;

    .prologue
    .line 358
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "appNotRespondingViaProvider"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 4
    .param p1, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 1308
    .local p2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const-string/jumbo v1, "authority"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1309
    const-string/jumbo v1, "operations"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 1311
    .local v0, "provider":Landroid/content/ContentProviderClient;
    if-nez v0, :cond_0

    .line 1312
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown authority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1315
    :cond_0
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1317
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 1315
    return-object v1

    .line 1316
    :catchall_0
    move-exception v1

    .line 1317
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 1316
    throw v1
.end method

.method public final bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 12
    .param p1, "url"    # Landroid/net/Uri;
        .annotation build Landroid/annotation/RequiresPermission$Write;
        .end annotation
    .end param
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 1333
    const-string/jumbo v1, "url"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    const-string/jumbo v1, "values"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v7

    .line 1336
    .local v7, "provider":Landroid/content/IContentProvider;
    if-nez v7, :cond_0

    .line 1337
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1340
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1341
    .local v10, "startTime":J
    iget-object v1, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    invoke-interface {v7, v1, p1, p2}, Landroid/content/IContentProvider;->bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v8

    .line 1342
    .local v8, "rowsCreated":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v10

    .line 1343
    .local v2, "durationMillis":J
    const-string/jumbo v5, "bulkinsert"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Landroid/content/ContentResolver;->maybeLogUpdateToEventLog(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1350
    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1344
    return v8

    .line 1345
    .end local v2    # "durationMillis":J
    .end local v8    # "rowsCreated":I
    .end local v10    # "startTime":J
    :catch_0
    move-exception v0

    .line 1348
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 1350
    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1348
    return v1

    .line 1349
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 1350
    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1349
    throw v1
.end method

.method public final call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 1438
    const-string/jumbo v3, "uri"

    invoke-static {p1, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    const-string/jumbo v3, "method"

    invoke-static {p2, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 1441
    .local v1, "provider":Landroid/content/IContentProvider;
    if-nez v1, :cond_0

    .line 1442
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1445
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v3, p2, p3, p4}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 1446
    .local v2, "res":Landroid/os/Bundle;
    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1453
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1447
    return-object v2

    .line 1448
    .end local v2    # "res":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 1453
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1451
    return-object v4

    .line 1452
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    .line 1453
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1452
    throw v3
.end method

.method public cancelSync(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1990
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 1989
    return-void

    :cond_0
    move-object v0, v1

    .line 1990
    goto :goto_0
.end method

.method public final canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 613
    const-string/jumbo v2, "url"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 615
    .local v1, "provider":Landroid/content/IContentProvider;
    if-nez v1, :cond_0

    .line 616
    return-object v3

    .line 620
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/IContentProvider;->canonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 626
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 620
    return-object v2

    .line 621
    :catch_0
    move-exception v0

    .line 626
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 624
    return-object v3

    .line 625
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    .line 626
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 625
    throw v2
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12
    .param p1, "url"    # Landroid/net/Uri;
        .annotation build Landroid/annotation/RequiresPermission$Write;
        .end annotation
    .end param
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 1366
    const-string/jumbo v1, "url"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v7

    .line 1368
    .local v7, "provider":Landroid/content/IContentProvider;
    if-nez v7, :cond_0

    .line 1369
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1372
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1373
    .local v10, "startTime":J
    iget-object v1, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    invoke-interface {v7, v1, p1, p2, p3}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1374
    .local v8, "rowsDeleted":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v10

    .line 1375
    .local v2, "durationMillis":J
    const-string/jumbo v5, "delete"

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/content/ContentResolver;->maybeLogUpdateToEventLog(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1382
    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1376
    return v8

    .line 1377
    .end local v2    # "durationMillis":J
    .end local v8    # "rowsDeleted":I
    .end local v10    # "startTime":J
    :catch_0
    move-exception v0

    .line 1380
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    .line 1382
    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1380
    return v1

    .line 1381
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 1382
    invoke-virtual {p0, v7}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1381
    throw v1
.end method

.method public getCache(Landroid/net/Uri;)Landroid/os/Bundle;
    .locals 5
    .param p1, "key"    # Landroid/net/Uri;

    .prologue
    .line 2534
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v2

    iget-object v3, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2535
    iget-object v4, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    .line 2534
    invoke-interface {v2, v3, p1, v4}, Landroid/content/IContentService;->getCache(Ljava/lang/String;Landroid/net/Uri;I)Landroid/os/Bundle;

    move-result-object v0

    .line 2536
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2537
    :cond_0
    return-object v0

    .line 2538
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 2539
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public getOutgoingPersistedUriPermissions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/UriPermission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1847
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1848
    iget-object v2, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    .line 1847
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1849
    :catch_0
    move-exception v0

    .line 1850
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Activity manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2685
    iget-object v0, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPersistedUriPermissions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/UriPermission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1831
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1832
    iget-object v2, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x1

    .line 1831
    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1833
    :catch_0
    move-exception v0

    .line 1834
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Activity manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1220
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1222
    .local v0, "authority":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1223
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No authority: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1226
    :cond_0
    :try_start_0
    iget-object v8, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1231
    .local v6, "r":Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    .line 1232
    .local v5, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v5, :cond_1

    .line 1233
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No path: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1227
    .end local v5    # "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "r":Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 1228
    .local v2, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No package found for authority: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1235
    .end local v2    # "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5    # "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "r":Landroid/content/res/Resources;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 1237
    .local v4, "len":I
    if-ne v4, v10, :cond_2

    .line 1239
    const/4 v8, 0x0

    :try_start_1
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 1248
    .local v3, "id":I
    :goto_0
    if-nez v3, :cond_4

    .line 1249
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No resource found for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1240
    .end local v3    # "id":I
    :catch_1
    move-exception v1

    .line 1241
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Single path segment is not a resource ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1243
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    const/4 v8, 0x2

    if-ne v4, v8, :cond_3

    .line 1244
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v8, v9, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .restart local v3    # "id":I
    goto :goto_0

    .line 1246
    .end local v3    # "id":I
    :cond_3
    new-instance v8, Ljava/io/FileNotFoundException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "More than two path segments: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1251
    .restart local v3    # "id":I
    :cond_4
    new-instance v7, Landroid/content/ContentResolver$OpenResourceIdResult;

    invoke-direct {v7, p0}, Landroid/content/ContentResolver$OpenResourceIdResult;-><init>(Landroid/content/ContentResolver;)V

    .line 1252
    .local v7, "res":Landroid/content/ContentResolver$OpenResourceIdResult;
    iput-object v6, v7, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    .line 1253
    iput v3, v7, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    .line 1254
    return-object v7
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 422
    const-string/jumbo v2, "url"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string/jumbo v2, "mimeTypeFilter"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 426
    .local v1, "provider":Landroid/content/IContentProvider;
    if-nez v1, :cond_0

    .line 427
    return-object v3

    .line 431
    :cond_0
    :try_start_0
    invoke-interface {v1, p1, p2}, Landroid/content/IContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 437
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 431
    return-object v2

    .line 432
    :catch_0
    move-exception v0

    .line 437
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 435
    return-object v3

    .line 436
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    .line 437
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 436
    throw v2
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x0

    .line 369
    const-string/jumbo v4, "url"

    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireExistingProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 373
    .local v2, "provider":Landroid/content/IContentProvider;
    if-eqz v2, :cond_0

    .line 375
    :try_start_0
    invoke-interface {v2, p1}, Landroid/content/IContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 382
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 375
    return-object v4

    .line 378
    :catch_0
    move-exception v1

    .line 379
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "ContentResolver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to get type for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 380
    return-object v7

    .line 376
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 382
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 377
    return-object v7

    .line 381
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    .line 382
    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 381
    throw v4

    .line 386
    :cond_0
    const-string/jumbo v4, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 387
    return-object v7

    .line 391
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    .line 392
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->resolveUserId(Landroid/net/Uri;)I

    move-result v6

    .line 391
    invoke-interface {v4, v5, v6}, Landroid/app/IActivityManager;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    .line 393
    .local v3, "type":Ljava/lang/String;
    return-object v3

    .line 398
    .end local v3    # "type":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 399
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ContentResolver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to get type for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return-object v7

    .line 394
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 397
    .restart local v0    # "e":Landroid/os/RemoteException;
    return-object v7
.end method

.method public getTypeDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 2702
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/util/MimeIconUtils;->loadMimeIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 12
    .param p1, "url"    # Landroid/net/Uri;
        .annotation build Landroid/annotation/RequiresPermission$Write;
        .end annotation
    .end param
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v9, 0x0

    .line 1269
    const-string/jumbo v1, "url"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v8

    .line 1271
    .local v8, "provider":Landroid/content/IContentProvider;
    if-nez v8, :cond_0

    .line 1272
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown URL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1275
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1276
    .local v10, "startTime":J
    iget-object v1, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    invoke-interface {v8, v1, p1, p2}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1277
    .local v0, "createdRow":Landroid/net/Uri;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v10

    .line 1278
    .local v2, "durationMillis":J
    const-string/jumbo v5, "insert"

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Landroid/content/ContentResolver;->maybeLogUpdateToEventLog(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1285
    invoke-virtual {p0, v8}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1279
    return-object v0

    .line 1280
    .end local v0    # "createdRow":Landroid/net/Uri;
    .end local v2    # "durationMillis":J
    .end local v10    # "startTime":J
    :catch_0
    move-exception v7

    .line 1285
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v8}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1283
    return-object v9

    .line 1284
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 1285
    invoke-virtual {p0, v8}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1284
    throw v1
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 1693
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 1692
    return-void
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "flags"    # I

    .prologue
    .line 1740
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1742
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 1745
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p1, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v1

    .line 1741
    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;II)V

    .line 1739
    return-void
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;II)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "flags"    # I
    .param p4, "userHandle"    # I

    .prologue
    const/4 v2, 0x0

    .line 1773
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    .line 1774
    if-nez p2, :cond_0

    .line 1775
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v3

    :goto_1
    move-object v1, p1

    move v4, p3

    move v5, p4

    .line 1773
    invoke-interface/range {v0 .. v5}, Landroid/content/IContentService;->notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZII)V

    .line 1771
    :goto_2
    return-void

    .line 1774
    :cond_0
    invoke-virtual {p2}, Landroid/database/ContentObserver;->getContentObserver()Landroid/database/IContentObserver;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1775
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 1777
    :catch_0
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "syncToNetwork"    # Z

    .prologue
    .line 1714
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1716
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 1719
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p1, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v1

    .line 1715
    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V

    .line 1713
    return-void
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;
    .param p3, "syncToNetwork"    # Z
    .param p4, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 1756
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v0

    .line 1757
    if-nez p2, :cond_1

    .line 1758
    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v3

    .line 1759
    :goto_1
    if-eqz p3, :cond_0

    const/4 v4, 0x1

    :cond_0
    move-object v1, p1

    move v5, p4

    .line 1756
    invoke-interface/range {v0 .. v5}, Landroid/content/IContentService;->notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZII)V

    .line 1754
    :goto_2
    return-void

    .line 1757
    :cond_1
    invoke-virtual {p2}, Landroid/database/ContentObserver;->getContentObserver()Landroid/database/IContentObserver;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :cond_2
    move v3, v4

    .line 1758
    goto :goto_1

    .line 1761
    :catch_0
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_2
.end method

.method public final openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 907
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 20
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 964
    const-string/jumbo v4, "uri"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    const-string/jumbo v4, "mode"

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v17

    .line 968
    .local v17, "scheme":Ljava/lang/String;
    const-string/jumbo v4, "android.resource"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 969
    const-string/jumbo v4, "r"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 970
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t write resources: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 972
    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    move-result-object v15

    .line 974
    .local v15, "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :try_start_0
    iget-object v4, v15, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v6, v15, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 975
    :catch_0
    move-exception v13

    .line 976
    .local v13, "ex":Landroid/content/res/Resources$NotFoundException;
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Resource does not exist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 978
    .end local v13    # "ex":Landroid/content/res/Resources$NotFoundException;
    .end local v15    # "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :cond_1
    const-string/jumbo v4, "file"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 980
    new-instance v4, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {p2 .. p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result v6

    .line 979
    invoke-static {v4, v6}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    .line 981
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v4, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    invoke-direct/range {v4 .. v9}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    return-object v4

    .line 983
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_2
    const-string/jumbo v4, "r"

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 984
    const-string/jumbo v4, "*/*"

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v4, v6, v2}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    return-object v4

    .line 986
    :cond_3
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v19

    .line 987
    .local v19, "unstableProvider":Landroid/content/IContentProvider;
    if-nez v19, :cond_4

    .line 988
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No content provider: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 990
    :cond_4
    const/16 v18, 0x0

    .line 991
    .local v18, "stableProvider":Landroid/content/IContentProvider;
    const/4 v14, 0x0

    .line 994
    .local v14, "fd":Landroid/content/res/AssetFileDescriptor;
    const/16 v16, 0x0

    .line 995
    .local v16, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    if-eqz p3, :cond_5

    .line 996
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 997
    invoke-interface/range {v19 .. v19}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v16

    .line 998
    .local v16, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1003
    .end local v16    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    .line 1002
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    invoke-interface {v0, v4, v1, v2, v3}, Landroid/content/IContentProvider;->openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v14

    .line 1004
    .local v14, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v14, :cond_f

    .line 1006
    const/4 v4, 0x0

    .line 1047
    if-eqz p3, :cond_6

    .line 1048
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1053
    :cond_6
    if-eqz v19, :cond_7

    .line 1054
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 1006
    :cond_7
    return-object v4

    .line 1008
    .local v14, "fd":Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v10

    .line 1012
    .local v10, "e":Landroid/os/DeadObjectException;
    :try_start_3
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 1013
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v18

    .line 1014
    .local v18, "stableProvider":Landroid/content/IContentProvider;
    if-nez v18, :cond_b

    .line 1015
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "No content provider: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1040
    .end local v10    # "e":Landroid/os/DeadObjectException;
    .end local v14    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v18    # "stableProvider":Landroid/content/IContentProvider;
    .end local v19    # "unstableProvider":Landroid/content/IContentProvider;
    :catch_2
    move-exception v11

    .line 1042
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v4, Ljava/io/FileNotFoundException;

    .line 1043
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed opening content provider: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1042
    invoke-direct {v4, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1046
    .end local v11    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    .line 1047
    if-eqz p3, :cond_8

    .line 1048
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1050
    :cond_8
    if-eqz v18, :cond_9

    .line 1051
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1053
    :cond_9
    if-eqz v19, :cond_a

    .line 1054
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 1046
    :cond_a
    throw v4

    .line 1018
    .restart local v10    # "e":Landroid/os/DeadObjectException;
    .restart local v14    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local v18    # "stableProvider":Landroid/content/IContentProvider;
    .restart local v19    # "unstableProvider":Landroid/content/IContentProvider;
    :cond_b
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    .line 1017
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    invoke-interface {v0, v4, v1, v2, v3}, Landroid/content/IContentProvider;->openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v14

    .line 1019
    .local v14, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v14, :cond_f

    .line 1021
    const/4 v4, 0x0

    .line 1047
    if-eqz p3, :cond_c

    .line 1048
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1050
    :cond_c
    if-eqz v18, :cond_d

    .line 1051
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1053
    :cond_d
    if-eqz v19, :cond_e

    .line 1054
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 1021
    :cond_e
    return-object v4

    .line 1025
    .end local v10    # "e":Landroid/os/DeadObjectException;
    .end local v18    # "stableProvider":Landroid/content/IContentProvider;
    :cond_f
    if-nez v18, :cond_10

    .line 1026
    :try_start_6
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v18

    .line 1028
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 1029
    const/16 v19, 0x0

    .line 1030
    .local v19, "unstableProvider":Landroid/content/IContentProvider;
    new-instance v5, Landroid/content/ContentResolver$ParcelFileDescriptorInner;

    .line 1031
    invoke-virtual {v14}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 1030
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v5, v0, v4, v1}, Landroid/content/ContentResolver$ParcelFileDescriptorInner;-><init>(Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/content/IContentProvider;)V

    .line 1035
    .restart local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    const/16 v18, 0x0

    .line 1037
    .local v18, "stableProvider":Landroid/content/IContentProvider;
    new-instance v4, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v14}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v6

    .line 1038
    invoke-virtual {v14}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v8

    .line 1037
    invoke-direct/range {v4 .. v9}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1047
    if-eqz p3, :cond_11

    .line 1048
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1037
    :cond_11
    return-object v4

    .line 1044
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v14    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v18    # "stableProvider":Landroid/content/IContentProvider;
    .end local v19    # "unstableProvider":Landroid/content/IContentProvider;
    :catch_3
    move-exception v12

    .line 1045
    .local v12, "e":Ljava/io/FileNotFoundException;
    :try_start_7
    throw v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public final openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 791
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 837
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 838
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    if-nez v0, :cond_0

    .line 839
    return-object v2

    .line 842
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 844
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    return-object v2

    .line 850
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    :goto_0
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string/jumbo v3, "Not a whole file"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 851
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public final openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 687
    const-string/jumbo v7, "uri"

    invoke-static {p1, v7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 689
    .local v4, "scheme":Ljava/lang/String;
    const-string/jumbo v7, "android.resource"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 692
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->getResourceId(Landroid/net/Uri;)Landroid/content/ContentResolver$OpenResourceIdResult;

    move-result-object v3

    .line 694
    .local v3, "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :try_start_0
    iget-object v6, v3, Landroid/content/ContentResolver$OpenResourceIdResult;->r:Landroid/content/res/Resources;

    iget v7, v3, Landroid/content/ContentResolver$OpenResourceIdResult;->id:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 695
    .local v5, "stream":Ljava/io/InputStream;
    return-object v5

    .line 696
    .end local v5    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 697
    .local v1, "ex":Landroid/content/res/Resources$NotFoundException;
    new-instance v6, Ljava/io/FileNotFoundException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Resource does not exist: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 699
    .end local v1    # "ex":Landroid/content/res/Resources$NotFoundException;
    .end local v3    # "r":Landroid/content/ContentResolver$OpenResourceIdResult;
    :cond_0
    const-string/jumbo v7, "file"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 702
    new-instance v6, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v6

    .line 704
    :cond_1
    const-string/jumbo v7, "r"

    invoke-virtual {p0, p1, v7, v6}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v2

    .line 706
    .local v2, "fd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    :cond_2
    return-object v6

    .line 707
    :catch_1
    move-exception v0

    .line 708
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Ljava/io/FileNotFoundException;

    const-string/jumbo v7, "Unable to create stream"

    invoke-direct {v6, v7}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public final openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 720
    const-string/jumbo v0, "w"

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 744
    invoke-virtual {p0, p1, p2, v2}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 746
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->createOutputStream()Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    return-object v2

    .line 747
    :catch_0
    move-exception v0

    .line 748
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/FileNotFoundException;

    const-string/jumbo v3, "Unable to create stream"

    invoke-direct {v2, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1091
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/ContentResolver;->openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final openTypedAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 20
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1128
    const-string/jumbo v3, "uri"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    const-string/jumbo v3, "mimeType"

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 1132
    .local v2, "unstableProvider":Landroid/content/IContentProvider;
    if-nez v2, :cond_0

    .line 1133
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No content provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1135
    :cond_0
    const/4 v8, 0x0

    .line 1136
    .local v8, "stableProvider":Landroid/content/IContentProvider;
    const/16 v19, 0x0

    .line 1139
    .local v19, "fd":Landroid/content/res/AssetFileDescriptor;
    const/4 v7, 0x0

    .line 1140
    .local v7, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    if-eqz p4, :cond_1

    .line 1141
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 1142
    invoke-interface {v2}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v7

    .line 1143
    .local v7, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1148
    .end local v7    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 1147
    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v19

    .line 1149
    .local v19, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v19, :cond_b

    .line 1151
    const/4 v3, 0x0

    .line 1192
    if-eqz p4, :cond_2

    .line 1193
    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1198
    :cond_2
    if-eqz v2, :cond_3

    .line 1199
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 1151
    :cond_3
    return-object v3

    .line 1153
    .local v19, "fd":Landroid/content/res/AssetFileDescriptor;
    :catch_0
    move-exception v16

    .line 1157
    .local v16, "e":Landroid/os/DeadObjectException;
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 1158
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v8

    .line 1159
    .local v8, "stableProvider":Landroid/content/IContentProvider;
    if-nez v8, :cond_7

    .line 1160
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No content provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1185
    .end local v2    # "unstableProvider":Landroid/content/IContentProvider;
    .end local v8    # "stableProvider":Landroid/content/IContentProvider;
    .end local v16    # "e":Landroid/os/DeadObjectException;
    .end local v19    # "fd":Landroid/content/res/AssetFileDescriptor;
    :catch_1
    move-exception v17

    .line 1187
    .local v17, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v3, Ljava/io/FileNotFoundException;

    .line 1188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed opening content provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1187
    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1191
    .end local v17    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    .line 1192
    if-eqz p4, :cond_4

    .line 1193
    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1195
    :cond_4
    if-eqz v8, :cond_5

    .line 1196
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1198
    :cond_5
    if-eqz v2, :cond_6

    .line 1199
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 1191
    :cond_6
    throw v3

    .line 1163
    .restart local v2    # "unstableProvider":Landroid/content/IContentProvider;
    .restart local v8    # "stableProvider":Landroid/content/IContentProvider;
    .restart local v16    # "e":Landroid/os/DeadObjectException;
    .restart local v19    # "fd":Landroid/content/res/AssetFileDescriptor;
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object v13, v7

    .line 1162
    invoke-interface/range {v8 .. v13}, Landroid/content/IContentProvider;->openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v19

    .line 1164
    .local v19, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v19, :cond_b

    .line 1166
    const/4 v3, 0x0

    .line 1192
    if-eqz p4, :cond_8

    .line 1193
    const/4 v4, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1195
    :cond_8
    if-eqz v8, :cond_9

    .line 1196
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1198
    :cond_9
    if-eqz v2, :cond_a

    .line 1199
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 1166
    :cond_a
    return-object v3

    .line 1170
    .end local v8    # "stableProvider":Landroid/content/IContentProvider;
    .end local v16    # "e":Landroid/os/DeadObjectException;
    :cond_b
    if-nez v8, :cond_c

    .line 1171
    :try_start_5
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v8

    .line 1173
    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 1174
    const/4 v2, 0x0

    .line 1175
    .local v2, "unstableProvider":Landroid/content/IContentProvider;
    new-instance v11, Landroid/content/ContentResolver$ParcelFileDescriptorInner;

    .line 1176
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 1175
    move-object/from16 v0, p0

    invoke-direct {v11, v0, v3, v8}, Landroid/content/ContentResolver$ParcelFileDescriptorInner;-><init>(Landroid/content/ContentResolver;Landroid/os/ParcelFileDescriptor;Landroid/content/IContentProvider;)V

    .line 1180
    .local v11, "pfd":Landroid/os/ParcelFileDescriptor;
    const/4 v8, 0x0

    .line 1182
    .local v8, "stableProvider":Landroid/content/IContentProvider;
    new-instance v10, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v12

    .line 1183
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v14

    .line 1182
    invoke-direct/range {v10 .. v15}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1192
    if-eqz p4, :cond_d

    .line 1193
    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 1182
    :cond_d
    return-object v10

    .line 1189
    .end local v2    # "unstableProvider":Landroid/content/IContentProvider;
    .end local v8    # "stableProvider":Landroid/content/IContentProvider;
    .end local v11    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v19    # "fd":Landroid/content/res/AssetFileDescriptor;
    :catch_2
    move-exception v18

    .line 1190
    .local v18, "e":Ljava/io/FileNotFoundException;
    :try_start_6
    throw v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public putCache(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "key"    # Landroid/net/Uri;
    .param p2, "value"    # Landroid/os/Bundle;

    .prologue
    .line 2524
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2525
    iget-object v3, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 2524
    invoke-interface {v1, v2, p1, p2, v3}, Landroid/content/IContentService;->putCache(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2522
    return-void

    .line 2526
    :catch_0
    move-exception v0

    .line 2527
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/annotation/RequiresPermission$Read;
        .end annotation
    .end param
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 474
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 27
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/annotation/RequiresPermission$Read;
        .end annotation
    .end param
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 515
    const-string/jumbo v5, "uri"

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v4

    .line 517
    .local v4, "unstableProvider":Landroid/content/IContentProvider;
    if-nez v4, :cond_0

    .line 518
    const/4 v5, 0x0

    return-object v5

    .line 520
    :cond_0
    const/4 v12, 0x0

    .line 521
    .local v12, "stableProvider":Landroid/content/IContentProvider;
    const/16 v23, 0x0

    .line 523
    .local v23, "qCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 525
    .local v24, "startTime":J
    const/4 v11, 0x0

    .line 526
    .local v11, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    if-eqz p6, :cond_1

    .line 527
    invoke-virtual/range {p6 .. p6}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    .line 528
    invoke-interface {v4}, Landroid/content/IContentProvider;->createCancellationSignal()Landroid/os/ICancellationSignal;

    move-result-object v11

    .line 529
    .local v11, "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    .end local v11    # "remoteCancellationSignal":Landroid/os/ICancellationSignal;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-interface/range {v4 .. v11}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v23

    .line 546
    .end local v12    # "stableProvider":Landroid/content/IContentProvider;
    .local v23, "qCursor":Landroid/database/Cursor;
    :goto_0
    if-nez v23, :cond_a

    .line 547
    const/4 v5, 0x0

    .line 567
    if-eqz v23, :cond_2

    .line 568
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 570
    :cond_2
    if-eqz p6, :cond_3

    .line 571
    const/4 v6, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 573
    :cond_3
    if-eqz v4, :cond_4

    .line 574
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 576
    :cond_4
    if-eqz v12, :cond_5

    .line 577
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 547
    :cond_5
    return-object v5

    .line 534
    .restart local v12    # "stableProvider":Landroid/content/IContentProvider;
    .local v23, "qCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v20

    .line 538
    .local v20, "e":Landroid/os/DeadObjectException;
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 539
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    .line 540
    .local v12, "stableProvider":Landroid/content/IContentProvider;
    if-nez v12, :cond_9

    .line 541
    const/4 v5, 0x0

    .line 570
    if-eqz p6, :cond_6

    .line 571
    const/4 v6, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 573
    :cond_6
    if-eqz v4, :cond_7

    .line 574
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 576
    :cond_7
    if-eqz v12, :cond_8

    .line 577
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 541
    :cond_8
    return-object v5

    .line 543
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    move-object/from16 v19, v11

    invoke-interface/range {v12 .. v19}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v23

    .local v23, "qCursor":Landroid/database/Cursor;
    goto :goto_0

    .line 551
    .end local v12    # "stableProvider":Landroid/content/IContentProvider;
    .end local v20    # "e":Landroid/os/DeadObjectException;
    :cond_a
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->getCount()I

    .line 552
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v14, v6, v24

    .local v14, "durationMillis":J
    move-object/from16 v13, p0

    move-object/from16 v16, p1

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p5

    .line 553
    invoke-direct/range {v13 .. v19}, Landroid/content/ContentResolver;->maybeLogQueryToEventLog(JLandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    if-eqz v12, :cond_d

    move-object/from16 v22, v12

    .line 558
    .local v22, "provider":Landroid/content/IContentProvider;
    :goto_1
    new-instance v26, Landroid/content/ContentResolver$CursorWrapperInner;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/content/ContentResolver$CursorWrapperInner;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;Landroid/content/IContentProvider;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 559
    .local v26, "wrapper":Landroid/content/ContentResolver$CursorWrapperInner;
    const/4 v12, 0x0

    .line 560
    .local v12, "stableProvider":Landroid/content/IContentProvider;
    const/16 v23, 0x0

    .line 570
    .local v23, "qCursor":Landroid/database/Cursor;
    if-eqz p6, :cond_b

    .line 571
    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v5}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 573
    :cond_b
    if-eqz v4, :cond_c

    .line 574
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 561
    :cond_c
    return-object v26

    .line 557
    .end local v12    # "stableProvider":Landroid/content/IContentProvider;
    .end local v22    # "provider":Landroid/content/IContentProvider;
    .end local v26    # "wrapper":Landroid/content/ContentResolver$CursorWrapperInner;
    .local v23, "qCursor":Landroid/database/Cursor;
    :cond_d
    :try_start_4
    invoke-virtual/range {p0 .. p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v22

    .restart local v22    # "provider":Landroid/content/IContentProvider;
    goto :goto_1

    .line 562
    .end local v14    # "durationMillis":J
    .end local v22    # "provider":Landroid/content/IContentProvider;
    .end local v23    # "qCursor":Landroid/database/Cursor;
    .end local v24    # "startTime":J
    :catch_1
    move-exception v21

    .line 565
    .local v21, "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    .line 567
    if-eqz v23, :cond_e

    .line 568
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 570
    :cond_e
    if-eqz p6, :cond_f

    .line 571
    const/4 v6, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 573
    :cond_f
    if-eqz v4, :cond_10

    .line 574
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 576
    :cond_10
    if-eqz v12, :cond_11

    .line 577
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 565
    :cond_11
    return-object v5

    .line 566
    .end local v21    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    .line 567
    if-eqz v23, :cond_12

    .line 568
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    .line 570
    :cond_12
    if-eqz p6, :cond_13

    .line 571
    const/4 v6, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v6}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    .line 573
    :cond_13
    if-eqz v4, :cond_14

    .line 574
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    .line 576
    :cond_14
    if-eqz v12, :cond_15

    .line 577
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 566
    :cond_15
    throw v5
.end method

.method public final registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendants"    # Z
    .param p3, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 1643
    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    const-string/jumbo v0, "observer"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1646
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 1649
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {p1, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v1

    .line 1645
    invoke-virtual {p0, v0, p2, p3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1642
    return-void
.end method

.method public final registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "notifyForDescendents"    # Z
    .param p3, "observer"    # Landroid/database/ContentObserver;
    .param p4, "userHandle"    # I

    .prologue
    .line 1656
    :try_start_0
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v1

    .line 1657
    invoke-virtual {p3}, Landroid/database/ContentObserver;->getContentObserver()Landroid/database/IContentObserver;

    move-result-object v2

    .line 1656
    invoke-interface {v1, p1, p2, v2, p4}, Landroid/content/IContentService;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1654
    :goto_0
    return-void

    .line 1658
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public releasePersistableUriPermission(Landroid/net/Uri;I)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    .prologue
    .line 1811
    const-string/jumbo v1, "uri"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1813
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1814
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->resolveUserId(Landroid/net/Uri;)I

    move-result v3

    .line 1813
    invoke-interface {v1, v2, p2, v3}, Landroid/app/IActivityManager;->releasePersistableUriPermission(Landroid/net/Uri;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1810
    :goto_0
    return-void

    .line 1815
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public abstract releaseProvider(Landroid/content/IContentProvider;)Z
.end method

.method public abstract releaseUnstableProvider(Landroid/content/IContentProvider;)Z
.end method

.method public resolveUserId(Landroid/net/Uri;)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2697
    iget-object v0, p0, Landroid/content/ContentResolver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v0

    return v0
.end method

.method public startSync(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1876
    const/4 v0, 0x0

    .line 1877
    .local v0, "account":Landroid/accounts/Account;
    if-eqz p2, :cond_1

    .line 1878
    const-string/jumbo v3, "account"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1879
    .local v1, "accountName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1881
    new-instance v0, Landroid/accounts/Account;

    .end local v0    # "account":Landroid/accounts/Account;
    const-string/jumbo v3, "com.google"

    invoke-direct {v0, v1, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    :cond_0
    const-string/jumbo v3, "account"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1885
    .end local v1    # "accountName":Ljava/lang/String;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-static {v0, v2, p2}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1875
    return-void
.end method

.method public takePersistableUriPermission(Landroid/net/Uri;I)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "modeFlags"    # I

    .prologue
    .line 1793
    const-string/jumbo v1, "uri"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1795
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1796
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->resolveUserId(Landroid/net/Uri;)I

    move-result v3

    .line 1795
    invoke-interface {v1, v2, p2, v3}, Landroid/app/IActivityManager;->takePersistableUriPermission(Landroid/net/Uri;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1792
    :goto_0
    return-void

    .line 1797
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public final uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 649
    const-string/jumbo v2, "url"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 651
    .local v1, "provider":Landroid/content/IContentProvider;
    if-nez v1, :cond_0

    .line 652
    return-object v3

    .line 656
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/IContentProvider;->uncanonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 662
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 656
    return-object v2

    .line 657
    :catch_0
    move-exception v0

    .line 662
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 660
    return-object v3

    .line 661
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    .line 662
    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 661
    throw v2
.end method

.method public final unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 1669
    const-string/jumbo v2, "observer"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1671
    :try_start_0
    invoke-virtual {p1}, Landroid/database/ContentObserver;->releaseContentObserver()Landroid/database/IContentObserver;

    move-result-object v0

    .line 1672
    .local v0, "contentObserver":Landroid/database/IContentObserver;
    if-eqz v0, :cond_0

    .line 1673
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/content/IContentService;->unregisterContentObserver(Landroid/database/IContentObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1668
    .end local v0    # "contentObserver":Landroid/database/IContentObserver;
    :cond_0
    :goto_0
    return-void

    .line 1676
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public abstract unstableProviderDied(Landroid/content/IContentProvider;)V
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
        .annotation build Landroid/annotation/RequiresPermission$Write;
        .end annotation
    .end param
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 1402
    const-string/jumbo v1, "uri"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1403
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 1404
    .local v0, "provider":Landroid/content/IContentProvider;
    if-nez v0, :cond_0

    .line 1405
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown URI "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1408
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1409
    .local v10, "startTime":J
    iget-object v1, p0, Landroid/content/ContentResolver;->mPackageName:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1410
    .local v8, "rowsUpdated":I
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v10

    .line 1411
    .local v2, "durationMillis":J
    const-string/jumbo v5, "update"

    move-object v1, p0

    move-object v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/content/ContentResolver;->maybeLogUpdateToEventLog(JLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1418
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1412
    return v8

    .line 1413
    .end local v2    # "durationMillis":J
    .end local v8    # "rowsUpdated":I
    .end local v10    # "startTime":J
    :catch_0
    move-exception v7

    .line 1416
    .local v7, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    .line 1418
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1416
    return v1

    .line 1417
    .end local v7    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 1418
    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    .line 1417
    throw v1
.end method
