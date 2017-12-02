.class Lcom/android/internal/telephony/CarrierServiceStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "CarrierServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/CarrierServiceStateTracker;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 131
    const-string/jumbo v2, "carrier_config"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 130
    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 132
    .local v1, "carrierConfigManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 133
    .local v0, "b":Landroid/os/PersistableBundle;
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    const-string/jumbo v3, "network_notification_delay_int"

    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-set0(Lcom/android/internal/telephony/CarrierServiceStateTracker;I)I

    .line 134
    const-string/jumbo v2, "CSST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reading time to delay notification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-get0(Lcom/android/internal/telephony/CarrierServiceStateTracker;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v2, p0, Lcom/android/internal/telephony/CarrierServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/CarrierServiceStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/CarrierServiceStateTracker;->-wrap0(Lcom/android/internal/telephony/CarrierServiceStateTracker;)V

    .line 129
    return-void
.end method
