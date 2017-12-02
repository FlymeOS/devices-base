.class public interface abstract annotation Lcom/android/server/net/NetworkStatsAccess$Level;
.super Ljava/lang/Object;
.source "NetworkStatsAccess.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroid/annotation/IntDef;
    value = {
        0x0L,
        0x1L,
        0x2L,
        0x3L
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Level"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final DEFAULT:I = 0x0

.field public static final DEVICE:I = 0x3

.field public static final DEVICESUMMARY:I = 0x2

.field public static final USER:I = 0x1
