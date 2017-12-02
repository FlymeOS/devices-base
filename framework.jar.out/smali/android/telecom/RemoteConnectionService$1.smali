.class Landroid/telecom/RemoteConnectionService$1;
.super Ljava/lang/Object;
.source "RemoteConnectionService.java"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/RemoteConnectionService;


# direct methods
.method constructor <init>(Landroid/telecom/RemoteConnectionService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/RemoteConnectionService;

    .prologue
    .line 52
    iput-object p1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V
    .locals 7
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "parcel"    # Landroid/telecom/ParcelableConference;

    .prologue
    const/4 v6, 0x0

    .line 208
    new-instance v1, Landroid/telecom/RemoteConference;

    .line 209
    iget-object v5, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v5}, Landroid/telecom/RemoteConnectionService;->-get6(Landroid/telecom/RemoteConnectionService;)Lcom/android/internal/telecom/IConnectionService;

    move-result-object v5

    .line 208
    invoke-direct {v1, p1, v5}, Landroid/telecom/RemoteConference;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;)V

    .line 211
    .local v1, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getConnectionIds()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "id$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 212
    .local v2, "id":Ljava/lang/String;
    iget-object v5, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v5}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection;

    .line 213
    .local v0, "c":Landroid/telecom/RemoteConnection;
    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v1, v0}, Landroid/telecom/RemoteConference;->addConnection(Landroid/telecom/RemoteConnection;)V

    goto :goto_0

    .line 217
    .end local v0    # "c":Landroid/telecom/RemoteConnection;
    .end local v2    # "id":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Landroid/telecom/RemoteConference;->getConnections()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 221
    const-string/jumbo v5, "addConferenceCall - skipping"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    return-void

    .line 225
    :cond_2
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getState()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/telecom/RemoteConference;->setState(I)V

    .line 226
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getConnectionCapabilities()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/telecom/RemoteConference;->setConnectionCapabilities(I)V

    .line 227
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getConnectionProperties()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/telecom/RemoteConference;->setConnectionProperties(I)V

    .line 228
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/telecom/RemoteConference;->putExtras(Landroid/os/Bundle;)V

    .line 229
    iget-object v5, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v5}, Landroid/telecom/RemoteConnectionService;->-get2(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 235
    .local v4, "newExtras":Landroid/os/Bundle;
    const-string/jumbo v5, "android.telecom.extra.ORIGINAL_CONNECTION_ID"

    invoke-virtual {v4, v5, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v1, v4}, Landroid/telecom/RemoteConference;->putExtras(Landroid/os/Bundle;)V

    .line 238
    new-instance v5, Landroid/telecom/RemoteConnectionService$1$1;

    invoke-direct {v5, p0, p1}, Landroid/telecom/RemoteConnectionService$1$1;-><init>(Landroid/telecom/RemoteConnectionService$1;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/telecom/RemoteConference;->registerCallback(Landroid/telecom/RemoteConference$Callback;)V

    .line 246
    iget-object v5, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v5}, Landroid/telecom/RemoteConnectionService;->-get5(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/telecom/ConnectionService;->addRemoteConference(Landroid/telecom/RemoteConference;)V

    .line 207
    return-void
.end method

.method public addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/telecom/ParcelableConnection;

    .prologue
    .line 344
    new-instance v0, Landroid/telecom/RemoteConnection;

    .line 345
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v1}, Landroid/telecom/RemoteConnectionService;->-get6(Landroid/telecom/RemoteConnectionService;)Lcom/android/internal/telecom/IConnectionService;

    move-result-object v1

    .line 344
    invoke-direct {v0, p1, v1, p2}, Landroid/telecom/RemoteConnection;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ParcelableConnection;)V

    .line 346
    .local v0, "remoteConnection":Landroid/telecom/RemoteConnection;
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v1}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    new-instance v1, Landroid/telecom/RemoteConnectionService$1$2;

    invoke-direct {v1, p0, p1}, Landroid/telecom/RemoteConnectionService$1$2;-><init>(Landroid/telecom/RemoteConnectionService$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->registerCallback(Landroid/telecom/RemoteConnection$Callback;)V

    .line 354
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v1}, Landroid/telecom/RemoteConnectionService;->-get5(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionService;->addRemoteExistingConnection(Landroid/telecom/RemoteConnection;)V

    .line 343
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 320
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "parcel"    # Landroid/telecom/ParcelableConnection;

    .prologue
    const/4 v6, 0x6

    .line 59
    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v5, "handleCreateConnectionSuccessful"

    invoke-static {v4, p1, v5}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v3

    .line 60
    .local v3, "connection":Landroid/telecom/RemoteConnection;
    invoke-static {}, Landroid/telecom/RemoteConnectionService;->-get1()Landroid/telecom/RemoteConnection;

    move-result-object v4

    if-eq v3, v4, :cond_7

    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->-get7(Landroid/telecom/RemoteConnectionService;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 61
    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->-get7(Landroid/telecom/RemoteConnectionService;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConnectionCapabilities()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telecom/RemoteConnection;->setConnectionCapabilities(I)V

    .line 64
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConnectionProperties()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telecom/RemoteConnection;->setConnectionProperties(I)V

    .line 65
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandle()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_0

    .line 66
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v4

    if-eq v4, v6, :cond_1

    .line 67
    :cond_0
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandle()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandlePresentation()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/telecom/RemoteConnection;->setAddress(Landroid/net/Uri;I)V

    .line 69
    :cond_1
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 70
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v4

    if-eq v4, v6, :cond_3

    .line 72
    :cond_2
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayNamePresentation()I

    move-result v5

    .line 71
    invoke-virtual {v3, v4, v5}, Landroid/telecom/RemoteConnection;->setCallerDisplayName(Ljava/lang/String;I)V

    .line 76
    :cond_3
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 77
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/telecom/RemoteConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 81
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v2, "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConferenceableConnectionIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "confId$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    .local v0, "confId":Ljava/lang/String;
    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 84
    iget-object v4, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/RemoteConnection;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 79
    .end local v0    # "confId":Ljava/lang/String;
    .end local v1    # "confId$iterator":Ljava/util/Iterator;
    .end local v2    # "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    :cond_5
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telecom/RemoteConnection;->setState(I)V

    goto :goto_0

    .line 87
    .restart local v1    # "confId$iterator":Ljava/util/Iterator;
    .restart local v2    # "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    :cond_6
    invoke-virtual {v3, v2}, Landroid/telecom/RemoteConnection;->setConferenceableConnections(Ljava/util/List;)V

    .line 88
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getVideoState()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/telecom/RemoteConnection;->setVideoState(I)V

    .line 89
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection;->getState()I

    move-result v4

    if-ne v4, v6, :cond_7

    .line 92
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection;->setDestroyed()V

    .line 57
    .end local v1    # "confId$iterator":Ljava/util/Iterator;
    .end local v2    # "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    :cond_7
    return-void
.end method

.method public onConnectionEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 377
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "onConnectionEvent"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/telecom/RemoteConnection;->onConnectionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 376
    :cond_0
    return-void
.end method

.method public onPostDialChar(Ljava/lang/String;C)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "nextChar"    # C

    .prologue
    .line 268
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "onPostDialChar"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->onPostDialChar(C)V

    .line 267
    return-void
.end method

.method public onPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "remaining"    # Ljava/lang/String;

    .prologue
    .line 262
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "onPostDialWait"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setPostDialWait(Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public putExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 359
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1}, Landroid/telecom/RemoteConnectionService;->-wrap2(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "putExtras"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->putExtras(Landroid/os/Bundle;)V

    .line 358
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "putExtras"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap0(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConference;->putExtras(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/internal/telecom/RemoteServiceCallback;

    .prologue
    .line 273
    return-void
.end method

.method public removeCall(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "removeCall"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/RemoteConnection;->setDestroyed()V

    .line 250
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "removeCall"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap0(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/RemoteConference;->setDestroyed()V

    goto :goto_0
.end method

.method public removeExtras(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 368
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0, p1}, Landroid/telecom/RemoteConnectionService;->-wrap2(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "removeExtra"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->removeExtras(Ljava/util/List;)V

    .line 367
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "removeExtra"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap0(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConference;->removeExtras(Ljava/util/List;)V

    goto :goto_0
.end method

.method public setActive(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x4

    .line 99
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setActive"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telecom/RemoteConnection;->setState(I)V

    .line 98
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setActive"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap0(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telecom/RemoteConference;->setState(I)V

    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "presentation"    # I

    .prologue
    .line 307
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setAddress"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/telecom/RemoteConnection;->setAddress(Landroid/net/Uri;I)V

    .line 306
    return-void
.end method

.method public setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callerDisplayName"    # Ljava/lang/String;
    .param p3, "presentation"    # I

    .prologue
    .line 314
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setCallerDisplayName"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/telecom/RemoteConnection;->setCallerDisplayName(Ljava/lang/String;I)V

    .line 313
    return-void
.end method

.method public setConferenceMergeFailed(Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 198
    return-void
.end method

.method public final setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p2, "conferenceableConnectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v0, "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "id$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 328
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v3}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 329
    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v3}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 333
    .end local v1    # "id":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v3, p1}, Landroid/telecom/RemoteConnectionService;->-wrap2(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 334
    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v4, "setConferenceableConnections"

    invoke-static {v3, p1, v4}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/telecom/RemoteConnection;->setConferenceableConnections(Ljava/util/List;)V

    .line 325
    :goto_1
    return-void

    .line 337
    :cond_2
    iget-object v3, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v4, "setConferenceableConnections"

    invoke-static {v3, p1, v4}, Landroid/telecom/RemoteConnectionService;->-wrap0(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/telecom/RemoteConference;->setConferenceableConnections(Ljava/util/List;)V

    goto :goto_1
.end method

.method public setConnectionCapabilities(Ljava/lang/String;I)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connectionCapabilities"    # I

    .prologue
    .line 156
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setConnectionCapabilities"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setConnectionCapabilities(I)V

    .line 155
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setConnectionCapabilities"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap0(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConference;->setConnectionCapabilities(I)V

    goto :goto_0
.end method

.method public setConnectionProperties(Ljava/lang/String;I)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connectionProperties"    # I

    .prologue
    .line 167
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setConnectionProperties"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setConnectionProperties(I)V

    .line 166
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setConnectionProperties"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap0(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConference;->setConnectionProperties(I)V

    goto :goto_0
.end method

.method public setDialing(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setDialing"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 117
    const/4 v1, 0x3

    .line 116
    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->setState(I)V

    .line 115
    return-void
.end method

.method public setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 128
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setDisconnected"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 127
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setDisconnected"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap0(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConference;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    goto :goto_0
.end method

.method public setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "conferenceCallId"    # Ljava/lang/String;

    .prologue
    .line 180
    iget-object v2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v3, "setIsConferenced"

    invoke-static {v2, p1, v3}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v1

    .line 181
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-static {}, Landroid/telecom/RemoteConnectionService;->-get1()Landroid/telecom/RemoteConnection;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 182
    if-nez p2, :cond_1

    .line 184
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection;->getConference()Landroid/telecom/RemoteConference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 185
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection;->getConference()Landroid/telecom/RemoteConference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telecom/RemoteConference;->removeConnection(Landroid/telecom/RemoteConnection;)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v2, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v3, "setIsConferenced"

    invoke-static {v2, p2, v3}, Landroid/telecom/RemoteConnectionService;->-wrap0(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    .line 190
    .local v0, "conference":Landroid/telecom/RemoteConference;
    invoke-static {}, Landroid/telecom/RemoteConnectionService;->-get0()Landroid/telecom/RemoteConference;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 191
    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConference;->addConnection(Landroid/telecom/RemoteConnection;)V

    goto :goto_0
.end method

.method public setIsVoipAudioMode(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isVoip"    # Z

    .prologue
    .line 295
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setIsVoipAudioMode"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setIsVoipAudioMode(Z)V

    .line 294
    return-void
.end method

.method public setOnHold(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x5

    .line 139
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->-get3(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setOnHold"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telecom/RemoteConnection;->setState(I)V

    .line 138
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setOnHold"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap0(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telecom/RemoteConference;->setState(I)V

    goto :goto_0
.end method

.method public setPulling(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setPulling"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 123
    const/4 v1, 0x7

    .line 122
    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->setState(I)V

    .line 121
    return-void
.end method

.method public setRingbackRequested(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "ringing"    # Z

    .prologue
    .line 150
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setRingbackRequested"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setRingbackRequested(Z)V

    .line 149
    return-void
.end method

.method public setRinging(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setRinging"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    .line 111
    const/4 v1, 0x2

    .line 110
    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->setState(I)V

    .line 109
    return-void
.end method

.method public setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;

    .prologue
    .line 301
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setStatusHints"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setStatusHints(Landroid/telecom/StatusHints;)V

    .line 300
    return-void
.end method

.method public setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoProvider"    # Lcom/android/internal/telecom/IVideoProvider;

    .prologue
    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "remoteVideoProvider":Landroid/telecom/RemoteConnection$VideoProvider;
    if-eqz p2, :cond_0

    .line 281
    new-instance v0, Landroid/telecom/RemoteConnection$VideoProvider;

    .end local v0    # "remoteVideoProvider":Landroid/telecom/RemoteConnection$VideoProvider;
    invoke-direct {v0, p2}, Landroid/telecom/RemoteConnection$VideoProvider;-><init>(Lcom/android/internal/telecom/IVideoProvider;)V

    .line 283
    :cond_0
    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v2, "setVideoProvider"

    invoke-static {v1, p1, v2}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/RemoteConnection;->setVideoProvider(Landroid/telecom/RemoteConnection$VideoProvider;)V

    .line 278
    return-void
.end method

.method public setVideoState(Ljava/lang/String;I)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .prologue
    .line 289
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$1;->this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setVideoState"

    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->-wrap1(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setVideoState(I)V

    .line 288
    return-void
.end method
