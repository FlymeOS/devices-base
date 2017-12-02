.class Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$5;
.super Ljava/lang/Object;
.source "SupplicantWifiScannerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->processPendingScans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$5;->this$0:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 483
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$5;->this$0:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->-get0(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;)Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$5;->this$0:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;

    invoke-static {v0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->-get0(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;)Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wifi/WifiNative$PnoEventHandler;->onPnoScanFailed()V

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$5;->this$0:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;

    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->-set1(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;Lcom/android/server/wifi/WifiNative$PnoSettings;)Lcom/android/server/wifi/WifiNative$PnoSettings;

    .line 488
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$5;->this$0:Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;

    invoke-static {v0, v1}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;->-set0(Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    .line 482
    return-void
.end method
