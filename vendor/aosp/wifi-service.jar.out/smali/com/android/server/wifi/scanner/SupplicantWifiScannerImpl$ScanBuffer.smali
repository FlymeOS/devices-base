.class Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;
.super Ljava/lang/Object;
.source "SupplicantWifiScannerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScanBuffer"
.end annotation


# instance fields
.field private final mBuffer:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Landroid/net/wifi/WifiScanner$ScanData;",
            ">;"
        }
    .end annotation
.end field

.field private mCapacity:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    .line 856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 857
    iput p1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->mCapacity:I

    .line 858
    new-instance v0, Ljava/util/ArrayDeque;

    iget v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->mCapacity:I

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->mBuffer:Ljava/util/ArrayDeque;

    .line 856
    return-void
.end method


# virtual methods
.method public add(Landroid/net/wifi/WifiScanner$ScanData;)V
    .locals 1
    .param p1, "scanData"    # Landroid/net/wifi/WifiScanner$ScanData;

    .prologue
    .line 874
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->isFull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 875
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->mBuffer:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->mBuffer:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->offerLast(Ljava/lang/Object;)Z

    .line 873
    return-void
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 866
    iget v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->mCapacity:I

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->mBuffer:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 880
    return-void
.end method

.method public get()[Landroid/net/wifi/WifiScanner$ScanData;
    .locals 2

    .prologue
    .line 885
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->mBuffer:Ljava/util/ArrayDeque;

    iget-object v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->mBuffer:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    new-array v1, v1, [Landroid/net/wifi/WifiScanner$ScanData;

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/wifi/WifiScanner$ScanData;

    return-object v0
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .line 870
    invoke-virtual {p0}, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->mCapacity:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/server/wifi/scanner/SupplicantWifiScannerImpl$ScanBuffer;->mBuffer:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    return v0
.end method
