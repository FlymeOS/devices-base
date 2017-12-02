.class Landroid/media/MediaRouter$VolumeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VolumeChangeReceiver"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2929
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 2932
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2933
    const-string/jumbo v3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 2934
    const/4 v4, -0x1

    .line 2933
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2935
    .local v2, "streamType":I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 2936
    return-void

    .line 2939
    :cond_0
    const-string/jumbo v3, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2941
    .local v0, "newVolume":I
    const-string/jumbo v3, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    .line 2940
    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2942
    .local v1, "oldVolume":I
    if-eq v0, v1, :cond_1

    .line 2943
    invoke-static {v0}, Landroid/media/MediaRouter;->systemVolumeChanged(I)V

    .line 2931
    .end local v0    # "newVolume":I
    .end local v1    # "oldVolume":I
    .end local v2    # "streamType":I
    :cond_1
    return-void
.end method
