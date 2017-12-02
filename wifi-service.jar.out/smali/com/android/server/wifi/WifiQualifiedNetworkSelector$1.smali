.class Lcom/android/server/wifi/WifiQualifiedNetworkSelector$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiQualifiedNetworkSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiQualifiedNetworkSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiQualifiedNetworkSelector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$1;->this$0:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 261
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$1;->this$0:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mBroadcastReceiver: onReceive "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->-wrap1(Lcom/android/server/wifi/WifiQualifiedNetworkSelector;Ljava/lang/String;)V

    .line 262
    const/4 v3, 0x0

    .line 264
    .local v3, "wifiArray":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$1;->this$0:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    invoke-static {v4}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->-get1(Lcom/android/server/wifi/WifiQualifiedNetworkSelector;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "carrier_config"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 263
    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 265
    .local v1, "carrierConfigManager":Landroid/telephony/CarrierConfigManager;
    if-eqz v1, :cond_0

    .line 266
    invoke-virtual {v1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 267
    .local v0, "b":Landroid/os/PersistableBundle;
    if-eqz v0, :cond_0

    .line 269
    const-string/jumbo v4, "carrier_wifi_string_array"

    .line 268
    invoke-virtual {v0, v4}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 273
    .end local v0    # "b":Landroid/os/PersistableBundle;
    .end local v3    # "wifiArray":[Ljava/lang/String;
    :cond_0
    if-nez v3, :cond_1

    .line 274
    return-void

    .line 276
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$1;->this$0:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    iget-object v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$1;->this$0:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    invoke-virtual {v5, v3}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->parseCarrierSuppliedWifiInfo([Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->-set0(Lcom/android/server/wifi/WifiQualifiedNetworkSelector;Ljava/util/List;)Ljava/util/List;

    .line 277
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$1;->this$0:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    invoke-static {v4}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->-get0(Lcom/android/server/wifi/WifiQualifiedNetworkSelector;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 278
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$1;->this$0:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    invoke-static {v4}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->-get0(Lcom/android/server/wifi/WifiQualifiedNetworkSelector;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const/4 v2, 0x0

    .line 279
    .local v2, "hasCarrierNetworks":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$1;->this$0:Lcom/android/server/wifi/WifiQualifiedNetworkSelector;

    invoke-static {v4}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->-get2(Lcom/android/server/wifi/WifiQualifiedNetworkSelector;)Lcom/android/server/wifi/WifiConfigManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/wifi/WifiConfigManager;->setHasCarrierNetworks(Z)V

    .line 260
    return-void

    .line 278
    .end local v2    # "hasCarrierNetworks":Z
    :cond_3
    const/4 v2, 0x1

    .restart local v2    # "hasCarrierNetworks":Z
    goto :goto_0
.end method
