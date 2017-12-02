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
    .line 982
    invoke-direct {p0}, Landroid/media/session/ISessionCallback$Stub;-><init>()V

    .line 983
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    .line 982
    return-void
.end method


# virtual methods
.method public onAdjustVolume(I)V
    .locals 2
    .param p1, "direction"    # I

    .prologue
    .line 1155
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1156
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1157
    invoke-static {v0, p1}, Landroid/media/session/MediaSession;->-wrap0(Landroid/media/session/MediaSession;I)V

    .line 1154
    :cond_0
    return-void
.end method

.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

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
    invoke-static {v0, p1, p2, p3}, Landroid/media/session/MediaSession;->-wrap21(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 987
    :cond_0
    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1147
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1148
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1149
    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->-wrap1(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1146
    :cond_0
    return-void
.end method

.method public onFastForward()V
    .locals 2

    .prologue
    .line 1115
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1116
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1117
    invoke-static {v0}, Landroid/media/session/MediaSession;->-wrap2(Landroid/media/session/MediaSession;)V

    .line 1114
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

    .line 997
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 999
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1000
    :try_start_0
    invoke-static {v0, p1}, Landroid/media/session/MediaSession;->-wrap3(Landroid/media/session/MediaSession;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1003
    :cond_0
    if-eqz p3, :cond_1

    .line 1004
    invoke-virtual {p3, p2, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 996
    :cond_1
    return-void

    .line 1002
    :catchall_0
    move-exception v1

    .line 1003
    if-eqz p3, :cond_2

    .line 1004
    invoke-virtual {p3, p2, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 1002
    :cond_2
    throw v1
.end method

.method public onNext()V
    .locals 2

    .prologue
    .line 1099
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1100
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1101
    invoke-static {v0}, Landroid/media/session/MediaSession;->-wrap4(Landroid/media/session/MediaSession;)V

    .line 1098
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1083
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1084
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1085
    invoke-static {v0}, Landroid/media/session/MediaSession;->-wrap5(Landroid/media/session/MediaSession;)V

    .line 1082
    :cond_0
    return-void
.end method

.method public onPlay()V
    .locals 2

    .prologue
    .line 1043
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1044
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1045
    invoke-static {v0}, Landroid/media/session/MediaSession;->-wrap9(Landroid/media/session/MediaSession;)V

    .line 1042
    :cond_0
    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1051
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1052
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1053
    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->-wrap6(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1050
    :cond_0
    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1059
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1060
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1061
    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->-wrap7(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1058
    :cond_0
    return-void
.end method

.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1067
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1068
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1069
    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->-wrap8(Landroid/media/session/MediaSession;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1066
    :cond_0
    return-void
.end method

.method public onPrepare()V
    .locals 2

    .prologue
    .line 1011
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1012
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1013
    invoke-static {v0}, Landroid/media/session/MediaSession;->-wrap13(Landroid/media/session/MediaSession;)V

    .line 1010
    :cond_0
    return-void
.end method

.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1019
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1020
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1021
    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->-wrap10(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1018
    :cond_0
    return-void
.end method

.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1027
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1028
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1029
    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->-wrap11(Landroid/media/session/MediaSession;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1026
    :cond_0
    return-void
.end method

.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1035
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1036
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1037
    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->-wrap12(Landroid/media/session/MediaSession;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1034
    :cond_0
    return-void
.end method

.method public onPrevious()V
    .locals 2

    .prologue
    .line 1107
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1108
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1109
    invoke-static {v0}, Landroid/media/session/MediaSession;->-wrap14(Landroid/media/session/MediaSession;)V

    .line 1106
    :cond_0
    return-void
.end method

.method public onRate(Landroid/media/Rating;)V
    .locals 2
    .param p1, "rating"    # Landroid/media/Rating;

    .prologue
    .line 1139
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1140
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1141
    invoke-static {v0, p1}, Landroid/media/session/MediaSession;->-wrap15(Landroid/media/session/MediaSession;Landroid/media/Rating;)V

    .line 1138
    :cond_0
    return-void
.end method

.method public onRewind()V
    .locals 2

    .prologue
    .line 1123
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1124
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1125
    invoke-static {v0}, Landroid/media/session/MediaSession;->-wrap16(Landroid/media/session/MediaSession;)V

    .line 1122
    :cond_0
    return-void
.end method

.method public onSeekTo(J)V
    .locals 3
    .param p1, "pos"    # J

    .prologue
    .line 1131
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1132
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1133
    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->-wrap17(Landroid/media/session/MediaSession;J)V

    .line 1130
    :cond_0
    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1163
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1164
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1165
    invoke-static {v0, p1}, Landroid/media/session/MediaSession;->-wrap18(Landroid/media/session/MediaSession;I)V

    .line 1162
    :cond_0
    return-void
.end method

.method public onSkipToTrack(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 1075
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1076
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1077
    invoke-static {v0, p1, p2}, Landroid/media/session/MediaSession;->-wrap19(Landroid/media/session/MediaSession;J)V

    .line 1074
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1091
    iget-object v1, p0, Landroid/media/session/MediaSession$CallbackStub;->mMediaSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSession;

    .line 1092
    .local v0, "session":Landroid/media/session/MediaSession;
    if-eqz v0, :cond_0

    .line 1093
    invoke-static {v0}, Landroid/media/session/MediaSession;->-wrap20(Landroid/media/session/MediaSession;)V

    .line 1090
    :cond_0
    return-void
.end method
