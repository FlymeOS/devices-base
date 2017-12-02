.class Lcom/android/server/print/PrintManagerService$PrintManagerImpl;
.super Landroid/print/IPrintManager$Stub;
.source "PrintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/PrintManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrintManagerImpl"
.end annotation


# static fields
.field private static final BACKGROUND_USER_ID:I = -0xa


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/print/UserState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/print/PrintManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZ)Lcom/android/server/print/UserState;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "lowPriority"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->handleUserStopped(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->handleUserUnlocked(I)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/print/PrintManagerService;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/print/PrintManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->this$0:Lcom/android/server/print/PrintManagerService;

    invoke-direct {p0}, Landroid/print/IPrintManager$Stub;-><init>()V

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    .line 107
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    .line 110
    iput-object p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    .line 111
    const-string/jumbo v0, "user"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    .line 112
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->registerContentObservers()V

    .line 113
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->registerBroadcastReceivers()V

    .line 109
    return-void
.end method

.method private getCurrentUserId()I
    .locals 3

    .prologue
    .line 932
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 934
    .local v0, "identity":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 936
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 934
    return v2

    .line 935
    :catchall_0
    move-exception v2

    .line 936
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 935
    throw v2
.end method

.method private getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    .locals 4
    .param p1, "userId"    # I
    .param p2, "lowPriority"    # Z

    .prologue
    .line 815
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 816
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 817
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " must be unlocked for printing to be available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 816
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 820
    :cond_0
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/UserState;

    .line 821
    .local v0, "userState":Lcom/android/server/print/UserState;
    if-nez v0, :cond_1

    .line 822
    new-instance v0, Lcom/android/server/print/UserState;

    .end local v0    # "userState":Lcom/android/server/print/UserState;
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/android/server/print/UserState;-><init>(Landroid/content/Context;ILjava/lang/Object;Z)V

    .line 823
    .restart local v0    # "userState":Lcom/android/server/print/UserState;
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 826
    :cond_1
    if-nez p2, :cond_2

    .line 827
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->increasePriority()V

    .line 830
    :cond_2
    return-object v0
.end method

.method private handleUserStopped(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 857
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;-><init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 854
    return-void
.end method

.method private handleUserUnlocked(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 836
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;-><init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 833
    return-void
.end method

.method private registerBroadcastReceivers()V
    .locals 5

    .prologue
    .line 681
    new-instance v0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;-><init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)V

    .line 810
    .local v0, "monitor":Lcom/android/internal/content/PackageMonitor;
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 811
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    .line 810
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 680
    return-void
.end method

.method private registerContentObservers()V
    .locals 5

    .prologue
    .line 658
    const-string/jumbo v2, "disabled_print_services"

    .line 657
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 659
    .local v0, "enabledPrintServicesUri":Landroid/net/Uri;
    new-instance v1, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;-><init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;Landroid/os/Handler;Landroid/net/Uri;)V

    .line 676
    .local v1, "observer":Landroid/database/ContentObserver;
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 677
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 676
    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 656
    return-void
.end method

.method private resolveCallingAppEnforcingPermissions(I)I
    .locals 5
    .param p1, "appId"    # I

    .prologue
    .line 889
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 890
    .local v1, "callingUid":I
    if-eqz v1, :cond_0

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1

    .line 892
    :cond_0
    return p1

    .line 891
    :cond_1
    const/16 v2, 0x7d0

    if-eq v1, v2, :cond_0

    .line 894
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 895
    .local v0, "callingAppId":I
    if-ne p1, v0, :cond_2

    .line 896
    return p1

    .line 898
    :cond_2
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    .line 899
    const-string/jumbo v3, "com.android.printspooler.permission.ACCESS_ALL_PRINT_JOBS"

    .line 898
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 901
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Call from app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " as app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 902
    const-string/jumbo v4, " without com.android.printspooler.permission"

    .line 901
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 903
    const-string/jumbo v4, ".ACCESS_ALL_PRINT_JOBS"

    .line 901
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 905
    :cond_3
    return p1
.end method

.method private resolveCallingPackageNameEnforcingSecurity(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 920
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 921
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 920
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 922
    .local v2, "packages":[Ljava/lang/String;
    array-length v1, v2

    .line 923
    .local v1, "packageCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 924
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 925
    return-object p1

    .line 923
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 928
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "packageName has to belong to the caller"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private resolveCallingProfileParentLocked(I)I
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 872
    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v3

    if-eq p1, v3, :cond_1

    .line 873
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 875
    .local v0, "identity":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 876
    .local v2, "parent":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_0

    .line 877
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 882
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 877
    return v3

    .line 879
    :cond_0
    const/16 v3, -0xa

    .line 882
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 879
    return v3

    .line 881
    .end local v2    # "parent":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v3

    .line 882
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 881
    throw v3

    .line 885
    .end local v0    # "identity":J
    :cond_1
    return p1
.end method

.method private resolveCallingUserEnforcingPermissions(I)I
    .locals 9
    .param p1, "userId"    # I

    .prologue
    .line 910
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 911
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const-string/jumbo v6, ""

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    move v3, p1

    .line 910
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 912
    :catch_0
    move-exception v8

    .line 915
    .local v8, "re":Landroid/os/RemoteException;
    return p1
.end method


# virtual methods
.method public addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;II)V
    .locals 8
    .param p1, "listener"    # Landroid/print/IPrintJobStateChangeListener;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 494
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "listener":Landroid/print/IPrintJobStateChangeListener;
    check-cast p1, Landroid/print/IPrintJobStateChangeListener;

    .line 496
    .restart local p1    # "listener":Landroid/print/IPrintJobStateChangeListener;
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v3

    .line 499
    .local v3, "resolvedUserId":I
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 501
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v5

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eq v5, v7, :cond_0

    monitor-exit v6

    .line 502
    return-void

    .line 504
    :cond_0
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result v2

    .line 505
    .local v2, "resolvedAppId":I
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .local v4, "userState":Lcom/android/server/print/UserState;
    monitor-exit v6

    .line 507
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 509
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v4, p1, v2}, Lcom/android/server/print/UserState;->addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 511
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 493
    return-void

    .line 499
    .end local v0    # "identity":J
    .end local v2    # "resolvedAppId":I
    .end local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 510
    .restart local v0    # "identity":J
    .restart local v2    # "resolvedAppId":I
    .restart local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v5

    .line 511
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 510
    throw v5
.end method

.method public addPrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;I)V
    .locals 7
    .param p1, "listener"    # Landroid/printservice/recommendation/IRecommendationsChangeListener;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 585
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "listener":Landroid/printservice/recommendation/IRecommendationsChangeListener;
    check-cast p1, Landroid/printservice/recommendation/IRecommendationsChangeListener;

    .line 587
    .restart local p1    # "listener":Landroid/printservice/recommendation/IRecommendationsChangeListener;
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 589
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 591
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v4, v6, :cond_0

    monitor-exit v5

    .line 592
    return-void

    .line 594
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    .line 596
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 598
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->addPrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 600
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 584
    return-void

    .line 589
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 599
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    .line 600
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 599
    throw v4
