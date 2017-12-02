.class Lcom/android/server/am/AppErrorDialog$Data;
.super Ljava/lang/Object;
.source "AppErrorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppErrorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Data"
.end annotation


# instance fields
.field isRestartableForService:Z

.field proc:Lcom/android/server/am/ProcessRecord;

.field repeating:Z

.field result:Lcom/android/server/am/AppErrorResult;

.field task:Lcom/android/server/am/TaskRecord;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
