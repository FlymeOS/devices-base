.class public Lcom/android/server/wifi/scanner/PresetKnownBandsChannelHelper;
.super Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;
.source "PresetKnownBandsChannelHelper.java"


# direct methods
.method public constructor <init>([I[I[I)V
    .locals 0
    .param p1, "channels2G"    # [I
    .param p2, "channels5G"    # [I
    .param p3, "channelsDfs"    # [I

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/server/wifi/scanner/KnownBandsChannelHelper;-><init>()V

    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wifi/scanner/PresetKnownBandsChannelHelper;->setBandChannels([I[I[I)V

    .line 23
    return-void
.end method
