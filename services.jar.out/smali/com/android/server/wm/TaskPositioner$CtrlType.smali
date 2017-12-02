.class interface abstract annotation Lcom/android/server/wm/TaskPositioner$CtrlType;
.super Ljava/lang/Object;
.source "TaskPositioner.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroid/annotation/IntDef;
    flag = true
    value = {
        0x0L,
        0x1L,
        0x2L,
        0x4L,
        0x8L
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskPositioner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2608
    name = "CtrlType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
