.class public Lcom/android/server/statusbar/StatusBarManagerService;
.super Lcom/android/internal/statusbar/IStatusBarService$Stub;
.source "StatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/statusbar/StatusBarManagerService$1;,
        Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    }
.end annotation


# static fields
.field private static final SPEW:Z = false

.field private static final TAG:Ljava/lang/String; = "StatusBarManagerService"


# instance fields
.field private volatile mBar:Lcom/android/internal/statusbar/IStatusBar;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDisableRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mDisabled1:I

.field private mDisabled2:I

.field private final mDockedStackBounds:Landroid/graphics/Rect;

.field private mDockedStackSysUiVisibility:I

.field private final mFullscreenStackBounds:Landroid/graphics/Rect;

.field private mFullscreenStackSysUiVisibility:I

.field private mHandler:Landroid/os/Handler;

.field private mIcons:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;"
        }
    .end annotation
.end field

.field private mImeBackDisposition:I

.field private mImeToken:Landroid/os/IBinder;

.field private mImeWindowVis:I

.field private final mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private final mLock:Ljava/lang/Object;

.field private mMenuVisible:Z

.field private mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

.field private mShowImeSwitcher:Z

.field private mSysUiVisToken:Landroid/os/IBinder;

.field private mSystemUiVisibility:I

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/server/notification/NotificationDelegate;
    .locals 1

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/statusbar/StatusBarManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/notification/NotificationDelegate;)Lcom/android/server/notification/NotificationDelegate;
    .locals 0

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/statusbar/StatusBarManagerService;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 0
    .param p1, "vis"    # I
    .param p2, "fullscreenStackVis"    # I
    .param p3, "dockedStackVis"    # I
    .param p4, "mask"    # I
    .param p5, "fullscreenBounds"    # Landroid/graphics/Rect;
    .param p6, "dockedBounds"    # Landroid/graphics/Rect;
    .param p7, "cause"    # Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p7}, Lcom/android/server/statusbar/StatusBarManagerService;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/statusbar/StatusBarManagerService;Z)V
    .locals 0
    .param p1, "menuVisible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService;->topAppWindowChanged(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;-><init>()V

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    .line 71
    iput v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled1:I

    .line 72
    iput v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled2:I

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    .line 76
    iput v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSystemUiVisibility:I

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mFullscreenStackBounds:Landroid/graphics/Rect;

    .line 80
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDockedStackBounds:Landroid/graphics/Rect;

    .line 81
    iput-boolean v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mMenuVisible:Z

    .line 82
    iput v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeWindowVis:I

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeToken:Landroid/os/IBinder;

    .line 116
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/statusbar/StatusBarManagerService$1;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    iput-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 107
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 110
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mInternalService:Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method private disableLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "what"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "whichFlag"    # I

    .prologue
    .line 477
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/statusbar/StatusBarManagerService;->manageDisableListLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 480
    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v1

    .line 481
    .local v1, "net1":I
    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v2

    .line 482
    .local v2, "net2":I
    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled1:I

    if-ne v1, v3, :cond_0

    iget v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled2:I

    if-eq v2, v3, :cond_1

    .line 483
    :cond_0
    iput v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled1:I

    .line 484
    iput v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled2:I

    .line 485
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/statusbar/StatusBarManagerService$2;

    invoke-direct {v4, p0, v1}, Lcom/android/server/statusbar/StatusBarManagerService$2;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 490
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v3, :cond_1

    .line 492
    :try_start_0
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v3, v1, v2}, Lcom/android/internal/statusbar/IStatusBar;->disable(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    :cond_1
    :goto_0
    return-void

    .line 493
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private enforceExpandStatusBar()V
    .locals 3

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.EXPAND_STATUS_BAR"

    .line 676
    const-string/jumbo v2, "StatusBarManagerService"

    .line 675
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    return-void
.end method

.method private enforceStatusBar()V
    .locals 3

    .prologue
    .line 670
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.STATUS_BAR"

    .line 671
    const-string/jumbo v2, "StatusBarManagerService"

    .line 670
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    return-void
.end method

.method private enforceStatusBarOrShell()V
    .locals 2

    .prologue
    .line 663
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_0

    .line 664
    return-void

    .line 666
    :cond_0
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 662
    return-void
.end method

.method private enforceStatusBarService()V
    .locals 3

    .prologue
    .line 680
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    .line 681
    const-string/jumbo v2, "StatusBarManagerService"

    .line 680
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    return-void
.end method

.method private setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 7
    .param p1, "vis"    # I
    .param p2, "fullscreenStackVis"    # I
    .param p3, "dockedStackVis"    # I
    .param p4, "mask"    # I
    .param p5, "fullscreenBounds"    # Landroid/graphics/Rect;
    .param p6, "dockedBounds"    # Landroid/graphics/Rect;
    .param p7, "cause"    # Ljava/lang/String;

    .prologue
    .line 620
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 624
    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 625
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/android/server/statusbar/StatusBarManagerService;->updateUiVisibilityLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 628
    iget v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    .line 629
    const/high16 v0, 0x3ff0000

    and-int v2, p1, v0

    .line 630
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    .line 631
    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p7

    .line 627
    invoke-direct/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 618
    return-void

    .line 624
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private topAppWindowChanged(Z)V
    .locals 3
    .param p1, "menuVisible"    # Z

    .prologue
    .line 563
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 567
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 568
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mMenuVisible:Z

    .line 569
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/statusbar/StatusBarManagerService$3;

    invoke-direct {v2, p0, p1}, Lcom/android/server/statusbar/StatusBarManagerService$3;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Z)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 562
    return-void

    .line 567
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private updateUiVisibilityLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 9
    .param p1, "vis"    # I
    .param p2, "fullscreenStackVis"    # I
    .param p3, "dockedStackVis"    # I
    .param p4, "mask"    # I
    .param p5, "fullscreenBounds"    # Landroid/graphics/Rect;
    .param p6, "dockedBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 638
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSystemUiVisibility:I

    if-ne v0, p1, :cond_0

    .line 639
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mFullscreenStackSysUiVisibility:I

    if-eq v0, p2, :cond_1

    .line 643
    :cond_0
    iput p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSystemUiVisibility:I

    .line 644
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mFullscreenStackSysUiVisibility:I

    .line 645
    iput p3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDockedStackSysUiVisibility:I

    .line 646
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mFullscreenStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 647
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 648
    iget-object v8, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService$5;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/statusbar/StatusBarManagerService$5;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 637
    :goto_0
    return-void

    .line 640
    :cond_1
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDockedStackSysUiVisibility:I

    if-ne v0, p3, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mFullscreenStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public addTile(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 388
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 390
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_0

    .line 392
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBar;->addQsTile(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 393
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public clearNotificationEffects()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 734
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 735
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 737
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2}, Lcom/android/server/notification/NotificationDelegate;->clearEffects()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 733
    return-void

    .line 738
    :catchall_0
    move-exception v2

    .line 739
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 738
    throw v2
.end method

.method public clickTile(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 412
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_0

    .line 414
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBar;->clickQsTile(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 415
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public collapsePanels()V
    .locals 2

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 367
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_0

    .line 369
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBar;->animateCollapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 434
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 433
    return-void
.end method

.method public disable2(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 454
    iget v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V

    .line 453
    return-void
.end method

.method public disable2ForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .locals 7
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 467
    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 468
    const/4 v5, 0x2

    move-object v0, p0

    move v1, p4

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 464
    return-void

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public disableForUser(ILandroid/os/IBinder;Ljava/lang/String;I)V
    .locals 7
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 439
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 441
    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 442
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p4

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService;->disableLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 438
    return-void

    .line 441
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 924
    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "android.permission.DUMP"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 926
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Permission Denial: can\'t dump StatusBar from from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 927
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 926
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 928
    const-string/jumbo v7, ", uid="

    .line 926
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 928
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 926
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 929
    return-void

    .line 932
    :cond_0
    iget-object v7, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 933
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  mDisabled1=0x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled1:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 934
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  mDisabled2=0x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisabled2:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 935
    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 936
    .local v0, "N":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  mDisableRecords.size="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 937
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 938
    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 939
    .local v5, "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "    ["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "] userId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v5, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 940
    const-string/jumbo v8, " what1=0x"

    .line 939
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 940
    iget v8, v5, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what1:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 939
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 941
    const-string/jumbo v8, " what2=0x"

    .line 939
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 941
    iget v8, v5, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what2:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 939
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 942
    const-string/jumbo v8, " pkg="

    .line 939
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 942
    iget-object v8, v5, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    .line 939
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 943
    const-string/jumbo v8, " token="

    .line 939
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 943
    iget-object v8, v5, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    .line 939
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 937
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 945
    .end local v5    # "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  mCurrentUserId="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 946
    const-string/jumbo v6, "  mIcons="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 947
    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "slot$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 948
    .local v3, "slot":Ljava/lang/String;
    const-string/jumbo v6, "    "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 949
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 950
    const-string/jumbo v6, " -> "

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 951
    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 952
    .local v2, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 953
    iget-object v6, v2, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 954
    const-string/jumbo v6, " \""

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 955
    iget-object v6, v2, Lcom/android/internal/statusbar/StatusBarIcon;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 956
    const-string/jumbo v6, "\""

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 958
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 932
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v3    # "slot":Ljava/lang/String;
    .end local v4    # "slot$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v4    # "slot$iterator":Ljava/util/Iterator;
    :cond_3
    monitor-exit v7

    .line 923
    return-void
.end method

.method public expandNotificationsPanel()V
    .locals 2

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 355
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_0

    .line 357
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 358
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public expandSettingsPanel(Ljava/lang/String;)V
    .locals 2
    .param p1, "subPanel"    # Ljava/lang/String;

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 379
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_0

    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandSettingsPanel(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 382
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method gatherDisableActionsLocked(II)I
    .locals 5
    .param p1, "userId"    # I
    .param p2, "which"    # I

    .prologue
    .line 907
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 909
    .local v0, "N":I
    const/4 v2, 0x0

    .line 910
    .local v2, "net":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 911
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 912
    .local v3, "rec":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    if-ne v4, p1, :cond_0

    .line 913
    const/4 v4, 0x1

    if-ne p2, v4, :cond_1

    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what1:I

    :goto_1
    or-int/2addr v2, v4

    .line 910
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 913
    :cond_1
    iget v4, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what2:I

    goto :goto_1

    .line 916
    .end local v3    # "rec":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_2
    return v2
.end method

.method public handleSystemNavigationKey(I)V
    .locals 2
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 424
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_0

    .line 426
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBar;->handleSystemNavigationKey(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 427
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method manageDisableListLocked(IILandroid/os/IBinder;Ljava/lang/String;I)V
    .locals 8
    .param p1, "userId"    # I
    .param p2, "what"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "pkg"    # Ljava/lang/String;
    .param p5, "which"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 868
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 869
    .local v0, "N":I
    const/4 v4, 0x0

    .line 871
    .local v4, "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 872
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    .line 873
    .local v3, "t":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    iget-object v5, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    if-ne v5, p3, :cond_3

    iget v5, v3, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    if-ne v5, p1, :cond_3

    .line 874
    move-object v4, v3

    .line 878
    .end local v3    # "t":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    .end local v4    # "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_0
    if-eqz p2, :cond_4

    invoke-interface {p3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 884
    if-nez v4, :cond_1

    .line 885
    new-instance v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;

    invoke-direct {v4, p0, v7}, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;)V

    .line 886
    .local v4, "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    iput p1, v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->userId:I

    .line 888
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {p3, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 893
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    .end local v4    # "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_1
    const/4 v5, 0x1

    if-ne p5, v5, :cond_5

    .line 896
    iput p2, v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what1:I

    .line 900
    :goto_1
    iput-object p3, v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    .line 901
    iput-object p4, v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    .line 862
    :cond_2
    :goto_2
    return-void

    .line 871
    .restart local v3    # "t":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    .local v4, "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 879
    .end local v3    # "t":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    .end local v4    # "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_4
    if-eqz v4, :cond_2

    .line 880
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 881
    iget-object v5, v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v5, v4, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_2

    .line 890
    .local v4, "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :catch_0
    move-exception v1

    .line 891
    .local v1, "ex":Landroid/os/RemoteException;
    return-void

    .line 898
    .end local v1    # "ex":Landroid/os/RemoteException;
    .end local v4    # "tok":Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;
    :cond_5
    iput p2, v4, Lcom/android/server/statusbar/StatusBarManagerService$DisableRecord;->what2:I

    goto :goto_1
.end method

.method public onClearAllNotifications(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 839
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 840
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 841
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 842
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 844
    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v4, v1, v0, p1}, Lcom/android/server/notification/NotificationDelegate;->onClearAll(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 846
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 838
    return-void

    .line 845
    :catchall_0
    move-exception v4

    .line 846
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 845
    throw v4
.end method

.method public onNotificationActionClick(Ljava/lang/String;I)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "actionIndex"    # I

    .prologue
    .line 769
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 770
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 771
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 772
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 774
    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v4, v1, v0, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationActionClick(IILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 777
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 768
    return-void

    .line 776
    :catchall_0
    move-exception v4

    .line 777
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 776
    throw v4
.end method

.method public onNotificationClear(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "userId"    # I

    .prologue
    .line 799
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 800
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 801
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 802
    .local v2, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 804
    .local v8, "identity":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/server/notification/NotificationDelegate;->onNotificationClear(IILjava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 798
    return-void

    .line 805
    :catchall_0
    move-exception v0

    .line 806
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 805
    throw v0
.end method

.method public onNotificationClick(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 756
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 757
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 758
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 759
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 761
    .local v2, "identity":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v4, v1, v0, p1}, Lcom/android/server/notification/NotificationDelegate;->onNotificationClick(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 755
    return-void

    .line 762
    :catchall_0
    move-exception v4

    .line 763
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 762
    throw v4
.end method

.method public onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "uid"    # I
    .param p5, "initialPid"    # I
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "userId"    # I

    .prologue
    .line 784
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 785
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 786
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 787
    .local v2, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 790
    .local v10, "identity":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v0 .. v9}, Lcom/android/server/notification/NotificationDelegate;->onNotificationError(IILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 793
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 783
    return-void

    .line 792
    :catchall_0
    move-exception v0

    .line 793
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 792
    throw v0
.end method

.method public onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userAction"    # Z
    .param p3, "expanded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 827
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 828
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 830
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/server/notification/NotificationDelegate;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 833
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 826
    return-void

    .line 832
    :catchall_0
    move-exception v2

    .line 833
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 832
    throw v2
.end method

.method public onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 3
    .param p1, "newlyVisibleKeys"    # [Lcom/android/internal/statusbar/NotificationVisibility;
    .param p2, "noLongerVisibleKeys"    # [Lcom/android/internal/statusbar/NotificationVisibility;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 814
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 815
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 817
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 813
    return-void

    .line 819
    :catchall_0
    move-exception v2

    .line 820
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 819
    throw v2
.end method

.method public onPanelHidden()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 745
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 746
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 748
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2}, Lcom/android/server/notification/NotificationDelegate;->onPanelHidden()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 744
    return-void

    .line 749
    :catchall_0
    move-exception v2

    .line 750
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 749
    throw v2
.end method

.method public onPanelRevealed(ZI)V
    .locals 3
    .param p1, "clearNotificationEffects"    # Z
    .param p2, "numItems"    # I

    .prologue
    .line 723
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 724
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 726
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {v2, p1, p2}, Lcom/android/server/notification/NotificationDelegate;->onPanelRevealed(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 722
    return-void

    .line 727
    :catchall_0
    move-exception v2

    .line 728
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 727
    throw v2
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 7
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "resultReceiver"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 853
    new-instance v0, Lcom/android/server/statusbar/StatusBarShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/statusbar/StatusBarShellCommand;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/statusbar/StatusBarShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)I

    .line 852
    return-void
.end method

.method public registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Ljava/util/List;Ljava/util/List;[ILjava/util/List;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "bar"    # Lcom/android/internal/statusbar/IStatusBar;
    .param p4, "switches"    # [I
    .param p6, "fullscreenStackBounds"    # Landroid/graphics/Rect;
    .param p7, "dockedStackBounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/statusbar/IStatusBar;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/statusbar/StatusBarIcon;",
            ">;[I",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "iconSlots":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "iconList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/statusbar/StatusBarIcon;>;"
    .local p5, "binders":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 691
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarService()V

    .line 693
    const-string/jumbo v2, "StatusBarManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerStatusBar bar="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 695
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 696
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "slot$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 697
    .local v0, "slot":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 695
    .end local v0    # "slot":Ljava/lang/String;
    .end local v1    # "slot$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v5

    throw v2

    .restart local v1    # "slot$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v5

    .line 701
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 702
    :try_start_1
    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v6, 0x1

    invoke-virtual {p0, v2, v6}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v2

    const/4 v6, 0x0

    aput v2, p4, v6

    .line 703
    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mSystemUiVisibility:I

    const/4 v6, 0x1

    aput v2, p4, v6

    .line 704
    iget-boolean v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mMenuVisible:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    const/4 v6, 0x2

    aput v2, p4, v6

    .line 705
    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeWindowVis:I

    const/4 v6, 0x3

    aput v2, p4, v6

    .line 706
    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeBackDisposition:I

    const/4 v6, 0x4

    aput v2, p4, v6

    .line 707
    iget-boolean v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mShowImeSwitcher:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    const/4 v3, 0x5

    aput v2, p4, v3

    .line 708
    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mCurrentUserId:I

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/statusbar/StatusBarManagerService;->gatherDisableActionsLocked(II)I

    move-result v2

    const/4 v3, 0x6

    aput v2, p4, v3

    .line 709
    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mFullscreenStackSysUiVisibility:I

    const/4 v3, 0x7

    aput v2, p4, v3

    .line 710
    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDockedStackSysUiVisibility:I

    const/16 v3, 0x8

    aput v2, p4, v3

    .line 711
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeToken:Landroid/os/IBinder;

    invoke-interface {p5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mFullscreenStackBounds:Landroid/graphics/Rect;

    invoke-virtual {p6, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 713
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {p7, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v5

    .line 690
    return-void

    :cond_1
    move v2, v4

    .line 704
    goto :goto_1

    :cond_2
    move v2, v4

    .line 707
    goto :goto_2

    .line 701
    :catchall_1
    move-exception v2

    monitor-exit v5

    throw v2
.end method

.method public remTile(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBarOrShell()V

    .line 401
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_0

    .line 403
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBar;->remQsTile(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 404
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 3
    .param p1, "slot"    # Ljava/lang/String;

    .prologue
    .line 543
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 545
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 546
    :try_start_0
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 550
    :try_start_1
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBar;->removeIcon(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v2

    .line 542
    return-void

    .line 545
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 551
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 9
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "iconPackage"    # Ljava/lang/String;
    .param p3, "iconId"    # I
    .param p4, "iconLevel"    # I
    .param p5, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 502
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 504
    iget-object v8, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v8

    .line 505
    :try_start_0
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 506
    const/4 v5, 0x0

    move-object v1, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 505
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 508
    .local v0, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 512
    :try_start_1
    iget-object v1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, p1, v0}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v8

    .line 501
    return-void

    .line 504
    .end local v0    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    :catchall_0
    move-exception v1

    monitor-exit v8

    throw v1

    .line 513
    .restart local v0    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    :catch_0
    move-exception v7

    .local v7, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "visibility"    # Z

    .prologue
    .line 521
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 523
    iget-object v3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 524
    :try_start_0
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mIcons:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/StatusBarIcon;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    .local v1, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    if-nez v1, :cond_0

    monitor-exit v3

    .line 526
    return-void

    .line 528
    :cond_0
    :try_start_1
    iget-boolean v2, v1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eq v2, p2, :cond_1

    .line 529
    iput-boolean p2, v1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 531
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 533
    :try_start_2
    iget-object v2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v3

    .line 520
    return-void

    .line 523
    .end local v1    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 534
    .restart local v1    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;IIZ)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I
    .param p4, "showImeSwitcher"    # Z

    .prologue
    .line 585
    invoke-direct {p0}, Lcom/android/server/statusbar/StatusBarManagerService;->enforceStatusBar()V

    .line 591
    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 595
    :try_start_0
    iput p2, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeWindowVis:I

    .line 596
    iput p3, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeBackDisposition:I

    .line 597
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mImeToken:Landroid/os/IBinder;

    .line 598
    iput-boolean p4, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mShowImeSwitcher:Z

    .line 599
    iget-object v7, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService$4;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/statusbar/StatusBarManagerService$4;-><init>(Lcom/android/server/statusbar/StatusBarManagerService;Landroid/os/IBinder;IIZ)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 584
    return-void

    .line 591
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public setSystemUiVisibility(IILjava/lang/String;)V
    .locals 8
    .param p1, "vis"    # I
    .param p2, "mask"    # I
    .param p3, "cause"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 614
    iget-object v5, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mFullscreenStackBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/statusbar/StatusBarManagerService;->mDockedStackBounds:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p1

    move v3, v2

    move v4, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/statusbar/StatusBarManagerService;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 613
    return-void
.end method
