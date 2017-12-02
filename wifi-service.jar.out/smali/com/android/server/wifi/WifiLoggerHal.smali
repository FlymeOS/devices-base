.class public Lcom/android/server/wifi/WifiLoggerHal;
.super Ljava/lang/Object;
.source "WifiLoggerHal.java"


# static fields
.field public static final FRAME_TYPE_80211_MGMT:B = 0x2t

.field public static final FRAME_TYPE_ETHERNET_II:B = 0x1t

.field public static final FRAME_TYPE_UNKNOWN:B = 0x0t

.field public static final MAX_FATE_LOG_LEN:I = 0x20

.field public static final RX_PKT_FATE_DRV_DROP_FILTER:B = 0x7t

.field public static final RX_PKT_FATE_DRV_DROP_INVALID:B = 0x8t

.field public static final RX_PKT_FATE_DRV_DROP_NOBUFS:B = 0x9t

.field public static final RX_PKT_FATE_DRV_DROP_OTHER:B = 0xat

.field public static final RX_PKT_FATE_DRV_QUEUED:B = 0x6t

.field public static final RX_PKT_FATE_FW_DROP_FILTER:B = 0x2t

.field public static final RX_PKT_FATE_FW_DROP_INVALID:B = 0x3t

.field public static final RX_PKT_FATE_FW_DROP_NOBUFS:B = 0x4t

.field public static final RX_PKT_FATE_FW_DROP_OTHER:B = 0x5t

.field public static final RX_PKT_FATE_FW_QUEUED:B = 0x1t

.field public static final RX_PKT_FATE_SUCCESS:B = 0x0t

.field public static final TX_PKT_FATE_ACKED:B = 0x0t

.field public static final TX_PKT_FATE_DRV_DROP_INVALID:B = 0x7t

.field public static final TX_PKT_FATE_DRV_DROP_NOBUFS:B = 0x8t

.field public static final TX_PKT_FATE_DRV_DROP_OTHER:B = 0x9t

.field public static final TX_PKT_FATE_DRV_QUEUED:B = 0x6t

.field public static final TX_PKT_FATE_FW_DROP_INVALID:B = 0x3t

.field public static final TX_PKT_FATE_FW_DROP_NOBUFS:B = 0x4t

.field public static final TX_PKT_FATE_FW_DROP_OTHER:B = 0x5t

.field public static final TX_PKT_FATE_FW_QUEUED:B = 0x2t

.field public static final TX_PKT_FATE_SENT:B = 0x1t

.field public static final WIFI_ALERT_REASON_MAX:B = 0x40t

.field public static final WIFI_ALERT_REASON_MIN:B

.field public static final WIFI_ALERT_REASON_RESERVED:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
