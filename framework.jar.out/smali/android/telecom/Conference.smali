.class public abstract Landroid/telecom/Conference;
.super Landroid/telecom/Conferenceable;
.source "Conference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Conference$1;,
        Landroid/telecom/Conference$Listener;
    }
.end annotation


# static fields
.field public static final CONNECT_TIME_NOT_SPECIFIED:J


# instance fields
.field private mCallAudioState:Landroid/telecom/CallAudioState;

.field private final mChildConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final mConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectTimeMillis:J

.field private mConnectionCapabilities:I

.field private final mConnectionDeathListener:Landroid/telecom/Connection$Listener;

.field private mConnectionProperties:I

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private mDisconnectMessage:Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;

.field private final mExtrasLock:Ljava/lang/Object;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/Conference$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private mPreviousExtraKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mState:I

.field private mStatusHints:Landroid/telecom/StatusHints;

.field private mTelecomCallId:Ljava/lang/String;

.field private final mUnmodifiableChildConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnmodifiableConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/telecom/Conference;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/telecom/Conference;)V
    .locals 0

    invoke-direct {p0}, Landroid/telecom/Conference;->fireOnConferenceableConnectionsChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;)V
    .locals 2
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/telecom/Conferenceable;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    .line 67
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    .line 69
    iget-object v0, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 68
    iput-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    .line 72
    iget-object v0, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 71
    iput-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableConferenceableConnections:Ljava/util/List;

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Landroid/telecom/Conference;->mState:I

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/telecom/Conference;->mConnectTimeMillis:J

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telecom/Conference;->mExtrasLock:Ljava/lang/Object;

    .line 88
    new-instance v0, Landroid/telecom/Conference$1;

    invoke-direct {v0, p0}, Landroid/telecom/Conference$1;-><init>(Landroid/telecom/Conference;)V

    iput-object v0, p0, Landroid/telecom/Conference;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    .line 103
    iput-object p1, p0, Landroid/telecom/Conference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 102
    return-void
.end method

.method public static can(II)Z
    .locals 2
    .param p0, "capabilities"    # I
    .param p1, "capability"    # I

    .prologue
    const/4 v0, 0x0

    .line 182
    and-int v1, p0, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private final clearConferenceableList()V
    .locals 3

    .prologue
    .line 645
    iget-object v2, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 646
    .local v0, "c":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/Conference;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, v2}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    goto :goto_0

    .line 648
    .end local v0    # "c":Landroid/telecom/Connection;
    :cond_0
    iget-object v2, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 644
    return-void
.end method

.method private final fireOnConferenceableConnectionsChanged()V
    .locals 3

    .prologue
    .line 499
    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    .line 500
    .local v0, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {p0}, Landroid/telecom/Conference;->getConferenceableConnections()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/telecom/Conference$Listener;->onConferenceableConnectionsChanged(Landroid/telecom/Conference;Ljava/util/List;)V

    goto :goto_0

    .line 498
    .end local v0    # "l":Landroid/telecom/Conference$Listener;
    :cond_0
    return-void
.end method

.method private setState(I)V
    .locals 7
    .param p1, "newState"    # I

    .prologue
    .line 627
    const/4 v3, 0x4

    if-eq p1, v3, :cond_0

    .line 628
    const/4 v3, 0x5

    if-eq p1, v3, :cond_0

    .line 629
    const/4 v3, 0x6

    if-eq p1, v3, :cond_0

    .line 630
    const-string/jumbo v3, "Unsupported state transition for Conference call."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 631
    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 630
    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 632
    return-void

    .line 635
    :cond_0
    iget v3, p0, Landroid/telecom/Conference;->mState:I

    if-eq v3, p1, :cond_1

    .line 636
    iget v2, p0, Landroid/telecom/Conference;->mState:I

    .line 637
    .local v2, "oldState":I
    iput p1, p0, Landroid/telecom/Conference;->mState:I

    .line 638
    iget-object v3, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    .line 639
    .local v0, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v0, p0, v2, p1}, Landroid/telecom/Conference$Listener;->onStateChanged(Landroid/telecom/Conference;II)V

    goto :goto_0

    .line 626
    .end local v0    # "l":Landroid/telecom/Conference$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    .end local v2    # "oldState":I
    :cond_1
    return-void
.end method


# virtual methods
.method public addCapability(I)V
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 216
    iget v0, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    .line 217
    .local v0, "newCapabilities":I
    or-int/2addr v0, p1

    .line 219
    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->setConnectionCapabilities(I)V

    .line 215
    return-void
