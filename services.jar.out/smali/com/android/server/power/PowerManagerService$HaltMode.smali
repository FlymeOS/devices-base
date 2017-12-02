.class public interface abstract annotation Lcom/android/server/power/PowerManagerService$HaltMode;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroid/annotation/IntDef;
    value = {
        0x0L,
        0x1L,
        0x2L
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "HaltMode"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
