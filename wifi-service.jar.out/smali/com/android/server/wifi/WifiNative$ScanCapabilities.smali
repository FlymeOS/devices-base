.class public Lcom/android/server/wifi/WifiNative$ScanCapabilities;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScanCapabilities"
.end annotation


# instance fields
.field public max_ap_cache_per_scan:I

.field public max_bssid_history_entries:I

.field public max_hotlist_bssids:I

.field public max_number_epno_networks:I

.field public max_number_epno_networks_by_ssid:I

.field public max_number_of_white_listed_ssid:I

.field public max_rssi_sample_size:I

.field public max_scan_buckets:I

.field public max_scan_cache_size:I

.field public max_scan_reporting_threshold:I

.field public max_significant_wifi_change_aps:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