.end method

.method public addPrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;I)V
    .locals 7
    .param p1, "listener"    # Landroid/print/IPrintServicesChangeListener;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 540
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "listener":Landroid/print/IPrintServicesChangeListener;
    check-cast p1, Landroid/print/IPrintServicesChangeListener;

    .line 542
    .restart local p1    # "listener":Landroid/print/IPrintServicesChangeListener;
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 544
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 546
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v4, v6, :cond_0

    monitor-exit v5

    .line 547
    return-void

    .line 549
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    .line 551
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 553
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->addPrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 555
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 539
    return-void

    .line 544
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 554
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    .line 555
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 554
    throw v4
.end method

.method public cancelPrintJob(Landroid/print/PrintJobId;II)V
    .locals 8
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 214
    if-nez p1, :cond_0

    .line 215
    return-void

    .line 218
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v3

    .line 221
    .local v3, "resolvedUserId":I
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 223
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v5

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eq v5, v7, :cond_1

    monitor-exit v6

    .line 224
    return-void

    .line 226
    :cond_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result v2

    .line 227
    .local v2, "resolvedAppId":I
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .local v4, "userState":Lcom/android/server/print/UserState;
    monitor-exit v6

    .line 229
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 231
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v4, p1, v2}, Lcom/android/server/print/UserState;->cancelPrintJob(Landroid/print/PrintJobId;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 233
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 213
    return-void

    .line 221
    .end local v0    # "identity":J
    .end local v2    # "resolvedAppId":I
    .end local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 232
    .restart local v0    # "identity":J
    .restart local v2    # "resolvedAppId":I
    .restart local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v5

    .line 233
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 232
    throw v5
.end method

.method public createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
    .locals 7
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .param p2, "userId"    # I

    .prologue
    .line 340
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    check-cast p1, Landroid/print/IPrinterDiscoveryObserver;

    .line 342
    .restart local p1    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 344
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 346
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v4, v6, :cond_0

    monitor-exit v5

    .line 347
    return-void

    .line 349
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    .line 351
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 353
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 355
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 339
    return-void

    .line 344
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 354
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    .line 355
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 354
    throw v4
.end method

.method public destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
    .locals 7
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .param p2, "userId"    # I

    .prologue
    .line 362
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    check-cast p1, Landroid/print/IPrinterDiscoveryObserver;

    .line 364
    .restart local p1    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 366
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 368
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v4, v6, :cond_0

    monitor-exit v5

    .line 369
    return-void

    .line 371
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    .line 373
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 375
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 377
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 361
    return-void

    .line 366
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 376
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    .line 377
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 376
    throw v4
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 629
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    check-cast p1, Ljava/io/FileDescriptor;

    .line 630
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "pw":Ljava/io/PrintWriter;
    check-cast p2, Ljava/io/PrintWriter;

    .line 632
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 634
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Permission Denial: can\'t dump PrintManager from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 635
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 634
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 636
    const-string/jumbo v6, ", uid="

    .line 634
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 636
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 634
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 637
    return-void

    .line 640
    :cond_0
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 641
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    .line 643
    .local v2, "identity":J
    :try_start_1
    const-string/jumbo v5, "PRINT MANAGER STATE (dumpsys print)"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 644
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 645
    .local v4, "userStateCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 646
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/UserState;

    .line 647
    .local v1, "userState":Lcom/android/server/print/UserState;
    const-string/jumbo v5, ""

    invoke-virtual {v1, p1, p2, v5}, Lcom/android/server/print/UserState;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 648
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 645
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 651
    .end local v1    # "userState":Lcom/android/server/print/UserState;
    :cond_1
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v6

    .line 628
    return-void

    .line 650
    .end local v0    # "i":I
    .end local v4    # "userStateCount":I
    :catchall_0
    move-exception v5

    .line 651
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 650
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 640
    .end local v2    # "identity":J
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public getCustomPrinterIcon(Landroid/print/PrinterId;I)Landroid/graphics/drawable/Icon;
    .locals 7
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "userId"    # I

    .prologue
    .line 193
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "printerId":Landroid/print/PrinterId;
    check-cast p1, Landroid/print/PrinterId;

    .line 195
    .restart local p1    # "printerId":Landroid/print/PrinterId;
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 197
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 199
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v4, v6, :cond_0

    .line 200
    const/4 v4, 0x0

    monitor-exit v5

    return-object v4

    .line 202
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    .line 204
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 206
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    .line 208
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 206
    return-object v4

    .line 197
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 207
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    .line 208
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 207
    throw v4
.end method

.method public getPrintJobInfo(Landroid/print/PrintJobId;II)Landroid/print/PrintJobInfo;
    .locals 9
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v8, 0x0

    .line 168
    if-nez p1, :cond_0

    .line 169
    return-object v8

    .line 172
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v3

    .line 175
    .local v3, "resolvedUserId":I
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 177
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v5

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eq v5, v7, :cond_1

    monitor-exit v6

    .line 178
    return-object v8

    .line 180
    :cond_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result v2

    .line 181
    .local v2, "resolvedAppId":I
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .local v4, "userState":Lcom/android/server/print/UserState;
    monitor-exit v6

    .line 183
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 185
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v4, p1, v2}, Lcom/android/server/print/UserState;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v5

    .line 187
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 185
    return-object v5

    .line 175
    .end local v0    # "identity":J
    .end local v2    # "resolvedAppId":I
    .end local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 186
    .restart local v0    # "identity":J
    .restart local v2    # "resolvedAppId":I
    .restart local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v5

    .line 187
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 186
    throw v5
