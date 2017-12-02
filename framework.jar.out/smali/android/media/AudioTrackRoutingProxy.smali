.class Landroid/media/AudioTrackRoutingProxy;
.super Landroid/media/AudioTrack;
.source "AudioTrackRoutingProxy.java"


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "nativeTrackInJavaObj"    # J

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;-><init>(J)V

    .line 29
    return-void
.end method
