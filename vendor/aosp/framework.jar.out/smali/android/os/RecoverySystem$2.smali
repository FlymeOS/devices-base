.class final Landroid/os/RecoverySystem$2;
.super Landroid/os/IRecoverySystemProgressListener$Stub;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/RecoverySystem;->processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field lastProgress:I

.field lastPublishTime:J

.field final synthetic val$listener:Landroid/os/RecoverySystem$ProgressListener;

.field final synthetic val$progressHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/os/RecoverySystem$ProgressListener;)V
    .locals 2
    .param p1, "val$progressHandler"    # Landroid/os/Handler;
    .param p2, "val$listener"    # Landroid/os/RecoverySystem$ProgressListener;

    .prologue
    .line 357
    iput-object p1, p0, Landroid/os/RecoverySystem$2;->val$progressHandler:Landroid/os/Handler;

    iput-object p2, p0, Landroid/os/RecoverySystem$2;->val$listener:Landroid/os/RecoverySystem$ProgressListener;

    invoke-direct {p0}, Landroid/os/IRecoverySystemProgressListener$Stub;-><init>()V

    .line 358
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/RecoverySystem$2;->lastProgress:I

    .line 359
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/RecoverySystem$2;->lastPublishTime:J

    .line 357
    return-void
.end method


# virtual methods
.method public onProgress(I)V
    .locals 7
    .param p1, "progress"    # I

    .prologue
    .line 363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 364
    .local v4, "now":J
    iget-object v0, p0, Landroid/os/RecoverySystem$2;->val$progressHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/RecoverySystem$2$1;

    iget-object v6, p0, Landroid/os/RecoverySystem$2;->val$listener:Landroid/os/RecoverySystem$ProgressListener;

    move-object v2, p0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/os/RecoverySystem$2$1;-><init>(Landroid/os/RecoverySystem$2;IJLandroid/os/RecoverySystem$ProgressListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 362
    return-void
.end method
