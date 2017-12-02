.class public abstract Landroid/accessibilityservice/AccessibilityService;
.super Landroid/app/Service;
.source "AccessibilityService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/AccessibilityService$Callbacks;,
        Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;,
        Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;,
        Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;,
        Landroid/accessibilityservice/AccessibilityService$MagnificationController;,
        Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;
    }
.end annotation


# static fields
.field public static final GESTURE_SWIPE_DOWN:I = 0x2

.field public static final GESTURE_SWIPE_DOWN_AND_LEFT:I = 0xf

.field public static final GESTURE_SWIPE_DOWN_AND_RIGHT:I = 0x10

.field public static final GESTURE_SWIPE_DOWN_AND_UP:I = 0x8

.field public static final GESTURE_SWIPE_LEFT:I = 0x3

.field public static final GESTURE_SWIPE_LEFT_AND_DOWN:I = 0xa

.field public static final GESTURE_SWIPE_LEFT_AND_RIGHT:I = 0x5

.field public static final GESTURE_SWIPE_LEFT_AND_UP:I = 0x9

.field public static final GESTURE_SWIPE_RIGHT:I = 0x4

.field public static final GESTURE_SWIPE_RIGHT_AND_DOWN:I = 0xc

.field public static final GESTURE_SWIPE_RIGHT_AND_LEFT:I = 0x6

.field public static final GESTURE_SWIPE_RIGHT_AND_UP:I = 0xb

.field public static final GESTURE_SWIPE_UP:I = 0x1

.field public static final GESTURE_SWIPE_UP_AND_DOWN:I = 0x7

.field public static final GESTURE_SWIPE_UP_AND_LEFT:I = 0xd

.field public static final GESTURE_SWIPE_UP_AND_RIGHT:I = 0xe

.field public static final GLOBAL_ACTION_BACK:I = 0x1

.field public static final GLOBAL_ACTION_HOME:I = 0x2

.field public static final GLOBAL_ACTION_NOTIFICATIONS:I = 0x4

.field public static final GLOBAL_ACTION_POWER_DIALOG:I = 0x6

.field public static final GLOBAL_ACTION_QUICK_SETTINGS:I = 0x5

.field public static final GLOBAL_ACTION_RECENTS:I = 0x3

.field public static final GLOBAL_ACTION_TOGGLE_SPLIT_SCREEN:I = 0x7

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityService"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.accessibilityservice.AccessibilityService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.accessibilityservice"

.field public static final SHOW_MODE_AUTO:I = 0x0

.field public static final SHOW_MODE_HIDDEN:I = 0x1


# instance fields
.field private mConnectionId:I

.field private mGestureStatusCallbackInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureStatusCallbackSequence:I

.field private mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field private final mLock:Ljava/lang/Object;

.field private mMagnificationController:Landroid/accessibilityservice/AccessibilityService$MagnificationController;

.field private mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0(Landroid/accessibilityservice/AccessibilityService;)I
    .locals 1

    iget v0, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    return v0
.end method

.method static synthetic -set0(Landroid/accessibilityservice/AccessibilityService;I)I
    .locals 0

    iput p1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    return p1
.end method

