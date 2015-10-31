.class public Landroid/media/session/MediaSession$CallbackStub;
.super Landroid/media/session/ISessionCallback$Stub;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackStub"
.end annotation


# instance fields
.field private mMediaSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/media/session/MediaSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/media/session/MediaSession;)V
    .locals 1
    .param p1, "session"    # Landroid/media/session/MediaSession;

    .prologue
    .line 895
    invoke-direct {p0}, Landroid/media/session/ISessionCallback$Stub;-><init>()V

    .line 896
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    .line 897
    return-void
.end method


# virtual methods
.method public onAdjustVolume(I)V
    .locals 2
    .param p1, "direction"    # I

    .prologue
    .line 1028
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1029
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1030
    # invokes: Landroid/media/session/MediaSession;->dispatchAdjustVolume(I)V
    invoke-static {v0, p1}, Landroid/media/session/MediaSession;->access$1800(Landroid/media/session/MediaSession;I)V

    .line 1032
    :cond_0
    return-void
.end method

.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .prologue
    .line 901
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 902
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 903
    # invokes: Landroid/media/session/MediaSession;->postCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    invoke-static {v0, p1, p2, p3}, Landroid/media/session/MediaSession;->access$300(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 905
    :cond_0
    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1020
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1021
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1022
    # invokes: Landroid/media/session/MediaSession;->dispatchCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->access$1700(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1024
    :cond_0
    return-void
.end method

.method public onFastForward()V
    .locals 2

    .prologue
    .line 988
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 989
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 990
    # invokes: Landroid/media/session/MediaSession;->dispatchFastForward()V
    invoke-static {v0}, Landroid/media/session/MediaSession;->access$1300(Landroid/media/session/MediaSession;)V

    .line 992
    :cond_0
    return-void
.end method

.method public onMediaButton(Landroid/content/Intent;ILandroid/os/ResultReceiver;)V
    .locals 3
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;
    .param p2, "sequenceNumber"    # I
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .prologue
    const/4 v2, 0x0

    .line 910
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 912
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 913
    :try_start_0
    # invokes: Landroid/media/session/MediaSession;->dispatchMediaButton(Landroid/content/Intent;)V
    invoke-static {v0, p1}, Landroid/media/session/MediaSession;->access$400(Landroid/media/session/MediaSession;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 916
    :cond_0
    if-eqz p3, :cond_1

    .line 917
    invoke-virtual {p3, p2, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 920
    :cond_1
    return-void

    .line 916
    :catchall_0
    move-exception v1

    if-eqz p3, :cond_2

    .line 917
    invoke-virtual {p3, p2, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_2
    throw v1
.end method

.method public onNext()V
    .locals 2

    .prologue
    .line 972
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 973
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 974
    # invokes: Landroid/media/session/MediaSession;->dispatchNext()V
    invoke-static {v0}, Landroid/media/session/MediaSession;->access$1100(Landroid/media/session/MediaSession;)V

    .line 976
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 956
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 957
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 958
    # invokes: Landroid/media/session/MediaSession;->dispatchPause()V
    invoke-static {v0}, Landroid/media/session/MediaSession;->access$900(Landroid/media/session/MediaSession;)V

    .line 960
    :cond_0
    return-void
.end method

.method public onPlay()V
    .locals 2

    .prologue
    .line 924
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 925
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 926
    # invokes: Landroid/media/session/MediaSession;->dispatchPlay()V
    invoke-static {v0}, Landroid/media/session/MediaSession;->access$500(Landroid/media/session/MediaSession;)V

    .line 928
    :cond_0
    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 932
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 933
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 934
    # invokes: Landroid/media/session/MediaSession;->dispatchPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->access$600(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 936
    :cond_0
    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 940
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 941
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 942
    # invokes: Landroid/media/session/MediaSession;->dispatchPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->access$700(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 944
    :cond_0
    return-void
.end method

.method public onPrevious()V
    .locals 2

    .prologue
    .line 980
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 981
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 982
    # invokes: Landroid/media/session/MediaSession;->dispatchPrevious()V
    invoke-static {v0}, Landroid/media/session/MediaSession;->access$1200(Landroid/media/session/MediaSession;)V

    .line 984
    :cond_0
    return-void
.end method

.method public onRate(Landroid/media/Rating;)V
    .locals 2
    .param p1, "rating"    # Landroid/media/Rating;

    .prologue
    .line 1012
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1013
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1014
    # invokes: Landroid/media/session/MediaSession;->dispatchRate(Landroid/media/Rating;)V
    invoke-static {v0, p1}, Landroid/media/session/MediaSession;->access$1600(Landroid/media/session/MediaSession;Landroid/media/Rating;)V

    .line 1016
    :cond_0
    return-void
.end method

.method public onRewind()V
    .locals 2

    .prologue
    .line 996
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 997
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 998
    # invokes: Landroid/media/session/MediaSession;->dispatchRewind()V
    invoke-static {v0}, Landroid/media/session/MediaSession;->access$1400(Landroid/media/session/MediaSession;)V

    .line 1000
    :cond_0
    return-void
.end method

.method public onSeekTo(J)V
    .locals 3
    .param p1, "pos"    # J

    .prologue
    .line 1004
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1005
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1006
    # invokes: Landroid/media/session/MediaSession;->dispatchSeekTo(J)V
    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->access$1500(Landroid/media/session/MediaSession;J)V

    .line 1008
    :cond_0
    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1036
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1037
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1038
    # invokes: Landroid/media/session/MediaSession;->dispatchSetVolumeTo(I)V
    invoke-static {v0, p1}, Landroid/media/session/MediaSession;->access$1900(Landroid/media/session/MediaSession;I)V

    .line 1040
    :cond_0
    return-void
.end method

.method public onSkipToTrack(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 948
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 949
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 950
    # invokes: Landroid/media/session/MediaSession;->dispatchSkipToItem(J)V
    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->access$800(Landroid/media/session/MediaSession;J)V

    .line 952
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 964
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 965
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 966
    # invokes: Landroid/media/session/MediaSession;->dispatchStop()V
    invoke-static {v0}, Landroid/media/session/MediaSession;->access$1000(Landroid/media/session/MediaSession;)V

    .line 968
    :cond_0
    return-void
.end method
