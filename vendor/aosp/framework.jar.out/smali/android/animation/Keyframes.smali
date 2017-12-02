.class public interface abstract Landroid/animation/Keyframes;
.super Ljava/lang/Object;
.source "Keyframes.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/Keyframes$FloatKeyframes;,
        Landroid/animation/Keyframes$IntKeyframes;
    }
.end annotation


# virtual methods
.method public abstract clone()Landroid/animation/Keyframes;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-interface {p0}, Landroid/animation/Keyframes;->clone()Landroid/animation/Keyframes;

    move-result-object v0

    return-object v0
.end method

.method public abstract getKeyframes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Keyframe;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getType()Ljava/lang/Class;
.end method

.method public abstract getValue(F)Ljava/lang/Object;
.end method

.method public abstract invalidateCache()V
.end method

.method public abstract setEvaluator(Landroid/animation/TypeEvaluator;)V
.end method
