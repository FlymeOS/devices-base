.class Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;
.super Ljava/lang/Object;
.source "SupplicantWifiScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LastScanSettings"
.end annotation


# instance fields
.field public backgroundScanActive:Z

.field public hwPnoScanActive:Z

.field public maxAps:I

.field public pnoNetworkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

.field public pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

.field public reportEvents:I

.field public reportNumScansThreshold:I

.field public reportPercentThreshold:I

.field public reportSingleScanFullResults:Z

.field public scanId:I

.field public singleScanActive:Z

.field public singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

.field public singleScanFreqs:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

.field public startTime:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "startTime"    # J

    .prologue
    const/4 v0, 0x0

    .line 801
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 806
    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->backgroundScanActive:Z

    .line 824
    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanActive:Z

    .line 838
    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->hwPnoScanActive:Z

    .line 802
    iput-wide p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->startTime:J

    .line 801
    return-void
.end method


# virtual methods
.method public setBackgroundScan(IIIII)V
    .locals 1
    .param p1, "scanId"    # I
    .param p2, "maxAps"    # I
    .param p3, "reportEvents"    # I
    .param p4, "reportNumScansThreshold"    # I
    .param p5, "reportPercentThreshold"    # I

    .prologue
    .line 815
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->backgroundScanActive:Z

    .line 816
    iput p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->scanId:I

    .line 817
    iput p2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->maxAps:I

    .line 818
    iput p3, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportEvents:I

    .line 819
    iput p4, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportNumScansThreshold:I

    .line 820
    iput p5, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportPercentThreshold:I

    .line 814
    return-void
.end method

.method public setHwPnoScan([Lcom/android/server/wifi/WifiNative$PnoNetwork;Lcom/android/server/wifi/WifiNative$PnoEventHandler;)V
    .locals 1
    .param p1, "pnoNetworkList"    # [Lcom/android/server/wifi/WifiNative$PnoNetwork;
    .param p2, "pnoScanEventHandler"    # Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    .prologue
    .line 845
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->hwPnoScanActive:Z

    .line 846
    iput-object p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->pnoNetworkList:[Lcom/android/server/wifi/WifiNative$PnoNetwork;

    .line 847
    iput-object p2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->pnoScanEventHandler:Lcom/android/server/wifi/WifiNative$PnoEventHandler;

    .line 844
    return-void
.end method

.method public setSingleScan(ZLcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;Lcom/android/server/wifi/WifiNative$ScanEventHandler;)V
    .locals 1
    .param p1, "reportSingleScanFullResults"    # Z
    .param p2, "singleScanFreqs"    # Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;
    .param p3, "singleScanEventHandler"    # Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .prologue
    .line 832
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanActive:Z

    .line 833
    iput-boolean p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->reportSingleScanFullResults:Z

    .line 834
    iput-object p2, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanFreqs:Lcom/android/server/wifi/scanner/ChannelHelper$ChannelCollection;

    .line 835
    iput-object p3, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$LastScanSettings;->singleScanEventHandler:Lcom/android/server/wifi/WifiNative$ScanEventHandler;

    .line 831
    return-void
.end method
