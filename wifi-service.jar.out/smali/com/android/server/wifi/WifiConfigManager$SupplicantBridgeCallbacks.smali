.class Lcom/android/server/wifi/WifiConfigManager$SupplicantBridgeCallbacks;
.super Ljava/lang/Object;
.source "WifiConfigManager.java"

# interfaces
.implements Lcom/android/server/wifi/hotspot2/SupplicantBridge$SupplicantBridgeCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SupplicantBridgeCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiConfigManager;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiConfigManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConfigManager;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigManager$SupplicantBridgeCallbacks;->this$0:Lcom/android/server/wifi/WifiConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/WifiConfigManager$SupplicantBridgeCallbacks;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConfigManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager$SupplicantBridgeCallbacks;-><init>(Lcom/android/server/wifi/WifiConfigManager;)V

    return-void
.end method


# virtual methods
.method public notifyANQPResponse(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V
    .locals 5
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    const/4 v4, 0x0

    .line 319
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager$SupplicantBridgeCallbacks;->this$0:Lcom/android/server/wifi/WifiConfigManager;

    invoke-static {v1, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->-wrap3(Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V

    .line 320
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    :cond_0
    return-void

    .line 323
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/server/wifi/ScanDetail;->propagateANQPInfo(Ljava/util/Map;)V

    .line 325
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager$SupplicantBridgeCallbacks;->this$0:Lcom/android/server/wifi/WifiConfigManager;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/android/server/wifi/WifiConfigManager;->-wrap1(Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/ScanDetail;Z)Ljava/util/Map;

    move-result-object v0

    .line 326
    .local v0, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager$SupplicantBridgeCallbacks;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " pass 2 matches: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 327
    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigManager;->-wrap0(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 326
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager$SupplicantBridgeCallbacks;->this$0:Lcom/android/server/wifi/WifiConfigManager;

    invoke-static {v1, p1, v0, v4}, Lcom/android/server/wifi/WifiConfigManager;->-wrap2(Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;Ljava/util/List;)V

    .line 318
    return-void
.end method

.method public notifyIconFailed(J)V
    .locals 3
    .param p1, "bssid"    # J

    .prologue
    .line 333
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.net.wifi.PASSPOINT_ICON_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 335
    const-string/jumbo v1, "bssid"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 336
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager$SupplicantBridgeCallbacks;->this$0:Lcom/android/server/wifi/WifiConfigManager;

    invoke-static {v1}, Lcom/android/server/wifi/WifiConfigManager;->-get0(Lcom/android/server/wifi/WifiConfigManager;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 332
    return-void
.end method