.end method

.method public final addConnection(Landroid/telecom/Connection;)Z
    .locals 6
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 421
    const-string/jumbo v2, "Connection=%s, connection="

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 432
    :cond_0
    return v4

    .line 423
    :cond_1
    invoke-virtual {p1, p0}, Landroid/telecom/Connection;->setConference(Landroid/telecom/Conference;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 424
    iget-object v2, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    invoke-virtual {p0, p1}, Landroid/telecom/Conference;->onConnectionAdded(Landroid/telecom/Connection;)V

    .line 426
    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    .line 427
    .local v0, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Conference$Listener;->onConnectionAdded(Landroid/telecom/Conference;Landroid/telecom/Connection;)V

    goto :goto_0

    .line 429
    .end local v0    # "l":Landroid/telecom/Conference$Listener;
    :cond_2
    return v5
.end method

.method public final addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;
    .locals 1
    .param p1, "listener"    # Landroid/telecom/Conference$Listener;

    .prologue
    .line 542
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 543
    return-object p0
.end method

.method public can(I)Z
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 193
    iget v0, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    invoke-static {v0, p1}, Landroid/telecom/Conference;->can(II)Z

    move-result v0

    return v0
.end method

.method public final destroy()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 515
    const-string/jumbo v4, "destroying conference : %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p0, v5, v6

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    iget-object v4, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "connection$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 518
    .local v0, "connection":Landroid/telecom/Connection;
    const-string/jumbo v4, "removing connection %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->removeConnection(Landroid/telecom/Connection;)V

    goto :goto_0

    .line 523
    .end local v0    # "connection":Landroid/telecom/Connection;
    :cond_0
    iget v4, p0, Landroid/telecom/Conference;->mState:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    .line 524
    const-string/jumbo v4, "setting to disconnected"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 525
    new-instance v4, Landroid/telecom/DisconnectCause;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p0, v4}, Landroid/telecom/Conference;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 529
    :cond_1
    iget-object v4, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "l$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Conference$Listener;

    .line 530
    .local v2, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v2, p0}, Landroid/telecom/Conference$Listener;->onDestroyed(Landroid/telecom/Conference;)V

    goto :goto_1

    .line 514
    .end local v2    # "l":Landroid/telecom/Conference$Listener;
    :cond_2
    return-void
.end method

.method public final getAudioState()Landroid/telecom/AudioState;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 232
    new-instance v0, Landroid/telecom/AudioState;

    iget-object v1, p0, Landroid/telecom/Conference;->mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-direct {v0, v1}, Landroid/telecom/AudioState;-><init>(Landroid/telecom/CallAudioState;)V

    return-object v0
.end method

.method public final getCallAudioState()Landroid/telecom/CallAudioState;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Landroid/telecom/Conference;->mCallAudioState:Landroid/telecom/CallAudioState;

    return-object v0
.end method

.method public final getConferenceableConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 508
    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableConferenceableConnections:Ljava/util/List;

    return-object v0
.end method

.method public final getConnectTimeMillis()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 599
    invoke-virtual {p0}, Landroid/telecom/Conference;->getConnectionTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getConnectionCapabilities()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    return v0
.end method

.method public final getConnectionProperties()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Landroid/telecom/Conference;->mConnectionProperties:I

    return v0
.end method

.method public final getConnectionTime()J
    .locals 2

    .prologue
    .line 610
    iget-wide v0, p0, Landroid/telecom/Conference;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public final getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    return-object v0
.end method

.method public final getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Landroid/telecom/Conference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Landroid/telecom/Conference;->mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getPrimaryConnection()Landroid/telecom/Connection;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 567
    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    :cond_0
    return-object v1

    .line 570
    :cond_1
    iget-object v0, p0, Landroid/telecom/Conference;->mUnmodifiableChildConnections:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Landroid/telecom/Conference;->mState:I

    return v0
.end method

.method public final getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Landroid/telecom/Conference;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public final getTelecomCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Landroid/telecom/Conference;->mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    return v0
.end method

