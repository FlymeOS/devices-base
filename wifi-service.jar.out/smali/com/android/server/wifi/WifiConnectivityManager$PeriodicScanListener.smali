.class Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;
.super Ljava/lang/Object;
.source "WifiConnectivityManager.java"

# interfaces
.implements Landroid/net/wifi/WifiScanner$ScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeriodicScanListener"
.end annotation


# instance fields
.field private mScanDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wifi/WifiConnectivityManager;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiConnectivityManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;->mScanDetails:Ljava/util/List;

    .line 242
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiConnectivityManager;Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConnectivityManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;-><init>(Lcom/android/server/wifi/WifiConnectivityManager;)V

    return-void
.end method


# virtual methods
.method public clearScanDetails()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;->mScanDetails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 245
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 3
    .param p1, "reason"    # I
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 256
    const-string/jumbo v0, "WifiConnectivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PeriodicScanListener onFailure: reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 258
    const-string/jumbo v2, " description: "

    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->-get2(Lcom/android/server/wifi/WifiConnectivityManager;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->-set0(Lcom/android/server/wifi/WifiConnectivityManager;I)I

    const/4 v0, 0x5

    if-ge v1, v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap3(Lcom/android/server/wifi/WifiConnectivityManager;I)V

    .line 255
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-set0(Lcom/android/server/wifi/WifiConnectivityManager;I)I

    .line 265
    const-string/jumbo v0, "WifiConnectivityManager"

    const-string/jumbo v1, "Failed to successfully start periodic scan for 5 times"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onFullResult(Landroid/net/wifi/ScanResult;)V
    .locals 3
    .param p1, "fullScanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    invoke-static {v0}, Lcom/android/server/wifi/WifiConnectivityManager;->-get0(Lcom/android/server/wifi/WifiConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PeriodicScanListener onFullResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 287
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 287
    const-string/jumbo v2, " capabilities "

    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 288
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap1(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;->mScanDetails:Ljava/util/List;

    invoke-static {p1}, Lcom/android/server/wifi/util/ScanDetailUtil;->toScanDetail(Landroid/net/wifi/ScanResult;)Lcom/android/server/wifi/ScanDetail;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    return-void
.end method

.method public onPeriodChanged(I)V
    .locals 3
    .param p1, "periodInMs"    # I

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PeriodicScanListener onPeriodChanged: actual scan period "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 273
    const-string/jumbo v2, "ms"

    .line 272
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap1(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public onResults([Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 3
    .param p1, "results"    # [Landroid/net/wifi/WifiScanner$ScanData;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;->mScanDetails:Ljava/util/List;

    const-string/jumbo v2, "PeriodicScanListener"

    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap0(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/util/List;Ljava/lang/String;)Z

    .line 279
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;->clearScanDetails()V

    .line 280
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-set0(Lcom/android/server/wifi/WifiConnectivityManager;I)I

    .line 277
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/server/wifi/WifiConnectivityManager$PeriodicScanListener;->this$0:Lcom/android/server/wifi/WifiConnectivityManager;

    const-string/jumbo v1, "PeriodicScanListener onSuccess"

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiConnectivityManager;->-wrap1(Lcom/android/server/wifi/WifiConnectivityManager;Ljava/lang/String;)V

    .line 250
    return-void
.end method
