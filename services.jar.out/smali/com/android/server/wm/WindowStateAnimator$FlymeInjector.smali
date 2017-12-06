.class final Lcom/android/server/wm/WindowStateAnimator$FlymeInjector;
.super Ljava/lang/Object;
.source "WindowStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowStateAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static destoryWindow(Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 4
    .param p0, "wsa"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 2204
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mUid:I

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/Wms_Interface;->destoryWindow(IIILjava/lang/String;)V

    .line 2202
    return-void
.end method

.method static hideWindow(Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 4
    .param p0, "wsa"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 2198
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mUid:I

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/Wms_Interface;->hideWindow(IIILjava/lang/String;)V

    .line 2196
    return-void
.end method

.method static isInFlymeMovedMode(Lcom/android/server/wm/WindowStateAnimator;)Z
    .locals 1
    .param p0, "wsa"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 2217
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isInMovedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static moveShownFrameIfNeed(Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 1
    .param p0, "wsa"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 2210
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isInMovedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2211
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateExt;->moveShownFrame()V

    .line 2209
    :cond_0
    return-void
.end method

.method static setSystemDecorRect(Lcom/android/server/wm/WindowStateAnimator;Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "wsa"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p1, "clipRect"    # Landroid/graphics/Rect;

    .prologue
    .line 2237
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateExt;->isInMovedMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2238
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->flymeGetFieldSystemDecorRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2235
    :cond_0
    return-void
.end method

.method static setSystemDecorRectTop(Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 3
    .param p0, "wsa"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 2221
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x400

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mWindowStateExt:Lcom/android/server/wm/WindowStateExt;

    iget v1, v1, Lcom/android/server/wm/WindowStateExt;->mBackupFlags:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-gtz v1, :cond_1

    .line 2222
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, #android:dimen@status_bar_height#t

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2223
    .local v0, "status_bar_height":I
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->flymeGetFieldSystemDecorRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 2220
    .end local v0    # "status_bar_height":I
    :cond_1
    return-void
.end method

.method static showWindow(Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 6
    .param p0, "wsa"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 2245
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mUid:I

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2246
    iget-object v4, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowSurfaceController;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowSurfaceController;->getHeight()F

    move-result v5

    float-to-int v5, v5

    .line 2245
    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/Wms_Interface;->showWindow(IIILjava/lang/String;II)V

    .line 2243
    return-void
.end method

.method static updateSurfaceWindowCrop(Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 4
    .param p0, "wsa"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    const/4 v3, 0x0

    .line 2228
    iget-object v0, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7fb

    if-ne v0, v1, :cond_0

    .line 2231
    invoke-virtual {p0}, Lcom/android/server/wm/WindowStateAnimator;->flymeGetFieldSystemDecorRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget-object v2, p0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v2, v2, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2227
    :cond_0
    return-void
.end method