.end method

.method public getPrintJobInfos(II)Ljava/util/List;
    .locals 8
    .param p1, "appId"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v3

    .line 150
    .local v3, "resolvedUserId":I
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 152
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v5

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eq v5, v7, :cond_0

    .line 153
    const/4 v5, 0x0

    monitor-exit v6

    return-object v5

    .line 155
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result v2

    .line 156
    .local v2, "resolvedAppId":I
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .local v4, "userState":Lcom/android/server/print/UserState;
    monitor-exit v6

    .line 158
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 160
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v4, v2}, Lcom/android/server/print/UserState;->getPrintJobInfos(I)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v5

    .line 162
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 160
    return-object v5

    .line 150
    .end local v0    # "identity":J
    .end local v2    # "resolvedAppId":I
    .end local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 161
    .restart local v0    # "identity":J
    .restart local v2    # "resolvedAppId":I
    .restart local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v5

    .line 162
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 161
    throw v5
.end method

.method public getPrintServiceRecommendations(I)Ljava/util/List;
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 322
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 324
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v4, v6, :cond_0

    .line 325
    const/4 v4, 0x0

    monitor-exit v5

    return-object v4

    .line 327
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    .line 329
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 331
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3}, Lcom/android/server/print/UserState;->getPrintServiceRecommendations()Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    .line 333
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 331
    return-object v4

    .line 322
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 332
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    .line 333
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 332
    throw v4
