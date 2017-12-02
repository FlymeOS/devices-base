.class Lcom/android/server/fingerprint/FingerprintService$4;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 174
    const-string/jumbo v1, "FingerprintService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Client "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 175
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get2(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get2(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    .line 174
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 176
    const-string/jumbo v2, " failed to respond to cancel, starting client "

    .line 174
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 177
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get8(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get8(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/fingerprint/ClientMonitor;->getOwnerString()Ljava/lang/String;

    move-result-object v0

    .line 174
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0, v3}, Lcom/android/server/fingerprint/FingerprintService;->-set0(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;)Lcom/android/server/fingerprint/ClientMonitor;

    .line 179
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->-get8(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->-wrap7(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/ClientMonitor;Z)V

    .line 165
    return-void

    .line 175
    :cond_0
    const-string/jumbo v0, "null"

    goto :goto_0

    .line 177
    :cond_1
    const-string/jumbo v0, "null"

    goto :goto_1
.end method
