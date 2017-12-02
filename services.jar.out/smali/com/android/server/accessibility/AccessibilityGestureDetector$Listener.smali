.class public interface abstract Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;
.super Ljava/lang/Object;
.source "AccessibilityGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDoubleTap(Landroid/view/MotionEvent;I)Z
.end method

.method public abstract onDoubleTapAndHold(Landroid/view/MotionEvent;I)V
.end method

.method public abstract onGestureCancelled(Landroid/view/MotionEvent;I)Z
.end method

.method public abstract onGestureCompleted(I)Z
.end method

.method public abstract onGestureStarted()Z
.end method