.end method

.method public getPrintServices(II)Ljava/util/List;
    .locals 7
    .param p1, "selectionFlags"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    const/4 v4, 0x3

    .line 264
    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 267
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 269
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 271
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v4, v6, :cond_0

    .line 272
    const/4 v4, 0x0

    monitor-exit v5

    return-object v4

    .line 274
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    .line 276
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 278
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->getPrintServices(I)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    .line 280
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 278
    return-object v4

    .line 269
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 279
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    .line 280
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 279
    throw v4
.end method

.method public print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;II)Landroid/os/Bundle;
    .locals 9
    .param p1, "printJobName"    # Ljava/lang/String;
    .param p2, "adapter"    # Landroid/print/IPrintDocumentAdapter;
    .param p3, "attributes"    # Landroid/print/PrintAttributes;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "appId"    # I
    .param p6, "userId"    # I

    .prologue
    .line 119
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .end local p1    # "printJobName":Ljava/lang/String;
    check-cast p1, Ljava/lang/String;

    .line 120
    .restart local p1    # "printJobName":Ljava/lang/String;
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "adapter":Landroid/print/IPrintDocumentAdapter;
    check-cast p2, Landroid/print/IPrintDocumentAdapter;

    .line 121
    .restart local p2    # "adapter":Landroid/print/IPrintDocumentAdapter;
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p4

    .end local p4    # "packageName":Ljava/lang/String;
    check-cast p4, Ljava/lang/String;

    .line 123
    .restart local p4    # "packageName":Ljava/lang/String;
    invoke-direct {p0, p6}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v8

    .line 127
    .local v8, "resolvedUserId":I
    iget-object v2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 129
    :try_start_0
    invoke-direct {p0, v8}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eq v1, v3, :cond_0

    .line 130
    const/4 v1, 0x0

    monitor-exit v2

    return-object v1

    .line 132
    :cond_0
    :try_start_1
    invoke-direct {p0, p5}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result v5

    .line 133
    .local v5, "resolvedAppId":I
    invoke-direct {p0, p4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingPackageNameEnforcingSecurity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "resolvedPackageName":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-direct {p0, v8, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .local v0, "userState":Lcom/android/server/print/UserState;
    monitor-exit v2

    .line 136
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .local v6, "identity":J
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 138
    :try_start_2
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/print/UserState;->print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;I)Landroid/os/Bundle;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    .line 141
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 138
    return-object v1

    .line 127
    .end local v0    # "userState":Lcom/android/server/print/UserState;
    .end local v4    # "resolvedPackageName":Ljava/lang/String;
    .end local v5    # "resolvedAppId":I
    .end local v6    # "identity":J
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 140
    .restart local v0    # "userState":Lcom/android/server/print/UserState;
    .restart local v4    # "resolvedPackageName":Ljava/lang/String;
    .restart local v5    # "resolvedAppId":I
    .restart local v6    # "identity":J
    :catchall_1
    move-exception v1

    .line 141
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 140
    throw v1
.end method

.method public removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    .locals 7
    .param p1, "listener"    # Landroid/print/IPrintJobStateChangeListener;
    .param p2, "userId"    # I

    .prologue
    .line 518
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "listener":Landroid/print/IPrintJobStateChangeListener;
    check-cast p1, Landroid/print/IPrintJobStateChangeListener;

    .line 520
    .restart local p1    # "listener":Landroid/print/IPrintJobStateChangeListener;
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 522
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 524
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v4, v6, :cond_0

    monitor-exit v5

    .line 525
    return-void

    .line 527
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    .line 529
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 531
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 533
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 517
    return-void

    .line 522
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 532
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    .line 533
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 532
    throw v4
.end method

.method public removePrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;I)V
    .locals 7
    .param p1, "listener"    # Landroid/printservice/recommendation/IRecommendationsChangeListener;
    .param p2, "userId"    # I

    .prologue
    .line 607
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "listener":Landroid/printservice/recommendation/IRecommendationsChangeListener;
    check-cast p1, Landroid/printservice/recommendation/IRecommendationsChangeListener;

    .line 609
    .restart local p1    # "listener":Landroid/printservice/recommendation/IRecommendationsChangeListener;
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 611
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 614
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v4, v6, :cond_0

    monitor-exit v5

    .line 615
    return-void

    .line 617
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    .line 619
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 621
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->removePrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 623
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 606
    return-void

    .line 611
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 622
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    .line 623
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 622
    throw v4
