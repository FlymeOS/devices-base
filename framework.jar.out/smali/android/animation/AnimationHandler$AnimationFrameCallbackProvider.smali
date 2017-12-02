.class public interface abstract Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;
.super Ljava/lang/Object;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AnimationFrameCallbackProvider"
.end annotation


# virtual methods
.method public abstract getFrameDelay()J
.end method

.method public abstract getFrameTime()J
.end method

.method public abstract postCommitCallback(Ljava/lang/Runnable;)V
.end method

.method public abstract postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
.end method

.method public abstract setFrameDelay(J)V
.end method