.method static synthetic -set1(Landroid/accessibilityservice/AccessibilityService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowToken:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/accessibilityservice/AccessibilityService;)V
    .locals 0

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;->dispatchServiceConnected()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/accessibilityservice/AccessibilityService;Landroid/graphics/Region;FFF)V
    .locals 0
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/accessibilityservice/AccessibilityService;->onMagnificationChanged(Landroid/graphics/Region;FFF)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/accessibilityservice/AccessibilityService;I)V
    .locals 0
    .param p1, "showMode"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onSoftKeyboardShowModeChanged(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 219
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 405
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    .line 219
    return-void
.end method

.method private dispatchServiceConnected()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mMagnificationController:Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mMagnificationController:Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->onServiceConnected()V

    .line 432
    :cond_0
    invoke-virtual {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    .line 425
    return-void
.end method

.method private onMagnificationChanged(Landroid/graphics/Region;FFF)V
    .locals 1
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "scale"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .prologue
    .line 690
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mMagnificationController:Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mMagnificationController:Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;->dispatchMagnificationChanged(Landroid/graphics/Region;FFF)V

    .line 689
    :cond_0
    return-void
.end method

.method private onSoftKeyboardShowModeChanged(I)V
    .locals 1
    .param p1, "showMode"    # I

    .prologue
    .line 1089
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    if-eqz v0, :cond_0

    .line 1090
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    invoke-virtual {v0, p1}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;->dispatchSoftKeyboardShowModeChanged(I)V

    .line 1088
    :cond_0
    return-void
.end method

.method private sendServiceInfo()V
    .locals 4

    .prologue
    .line 1401
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    iget v3, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1402
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 1404
    :try_start_0
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-interface {v0, v2}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 1405
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1406
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1399
    :cond_0
    :goto_0
    return-void

    .line 1407
    :catch_0
    move-exception v1

    .line 1408
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccessibilityService"

    const-string/jumbo v3, "Error while setting AccessibilityServiceInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1409
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method


# virtual methods
.method public final disableSelf()V
    .locals 4

    .prologue
    .line 568
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    iget v3, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 569
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 571
    :try_start_0
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->disableSelf()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    :cond_0
    return-void

    .line 572
    :catch_0
    move-exception v1

    .line 573
    .local v1, "re":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final dispatchGesture(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)Z
    .locals 7
    .param p1, "gesture"    # Landroid/accessibilityservice/GestureDescription;
    .param p2, "callback"    # Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 627
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v4

    .line 628
    iget v5, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    .line 627
    invoke-virtual {v4, v5}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v1

    .line 629
    .local v1, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-nez v1, :cond_0

    .line 630
    const/4 v4, 0x0

    return v4

    .line 633
    :cond_0
    const/16 v4, 0x64

    invoke-static {p1, v4}, Landroid/accessibilityservice/GestureDescription$MotionEventGenerator;->getGestureStepsFromGestureDescription(Landroid/accessibilityservice/GestureDescription;I)Ljava/util/List;

    move-result-object v3

    .line 635
    .local v3, "steps":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$GestureStep;>;"
    :try_start_0
    iget-object v5, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    :try_start_1
    iget v4, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackSequence:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackSequence:I

    .line 637
    if-eqz p2, :cond_2

    .line 638
    iget-object v4, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackInfos:Landroid/util/SparseArray;

    if-nez v4, :cond_1

    .line 639
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackInfos:Landroid/util/SparseArray;

    .line 641
    :cond_1
    new-instance v0, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;

    invoke-direct {v0, p1, p2, p3}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;-><init>(Landroid/accessibilityservice/GestureDescription;Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;Landroid/os/Handler;)V

    .line 643
    .local v0, "callbackInfo":Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;
    iget-object v4, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackInfos:Landroid/util/SparseArray;

    iget v6, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackSequence:I

    invoke-virtual {v4, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 645
    .end local v0    # "callbackInfo":Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;
    :cond_2
    iget v4, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackSequence:I

    .line 646
    new-instance v6, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v6, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 645
    invoke-interface {v1, v4, v6}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->sendGesture(ILandroid/content/pm/ParceledListSlice;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5

    .line 651
    const/4 v4, 0x1

    return v4

    .line 635
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 648
    :catch_0
    move-exception v2

    .line 649
    .local v2, "re":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7
    .param p1, "focus"    # I

    .prologue
    .line 1353
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    .line 1354
    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v3, -0x2

    move v6, p1

    .line 1353
    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getMagnificationController()Landroid/accessibilityservice/AccessibilityService$MagnificationController;
    .locals 3

    .prologue
    .line 592
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 593
    :try_start_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mMagnificationController:Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    if-nez v0, :cond_0

    .line 594
    new-instance v0, Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p0, v2}, Landroid/accessibilityservice/AccessibilityService$MagnificationController;-><init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mMagnificationController:Landroid/accessibilityservice/AccessibilityService$MagnificationController;

    .line 596
    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mMagnificationController:Landroid/accessibilityservice/AccessibilityService$MagnificationController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 592
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    .prologue
    .line 559
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getRootInActiveWindow(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1369
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    iget v3, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1370
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 1372
    :try_start_0
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1373
    :catch_0
    move-exception v1

    .line 1374
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccessibilityService"

    const-string/jumbo v3, "Error while getting AccessibilityServiceInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1375
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1378
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    return-object v4
.end method

.method public final getSoftKeyboardController()Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;
    .locals 3

    .prologue
    .line 1080
    iget-object v1, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1081
    :try_start_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    if-nez v0, :cond_0

    .line 1082
    new-instance v0, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p0, v2}, Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;-><init>(Landroid/accessibilityservice/AccessibilityService;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;

    .line 1084
    :cond_0
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mSoftKeyboardController:Landroid/accessibilityservice/AccessibilityService$SoftKeyboardController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1080
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1416
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1417
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 1418
    const-string/jumbo v1, "System services not available to Activities before onCreate()"

    .line 1417
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1422
    :cond_0
    const-string/jumbo v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1423
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_1

    .line 1424
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    .line 1426
    :cond_1
    iget-object v0, p0, Landroid/accessibilityservice/AccessibilityService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0

    .line 1428
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getWindows()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 533
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v0

    iget v1, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindows(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1437
    new-instance v0, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Landroid/accessibilityservice/AccessibilityService$2;

    invoke-direct {v2, p0}, Landroid/accessibilityservice/AccessibilityService$2;-><init>(Landroid/accessibilityservice/AccessibilityService;)V

    invoke-direct {v0, p0, v1, v2}, Landroid/accessibilityservice/AccessibilityService$IAccessibilityServiceClientWrapper;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/accessibilityservice/AccessibilityService$Callbacks;)V

    return-object v0
.end method

.method protected onGesture(I)Z
    .locals 1
    .param p1, "gestureId"    # I

    .prologue
    .line 478
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onInterrupt()V
.end method

.method protected onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 506
    const/4 v0, 0x0

    return v0
.end method

.method onPerformGestureResult(IZ)V
    .locals 4
    .param p1, "sequence"    # I
    .param p2, "completedSuccessfully"    # Z

    .prologue
    .line 655
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackInfos:Landroid/util/SparseArray;

    if-nez v2, :cond_0

    .line 656
    return-void

    .line 659
    :cond_0
    iget-object v3, p0, Landroid/accessibilityservice/AccessibilityService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 660
    :try_start_0
    iget-object v2, p0, Landroid/accessibilityservice/AccessibilityService;->mGestureStatusCallbackInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "callbackInfo":Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;
    monitor-exit v3

    .line 662
    move-object v1, v0

    .line 663
    .local v1, "finalCallbackInfo":Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;
    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->gestureDescription:Landroid/accessibilityservice/GestureDescription;

    if-eqz v2, :cond_2

    .line 664
    iget-object v2, v0, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->callback:Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

    if-eqz v2, :cond_2

    .line 665
    iget-object v2, v0, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 666
    iget-object v2, v0, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->handler:Landroid/os/Handler;

    new-instance v3, Landroid/accessibilityservice/AccessibilityService$1;

    invoke-direct {v3, p0, p2, v0}, Landroid/accessibilityservice/AccessibilityService$1;-><init>(Landroid/accessibilityservice/AccessibilityService;ZLandroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 678
    return-void

    .line 659
    .end local v0    # "callbackInfo":Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;
    .end local v1    # "finalCallbackInfo":Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 680
    .restart local v0    # "callbackInfo":Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;
    .restart local v1    # "finalCallbackInfo":Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;
    :cond_1
    if-eqz p2, :cond_3

    .line 681
    iget-object v2, v0, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->callback:Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

    iget-object v3, v0, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->gestureDescription:Landroid/accessibilityservice/GestureDescription;

    invoke-virtual {v2, v3}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;->onCompleted(Landroid/accessibilityservice/GestureDescription;)V

    .line 654
    :cond_2
    :goto_0
    return-void

    .line 683
    :cond_3
    iget-object v2, v0, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->callback:Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;

    iget-object v3, v0, Landroid/accessibilityservice/AccessibilityService$GestureResultCallbackInfo;->gestureDescription:Landroid/accessibilityservice/GestureDescription;

    invoke-virtual {v2, v3}, Landroid/accessibilityservice/AccessibilityService$GestureResultCallback;->onCancelled(Landroid/accessibilityservice/GestureDescription;)V

    goto :goto_0
.end method

.method protected onServiceConnected()V
    .locals 0

    .prologue
    .line 443
    return-void
.end method

.method public final performGlobalAction(I)Z
    .locals 4
    .param p1, "action"    # I

    .prologue
    .line 1320
    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    iget v3, p0, Landroid/accessibilityservice/AccessibilityService;->mConnectionId:I

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 1321
    .local v0, "connection":Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 1323
    :try_start_0
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->performGlobalAction(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1324
    :catch_0
    move-exception v1

    .line 1325
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccessibilityService"

    const-string/jumbo v3, "Error while calling performGlobalAction"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1326
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1329
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public final setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    .line 1390
    iput-object p1, p0, Landroid/accessibilityservice/AccessibilityService;->mInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 1391
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;->sendServiceInfo()V

    .line 1389
    return-void
.end method