.end method

.method public removePrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;I)V
    .locals 7
    .param p1, "listener"    # Landroid/print/IPrintServicesChangeListener;
    .param p2, "userId"    # I

    .prologue
    .line 562
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "listener":Landroid/print/IPrintServicesChangeListener;
    check-cast p1, Landroid/print/IPrintServicesChangeListener;

    .line 564
    .restart local p1    # "listener":Landroid/print/IPrintServicesChangeListener;
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 566
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 568
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v4, v6, :cond_0

    monitor-exit v5

    .line 569
    return-void

    .line 571
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    .line 573
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 575
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->removePrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 577
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 561
    return-void

    .line 566
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 576
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    .line 577
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 576
    throw v4
.end method

.method public restartPrintJob(Landroid/print/PrintJobId;II)V
    .locals 8
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 239
    if-nez p1, :cond_0

    .line 240
    return-void

    .line 243
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v3

    .line 246
    .local v3, "resolvedUserId":I
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 248
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v5

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eq v5, v7, :cond_1

    monitor-exit v6

    .line 249
    return-void

    .line 251
    :cond_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result v2

    .line 252
    .local v2, "resolvedAppId":I
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .local v4, "userState":Lcom/android/server/print/UserState;
    monitor-exit v6

    .line 254
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 256
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v4, p1, v2}, Lcom/android/server/print/UserState;->restartPrintJob(Landroid/print/PrintJobId;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 258
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 238
    return-void

    .line 246
    .end local v0    # "identity":J
    .end local v2    # "resolvedAppId":I
    .end local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 257
    .restart local v0    # "identity":J
    .restart local v2    # "resolvedAppId":I
    .restart local v4    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v5

    .line 258
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 257
    throw v5
.end method

.method public setPrintServiceEnabled(Landroid/content/ComponentName;ZI)V
    .locals 9
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "isEnabled"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 286
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v4

    .line 287
    .local v4, "resolvedUserId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 290
    .local v0, "appId":I
    const/16 v6, 0x3e8

    if-eq v0, v6, :cond_0

    .line 291
    :try_start_0
    iget-object v6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 292
    const-string/jumbo v7, "com.android.printspooler"

    .line 291
    invoke-virtual {v6, v7, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v6

    .line 290
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    if-eq v0, v6, :cond_0

    .line 293
    new-instance v6, Ljava/lang/SecurityException;

    const-string/jumbo v7, "Only system and print spooler can call this"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :catch_0
    move-exception v1

    .line 296
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v6, "PrintManagerService"

    const-string/jumbo v7, "Could not verify caller"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    return-void

    .line 300
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "service":Landroid/content/ComponentName;
    check-cast p1, Landroid/content/ComponentName;

    .line 303
    .restart local p1    # "service":Landroid/content/ComponentName;
    iget-object v7, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 305
    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v6

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-eq v6, v8, :cond_1

    monitor-exit v7

    .line 306
    return-void

    .line 308
    :cond_1
    const/4 v6, 0x0

    :try_start_2
    invoke-direct {p0, v4, v6}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    .local v5, "userState":Lcom/android/server/print/UserState;
    monitor-exit v7

    .line 310
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 312
    .local v2, "identity":J
    :try_start_3
    invoke-virtual {v5, p1, p2}, Lcom/android/server/print/UserState;->setPrintServiceEnabled(Landroid/content/ComponentName;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 314
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 285
    return-void

    .line 303
    .end local v2    # "identity":J
    .end local v5    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 313
    .restart local v2    # "identity":J
    .restart local v5    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v6

    .line 314
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 313
    throw v6
.end method

.method public startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;I)V
    .locals 7
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/IPrinterDiscoveryObserver;",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 384
    .local p2, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    check-cast p1, Landroid/print/IPrinterDiscoveryObserver;

    .line 385
    .restart local p1    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    if-eqz p2, :cond_0

    .line 387
    const-string/jumbo v4, "PrinterId"

    .line 386
    invoke-static {p2, v4}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p2

    .end local p2    # "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    check-cast p2, Ljava/util/List;

    .line 390
    .restart local p2    # "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 392
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 394
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v4, v6, :cond_1

    monitor-exit v5

    .line 395
    return-void

    .line 397
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    .line 399
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 401
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1, p2}, Lcom/android/server/print/UserState;->startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 403
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 383
    return-void

    .line 392
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 402
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    .line 403
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 402
    throw v4
.end method

.method public startPrinterStateTracking(Landroid/print/PrinterId;I)V
    .locals 7
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "userId"    # I

    .prologue
    .line 451
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "printerId":Landroid/print/PrinterId;
    check-cast p1, Landroid/print/PrinterId;

    .line 453
    .restart local p1    # "printerId":Landroid/print/PrinterId;
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 455
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 457
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v4, v6, :cond_0

    monitor-exit v5

    .line 458
    return-void

    .line 460
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    .line 462
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 464
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->startPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 466
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 450
    return-void

    .line 455
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 465
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    .line 466
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 465
    throw v4
.end method

.method public stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;I)V
    .locals 7
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .param p2, "userId"    # I

    .prologue
    .line 409
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    check-cast p1, Landroid/print/IPrinterDiscoveryObserver;

    .line 411
    .restart local p1    # "observer":Landroid/print/IPrinterDiscoveryObserver;
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 413
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 415
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v4, v6, :cond_0

    monitor-exit v5

    .line 416
    return-void

    .line 418
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    .line 420
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 422
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 424
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 408
    return-void

    .line 413
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 423
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    .line 424
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 423
    throw v4
