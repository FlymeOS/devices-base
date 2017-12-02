.class final Lcom/android/server/AlarmManagerService$IdleDispatchEntry;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IdleDispatchEntry"
.end annotation


# instance fields
.field argRealtime:J

.field elapsedRealtime:J

.field op:Ljava/lang/String;

.field pkg:Ljava/lang/String;

.field tag:Ljava/lang/String;

.field uid:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