.method final handleExtrasChanged(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 867
    const/4 v0, 0x0

    .line 868
    .local v0, "b":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/telecom/Conference;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v2

    .line 869
    :try_start_0
    iput-object p1, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    .line 870
    iget-object v1, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 871
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "b":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 874
    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->onExtrasChanged(Landroid/os/Bundle;)V

    .line 866
    return-void

    .line 868
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onAudioStateChanged(Landroid/telecom/AudioState;)V
    .locals 0
    .param p1, "state"    # Landroid/telecom/AudioState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 323
    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 0
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 331
    return-void
.end method

.method public onConnectionAdded(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 338
    return-void
.end method

.method public onDisconnect()V
    .locals 0

    .prologue
    .line 262
    return-void
.end method

.method public onExtrasChanged(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 858
    return-void
.end method

.method public onHold()V
    .locals 0

    .prologue
    .line 283
    return-void
.end method

.method public onMerge()V
    .locals 0

    .prologue
    .line 294
    return-void
.end method

.method public onMerge(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 278
    return-void
.end method

.method public onPlayDtmfTone(C)V
    .locals 0
    .param p1, "c"    # C

    .prologue
    .line 307
    return-void
.end method

.method public onSeparate(Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 270
    return-void
.end method

.method public onStopDtmfTone()V
    .locals 0

    .prologue
    .line 312
    return-void
.end method

.method public onSwap()V
    .locals 0

    .prologue
    .line 300
    return-void
.end method

.method public onUnhold()V
    .locals 0

    .prologue
    .line 288
    return-void
.end method

.method public final putExtra(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 779
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 780
    .local v0, "newExtras":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 781
    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->putExtras(Landroid/os/Bundle;)V

    .line 778
    return-void
.end method

.method public final putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 792
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 793
    .local v0, "newExtras":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->putExtras(Landroid/os/Bundle;)V

    .line 791
    return-void
.end method

.method public final putExtra(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 766
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 767
    .local v0, "newExtras":Landroid/os/Bundle;
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 768
    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->putExtras(Landroid/os/Bundle;)V

    .line 765
    return-void
.end method

.method public final putExtras(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 738
    if-nez p1, :cond_0

    .line 739
    return-void

    .line 745
    :cond_0
    iget-object v4, p0, Landroid/telecom/Conference;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v4

    .line 746
    :try_start_0
    iget-object v3, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 747
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    .line 749
    :cond_1
    iget-object v3, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 750
    new-instance v2, Landroid/os/Bundle;

    iget-object v3, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "listenersBundle":Landroid/os/Bundle;
    monitor-exit v4

    .line 753
    iget-object v3, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    .line 754
    .local v0, "l":Landroid/telecom/Conference$Listener;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, p0, v3}, Landroid/telecom/Conference$Listener;->onExtrasChanged(Landroid/telecom/Conference;Landroid/os/Bundle;)V

    goto :goto_0

    .line 745
    .end local v0    # "l":Landroid/telecom/Conference$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    .end local v2    # "listenersBundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 737
    .restart local v1    # "l$iterator":Ljava/util/Iterator;
    .restart local v2    # "listenersBundle":Landroid/os/Bundle;
    :cond_2
    return-void
.end method

.method public removeCapability(I)V
    .locals 2
    .param p1, "capability"    # I

    .prologue
    .line 203
    iget v0, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    .line 204
    .local v0, "newCapabilities":I
    not-int v1, p1

    and-int/2addr v0, v1

    .line 206
    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->setConnectionCapabilities(I)V

    .line 202
    return-void
.end method

.method public final removeConnection(Landroid/telecom/Connection;)V
    .locals 6
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 441
    const-string/jumbo v2, "removing %s from %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    iget-object v4, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/telecom/Conference;->mChildConnections:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 443
    invoke-virtual {p1}, Landroid/telecom/Connection;->resetConference()V

    .line 444
    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    .line 445
    .local v0, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Conference$Listener;->onConnectionRemoved(Landroid/telecom/Conference;Landroid/telecom/Connection;)V

    goto :goto_0

    .line 440
    .end local v0    # "l":Landroid/telecom/Conference$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public final removeExtras(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 803
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 804
    :cond_0
    return-void

    .line 807
    :cond_1
    iget-object v6, p0, Landroid/telecom/Conference;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v6

    .line 808
    :try_start_0
    iget-object v5, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    if-eqz v5, :cond_2

    .line 809
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 810
    .local v0, "key":Ljava/lang/String;
    iget-object v5, p0, Landroid/telecom/Conference;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 807
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_2
    monitor-exit v6

    .line 815
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 816
    .local v4, "unmodifiableKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "l$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Conference$Listener;

    .line 817
    .local v2, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v2, p0, v4}, Landroid/telecom/Conference$Listener;->onExtrasRemoved(Landroid/telecom/Conference;Ljava/util/List;)V

    goto :goto_1

    .line 802
    .end local v2    # "l":Landroid/telecom/Conference$Listener;
    :cond_3
    return-void
.end method

.method public final varargs removeExtras([Ljava/lang/String;)V
    .locals 1
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 827
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->removeExtras(Ljava/util/List;)V

    .line 826
    return-void
.end method

.method public final removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;
    .locals 1
    .param p1, "listener"    # Landroid/telecom/Conference$Listener;

    .prologue
    .line 554
    iget-object v0, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 555
    return-object p0
.end method

.method public final setActive()V
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/telecom/Conference;->setState(I)V

    .line 357
    return-void
.end method

.method final setCallAudioState(Landroid/telecom/CallAudioState;)V
    .locals 3
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 620
    const-string/jumbo v0, "setCallAudioState %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 621
    iput-object p1, p0, Landroid/telecom/Conference;->mCallAudioState:Landroid/telecom/CallAudioState;

    .line 622
    invoke-virtual {p0}, Landroid/telecom/Conference;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telecom/Conference;->onAudioStateChanged(Landroid/telecom/AudioState;)V

    .line 623
    invoke-virtual {p0, p1}, Landroid/telecom/Conference;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 619
    return-void
.end method

.method public final setConferenceableConnections(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 456
    .local p1, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    invoke-direct {p0}, Landroid/telecom/Conference;->clearConferenceableList()V

    .line 457
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 460
    .local v0, "c":Landroid/telecom/Connection;
    iget-object v2, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 461
    iget-object v2, p0, Landroid/telecom/Conference;->mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, v2}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 462
    iget-object v2, p0, Landroid/telecom/Conference;->mConferenceableConnections:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 465
    .end local v0    # "c":Landroid/telecom/Connection;
    :cond_1
    invoke-direct {p0}, Landroid/telecom/Conference;->fireOnConferenceableConnectionsChanged()V

    .line 455
    return-void
.end method

.method public final setConnectTimeMillis(J)V
    .locals 1
    .param p1, "connectTimeMillis"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 580
    invoke-virtual {p0, p1, p2}, Landroid/telecom/Conference;->setConnectionTime(J)V

    .line 579
    return-void
.end method

.method public final setConnectionCapabilities(I)V
    .locals 3
    .param p1, "connectionCapabilities"    # I

    .prologue
    .line 389
    iget v2, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    if-eq p1, v2, :cond_0

    .line 390
    iput p1, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    .line 392
    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    .line 393
    .local v0, "l":Landroid/telecom/Conference$Listener;
    iget v2, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    invoke-virtual {v0, p0, v2}, Landroid/telecom/Conference$Listener;->onConnectionCapabilitiesChanged(Landroid/telecom/Conference;I)V

    goto :goto_0

    .line 388
    .end local v0    # "l":Landroid/telecom/Conference$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public final setConnectionProperties(I)V
    .locals 3
    .param p1, "connectionProperties"    # I

    .prologue
    .line 405
    iget v2, p0, Landroid/telecom/Conference;->mConnectionProperties:I

    if-eq p1, v2, :cond_0

    .line 406
    iput p1, p0, Landroid/telecom/Conference;->mConnectionProperties:I

    .line 408
    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    .line 409
    .local v0, "l":Landroid/telecom/Conference$Listener;
    iget v2, p0, Landroid/telecom/Conference;->mConnectionProperties:I

    invoke-virtual {v0, p0, v2}, Landroid/telecom/Conference$Listener;->onConnectionPropertiesChanged(Landroid/telecom/Conference;I)V

    goto :goto_0

    .line 404
    .end local v0    # "l":Landroid/telecom/Conference$Listener;
    .end local v1    # "l$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public final setConnectionTime(J)V
    .locals 1
    .param p1, "connectionTimeMillis"    # J

    .prologue
    .line 589
    iput-wide p1, p0, Landroid/telecom/Conference;->mConnectTimeMillis:J

    .line 588
    return-void
.end method

.method public final setDialing()V
    .locals 1

    .prologue
    .line 351
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/telecom/Conference;->setState(I)V

    .line 350
    return-void
.end method

.method public final setDisconnected(Landroid/telecom/DisconnectCause;)V
    .locals 3
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 368
    iput-object p1, p0, Landroid/telecom/Conference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 369
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Landroid/telecom/Conference;->setState(I)V

    .line 370
    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    .line 371
    .local v0, "l":Landroid/telecom/Conference$Listener;
    iget-object v2, p0, Landroid/telecom/Conference;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    invoke-virtual {v0, p0, v2}, Landroid/telecom/Conference$Listener;->onDisconnected(Landroid/telecom/Conference;Landroid/telecom/DisconnectCause;)V

    goto :goto_0

    .line 367
    .end local v0    # "l":Landroid/telecom/Conference$Listener;
    :cond_0
    return-void
.end method

.method public final setExtras(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 698
    iget-object v4, p0, Landroid/telecom/Conference;->mExtrasLock:Ljava/lang/Object;

    monitor-enter v4

    .line 700
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/telecom/Conference;->putExtras(Landroid/os/Bundle;)V

    .line 703
    iget-object v3, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    if-eqz v3, :cond_3

    .line 704
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 705
    .local v2, "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "oldKey$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 706
    .local v0, "oldKey":Ljava/lang/String;
    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 707
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 698
    .end local v0    # "oldKey":Ljava/lang/String;
    .end local v1    # "oldKey$iterator":Ljava/util/Iterator;
    .end local v2    # "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 711
    .restart local v1    # "oldKey$iterator":Ljava/util/Iterator;
    .restart local v2    # "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 712
    invoke-virtual {p0, v2}, Landroid/telecom/Conference;->removeExtras(Ljava/util/List;)V

    .line 718
    .end local v1    # "oldKey$iterator":Ljava/util/Iterator;
    .end local v2    # "toRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    iget-object v3, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    if-nez v3, :cond_4

    .line 719
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    iput-object v3, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    .line 721
    :cond_4
    iget-object v3, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 722
    if-eqz p1, :cond_5

    .line 723
    iget-object v3, p0, Landroid/telecom/Conference;->mPreviousExtraKeys:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit v4

    .line 695
    return-void
.end method

.method public final setOnHold()V
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/telecom/Conference;->setState(I)V

    .line 343
    return-void
.end method

.method public final setStatusHints(Landroid/telecom/StatusHints;)V
    .locals 3
    .param p1, "statusHints"    # Landroid/telecom/StatusHints;

    .prologue
    .line 668
    iput-object p1, p0, Landroid/telecom/Conference;->mStatusHints:Landroid/telecom/StatusHints;

    .line 669
    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    .line 670
    .local v0, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v0, p0, p1}, Landroid/telecom/Conference$Listener;->onStatusHintsChanged(Landroid/telecom/Conference;Landroid/telecom/StatusHints;)V

    goto :goto_0

    .line 667
    .end local v0    # "l":Landroid/telecom/Conference$Listener;
    :cond_0
    return-void
.end method

.method public final setTelecomCallId(Ljava/lang/String;)V
    .locals 0
    .param p1, "telecomCallId"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Landroid/telecom/Conference;->mTelecomCallId:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public final setVideoProvider(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V
    .locals 5
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .prologue
    .line 491
    const-string/jumbo v2, "setVideoProvider Conference: %s Connection: %s VideoState: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 492
    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    .line 491
    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    .line 494
    .local v0, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v0, p0, p2}, Landroid/telecom/Conference$Listener;->onVideoProviderChanged(Landroid/telecom/Conference;Landroid/telecom/Connection$VideoProvider;)V

    goto :goto_0

    .line 490
    .end local v0    # "l":Landroid/telecom/Conference$Listener;
    :cond_0
    return-void
.end method

.method public final setVideoState(Landroid/telecom/Connection;I)V
    .locals 6
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "videoState"    # I

    .prologue
    .line 478
    const-string/jumbo v2, "setVideoState Conference: %s Connection: %s VideoState: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 479
    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 478
    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    iget-object v2, p0, Landroid/telecom/Conference;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference$Listener;

    .line 481
    .local v0, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v0, p0, p2}, Landroid/telecom/Conference$Listener;->onVideoStateChanged(Landroid/telecom/Conference;I)V

    goto :goto_0

    .line 477
    .end local v0    # "l":Landroid/telecom/Conference$Listener;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 653
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 654
    const-string/jumbo v1, "[State: %s,Capabilites: %s, VideoState: %s, VideoProvider: %s, ThisObject %s]"

    .line 653
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    .line 655
    iget v3, p0, Landroid/telecom/Conference;->mState:I

    invoke-static {v3}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 656
    iget v3, p0, Landroid/telecom/Conference;->mConnectionCapabilities:I

    invoke-static {v3}, Landroid/telecom/Call$Details;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 657
    invoke-virtual {p0}, Landroid/telecom/Conference;->getVideoState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 658
    invoke-virtual {p0}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    const/4 v4, 0x3

    aput-object v3, v2, v4

    .line 659
    invoke-super {p0}, Landroid/telecom/Conferenceable;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    aput-object v3, v2, v4

    .line 653
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
