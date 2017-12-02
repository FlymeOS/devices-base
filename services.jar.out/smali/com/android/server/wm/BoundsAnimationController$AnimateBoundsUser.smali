.class public interface abstract Lcom/android/server/wm/BoundsAnimationController$AnimateBoundsUser;
.super Ljava/lang/Object;
.source "BoundsAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BoundsAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnimateBoundsUser"
.end annotation


# virtual methods
.method public abstract getFullScreenBounds(Landroid/graphics/Rect;)V
.end method

.method public abstract moveToFullscreen()V
.end method

.method public abstract onAnimationEnd()V
.end method

.method public abstract onAnimationStart()V
.end method

.method public abstract setPinnedStackSize(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
.end method

.method public abstract setSize(Landroid/graphics/Rect;)Z
.end method
