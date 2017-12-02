.class final Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;
.super Landroid/view/WindowManagerInternal$AppTransitionListener;
.source "BoundsAnimationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BoundsAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppTransitionNotifier"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/BoundsAnimationController;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/BoundsAnimationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/BoundsAnimationController;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    invoke-direct {p0}, Landroid/view/WindowManagerInternal$AppTransitionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/BoundsAnimationController;Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/BoundsAnimationController;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;-><init>(Lcom/android/server/wm/BoundsAnimationController;)V

    return-void
.end method

.method private animationFinished()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController;->-get1(Lcom/android/server/wm/BoundsAnimationController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController;->-get2(Lcom/android/server/wm/BoundsAnimationController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 72
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    invoke-static {v0}, Lcom/android/server/wm/BoundsAnimationController;->-get2(Lcom/android/server/wm/BoundsAnimationController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;->animationFinished()V

    .line 60
    return-void
.end method

.method public onAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;->animationFinished()V

    .line 63
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 78
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/BoundsAnimationController;->-get3(Lcom/android/server/wm/BoundsAnimationController;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 79
    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;->this$0:Lcom/android/server/wm/BoundsAnimationController;

    invoke-static {v2}, Lcom/android/server/wm/BoundsAnimationController;->-get3(Lcom/android/server/wm/BoundsAnimationController;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    .line 80
    .local v0, "b":Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "b":Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    :cond_0
    return-void
.end method
