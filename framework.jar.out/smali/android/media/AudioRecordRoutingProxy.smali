.class Landroid/media/AudioRecordRoutingProxy;
.super Landroid/media/AudioRecord;
.source "AudioRecordRoutingProxy.java"


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "nativeRecordInJavaObj"    # J

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/media/AudioRecord;-><init>(J)V

    .line 29
    return-void
.end method
