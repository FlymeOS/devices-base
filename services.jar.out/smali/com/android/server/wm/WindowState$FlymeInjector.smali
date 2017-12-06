.class final Lcom/android/server/wm/WindowState$FlymeInjector;
.super Ljava/lang/Object;
.source "WindowState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static computeFrameLw(Lcom/android/server/wm/WindowState;)V
    .locals 3
    .param p0, "windowState"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 2996
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateExt;->isInMovedMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2998
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateExt;->getMovedX()I

    move-result v0

    .line 2999
    .local v0, "moveX":I
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateExt;->getMovedY()I

    move-result v1

    .line 3000
    .local v1, "moveY":I
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_0

    .line 3001
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 3002
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 3003
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 3006
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    iput v0, v2, Lcom/android/server/wm/WindowStateExt;->mPreMovedShowX:I

    .line 3007
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    iput v1, v2, Lcom/android/server/wm/WindowStateExt;->mPreMovedShowY:I

    .line 2995
    .end local v0    # "moveX":I
    .end local v1    # "moveY":I
    :cond_1
    return-void
.end method

.method static initFlymeExtraFields(Lcom/android/server/wm/WindowState;)V
    .locals 1
    .param p0, "windowState"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 2992
    new-instance v0, Lcom/android/server/wm/WindowStateExt;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowStateExt;-><init>(Lcom/android/server/wm/WindowState;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    .line 2991
    return-void
.end method
