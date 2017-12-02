.class Lcom/android/server/fingerprint/FingerprintService$7;
.super Lcom/android/server/fingerprint/AuthenticationClient;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService;->startAuthentication(Landroid/os/IBinder;JIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIJZLjava/lang/String;)V
    .locals 13
    .param p1, "this$0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # J
    .param p5, "$anonymous2"    # Landroid/os/IBinder;
    .param p6, "$anonymous3"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p7, "$anonymous4"    # I
    .param p8, "$anonymous5"    # I
    .param p9, "$anonymous6"    # J
    .param p11, "$anonymous7"    # Z
    .param p12, "$anonymous8"    # Ljava/lang/String;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$7;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    move-object v0, p0

    move-object v1, p2

    move-wide/from16 v2, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move-wide/from16 v8, p9

    move/from16 v10, p11

    move-object/from16 v11, p12

    invoke-direct/range {v0 .. v11}, Lcom/android/server/fingerprint/AuthenticationClient;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIJZLjava/lang/String;)V

    .line 574
    return-void
.end method


# virtual methods
.method public getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$7;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    return-object v0
.end method

.method public handleFailedAttempt()Z
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$7;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get4(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->-set1(Lcom/android/server/fingerprint/FingerprintService;I)I

    .line 578
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$7;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get4(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 579
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$7;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get10(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;

    move-result-object v0

    iget v1, v0, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->lockout:I

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$7;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-wrap1(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 583
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$7;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-wrap5(Lcom/android/server/fingerprint/FingerprintService;)V

    .line 584
    const/4 v0, 0x1

    return v0

    .line 586
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public notifyUserActivity()V
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$7;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-wrap10(Lcom/android/server/fingerprint/FingerprintService;)V

    .line 595
    return-void
.end method

.method public resetFailedAttempts()V
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$7;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->resetFailedAttempts()V

    .line 590
    return-void
.end method
