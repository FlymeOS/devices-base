.class public Lcom/android/server/wifi/WifiNative$BucketSettings;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BucketSettings"
.end annotation


# instance fields
.field public band:I

.field public bucket:I

.field public channels:[Lcom/android/server/wifi/WifiNative$ChannelSettings;

.field public max_period_ms:I

.field public num_channels:I

.field public period_ms:I

.field public report_events:I

.field public step_count:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
