.class public Lcom/android/server/wifi/WifiNative$ChannelSettings;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChannelSettings"
.end annotation


# instance fields
.field public dwell_time_ms:I

.field public frequency:I

.field public passive:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
