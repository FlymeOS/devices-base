.class Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;
.super Ljava/lang/Object;
.source "WifiScanningServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeBucket"
.end annotation


# instance fields
.field periodInSecond:I

.field periodMaxInSecond:I

.field periodMinInSecond:I


# direct methods
.method constructor <init>(III)V
    .locals 0
    .param p1, "p"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .prologue
    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 748
    iput p1, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;->periodInSecond:I

    .line 749
    iput p2, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;->periodMinInSecond:I

    .line 750
    iput p3, p0, Lcom/android/server/wifi/WifiScanningServiceImpl$SettingsComputer$TimeBucket;->periodMaxInSecond:I

    .line 751
    return-void
.end method
