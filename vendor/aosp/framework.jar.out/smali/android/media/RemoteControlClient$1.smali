.class Landroid/media/RemoteControlClient$1;
.super Landroid/media/session/MediaSession$Callback;
.source "RemoteControlClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteControlClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteControlClient;


# direct methods
.method constructor <init>(Landroid/media/RemoteControlClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 989
    iput-object p1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekTo(J)V
    .locals 3
    .param p1, "pos"    # J

    .prologue
    .line 993
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v1}, Landroid/media/RemoteControlClient;->-get1(Landroid/media/RemoteControlClient;)I

    move-result v1

    invoke-static {v0, v1, p1, p2}, Landroid/media/RemoteControlClient;->-wrap1(Landroid/media/RemoteControlClient;IJ)V

    .line 992
    return-void
.end method

.method public onSetRating(Landroid/media/Rating;)V
    .locals 3
    .param p1, "rating"    # Landroid/media/Rating;

    .prologue
    .line 998
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v0}, Landroid/media/RemoteControlClient;->-get6(Landroid/media/RemoteControlClient;)I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    .line 999
    iget-object v0, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    iget-object v1, p0, Landroid/media/RemoteControlClient$1;->this$0:Landroid/media/RemoteControlClient;

    invoke-static {v1}, Landroid/media/RemoteControlClient;->-get1(Landroid/media/RemoteControlClient;)I

    move-result v1

    const v2, 0x10000001

    invoke-static {v0, v1, v2, p1}, Landroid/media/RemoteControlClient;->-wrap2(Landroid/media/RemoteControlClient;IILjava/lang/Object;)V

    .line 997
    :cond_0
    return-void
.end method
