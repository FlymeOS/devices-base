.class Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;
.super Ljava/lang/Object;
.source "MagnificationController.java"

# interfaces
.implements Landroid/view/WindowManagerInternal$MagnificationCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WindowStateObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/MagnificationController$WindowStateObserver$CallbackHandler;
    }
.end annotation


# static fields
.field private static final MESSAGE_ON_MAGNIFIED_BOUNDS_CHANGED:I = 0x1

.field private static final MESSAGE_ON_RECTANGLE_ON_SCREEN_REQUESTED:I = 0x2

.field private static final MESSAGE_ON_ROTATION_CHANGED:I = 0x4

.field private static final MESSAGE_ON_USER_CONTEXT_CHANGED:I = 0x3


# instance fields
.field private final mController:Lcom/android/server/accessibility/MagnificationController;

.field private final mHandler:Landroid/os/Handler;

.field private mSpecIsDirty:Z

.field private final mWindowManager:Landroid/view/WindowManagerInternal;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;Landroid/graphics/Region;)V
    .locals 0
    .param p1, "magnificationRegion"    # Landroid/graphics/Region;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->handleOnMagnifiedBoundsChanged(Landroid/graphics/Region;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->handleOnRectangleOnScreenRequested(IIII)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->handleOnRotationChanged()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->handleOnUserContextChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/MagnificationController;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/server/accessibility/MagnificationController;

    .prologue
    .line 948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 949
    iput-object p2, p0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->mController:Lcom/android/server/accessibility/MagnificationController;

    .line 950
    const-class v0, Landroid/view/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->mWindowManager:Landroid/view/WindowManagerInternal;

    .line 951
    new-instance v0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver$CallbackHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver$CallbackHandler;-><init>(Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->mHandler:Landroid/os/Handler;

    .line 948
    return-void
.end method

.method private handleOnMagnifiedBoundsChanged(Landroid/graphics/Region;)V
    .locals 2
    .param p1, "magnificationRegion"    # Landroid/graphics/Region;

    .prologue
    .line 970
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->mController:Lcom/android/server/accessibility/MagnificationController;

    iget-boolean v1, p0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->mSpecIsDirty:Z

    invoke-static {v0, p1, v1}, Lcom/android/server/accessibility/MagnificationController;->-wrap0(Lcom/android/server/accessibility/MagnificationController;Landroid/graphics/Region;Z)V

    .line 971
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->mSpecIsDirty:Z

    .line 969
    return-void
.end method

.method private handleOnRectangleOnScreenRequested(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 985
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->mController:Lcom/android/server/accessibility/MagnificationController;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/accessibility/MagnificationController;->-wrap1(Lcom/android/server/accessibility/MagnificationController;IIII)V

    .line 984
    return-void
.end method

.method private handleOnRotationChanged()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 999
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->mController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v1, v0}, Lcom/android/server/accessibility/MagnificationController;->resetIfNeeded(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->mSpecIsDirty:Z

    .line 993
    return-void
.end method

.method private handleOnUserContextChanged()V
    .locals 2

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->mController:Lcom/android/server/accessibility/MagnificationController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController;->resetIfNeeded(Z)Z

    .line 1007
    return-void
.end method


# virtual methods
.method public getMagnificationRegion(Landroid/graphics/Region;)V
    .locals 1
    .param p1, "outMagnificationRegion"    # Landroid/graphics/Region;

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->mWindowManager:Landroid/view/WindowManagerInternal;

    invoke-virtual {v0, p1}, Landroid/view/WindowManagerInternal;->getMagnificationRegion(Landroid/graphics/Region;)V

    .line 1018
    return-void
.end method

.method public onMagnificationRegionChanged(Landroid/graphics/Region;)V
    .locals 3
    .param p1, "magnificationRegion"    # Landroid/graphics/Region;

    .prologue
    .line 964
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 965
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Landroid/graphics/Region;->obtain(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 966
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 963
    return-void
.end method

.method public onRectangleOnScreenRequested(IIII)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 976
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 977
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 978
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 979
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 980
    iput p4, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 981
    iget-object v1, p0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 975
    return-void
.end method

.method public onRotationChanged(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 990
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 989
    return-void
.end method

.method public onUserContextChanged()V
    .locals 2

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1003
    return-void
.end method

.method public register()V
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->mWindowManager:Landroid/view/WindowManagerInternal;

    invoke-virtual {v0, p0}, Landroid/view/WindowManagerInternal;->setMagnificationCallbacks(Landroid/view/WindowManagerInternal$MagnificationCallbacks;)V

    .line 954
    return-void
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->mWindowManager:Landroid/view/WindowManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerInternal;->setMagnificationCallbacks(Landroid/view/WindowManagerInternal$MagnificationCallbacks;)V

    .line 958
    return-void
.end method