.end method

.method public stopPrinterStateTracking(Landroid/print/PrinterId;I)V
    .locals 7
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "userId"    # I

    .prologue
    .line 472
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "printerId":Landroid/print/PrinterId;
    check-cast p1, Landroid/print/PrinterId;

    .line 474
    .restart local p1    # "printerId":Landroid/print/PrinterId;
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 476
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 478
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v4, v6, :cond_0

    monitor-exit v5

    .line 479
    return-void

    .line 481
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    .line 483
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 485
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->stopPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 487
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 471
    return-void

    .line 476
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 486
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    .line 487
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 486
    throw v4
.end method

.method public validatePrinters(Ljava/util/List;I)V
    .locals 7
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 430
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    const-string/jumbo v4, "PrinterId"

    invoke-static {p1, v4}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    .end local p1    # "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    check-cast p1, Ljava/util/List;

    .line 432
    .restart local p1    # "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-direct {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result v2

    .line 434
    .local v2, "resolvedUserId":I
    iget-object v5, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 436
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v4

    invoke-direct {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eq v4, v6, :cond_0

    monitor-exit v5

    .line 437
    return-void

    .line 439
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v2, v4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .local v3, "userState":Lcom/android/server/print/UserState;
    monitor-exit v5

    .line 441
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 443
    .local v0, "identity":J
    :try_start_2
    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->validatePrinters(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 445
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 429
    return-void

    .line 434
    .end local v0    # "identity":J
    .end local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 444
    .restart local v0    # "identity":J
    .restart local v3    # "userState":Lcom/android/server/print/UserState;
    :catchall_1
    move-exception v4

    .line 445
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 444
    throw v4
.end method
