.class public Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
.super Lcom/android/internal/telephony/Call;
.source "ImsPhoneCall.java"


# static fields
.field public static final CONTEXT_BACKGROUND:Ljava/lang/String; = "BG"

.field public static final CONTEXT_FOREGROUND:Ljava/lang/String; = "FG"

.field public static final CONTEXT_HANDOVER:Ljava/lang/String; = "HO"

.field public static final CONTEXT_RINGING:Ljava/lang/String; = "RG"

.field public static final CONTEXT_UNKNOWN:Ljava/lang/String; = "UK"

.field private static final DBG:Z

.field private static final FORCE_DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "ImsPhoneCall"

.field private static final VDBG:Z


# instance fields
.field private final mCallContext:Ljava/lang/String;

.field mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

.field private mRingbackTonePlayed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-string/jumbo v0, "ImsPhoneCall"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->DBG:Z

    .line 45
    const-string/jumbo v0, "ImsPhoneCall"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->VDBG:Z

    .line 38
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/internal/telephony/Call;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mRingbackTonePlayed:Z

    .line 66
    const-string/jumbo v0, "UK"

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Ljava/lang/String;)V
    .locals 1
    .param p1, "owner"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
    .param p2, "context"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/internal/telephony/Call;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mRingbackTonePlayed:Z

    .line 70
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    .line 71
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    .line 69
    return-void
.end method

.method static isLocalTone(Lcom/android/ims/ImsCall;)Z
    .locals 3
    .param p0, "imsCall"    # Lcom/android/ims/ImsCall;

    .prologue
    const/4 v1, 0x0

    .line 298
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    if-nez v2, :cond_1

    .line 300
    :cond_0
    return v1

    .line 299
    :cond_1
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    if-eqz v2, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/android/ims/ImsCall;->getCallProfile()Lcom/android/ims/ImsCallProfile;

    move-result-object v2

    iget-object v0, v2, Lcom/android/ims/ImsCallProfile;->mMediaProfile:Lcom/android/ims/ImsStreamMediaProfile;

    .line 305
    .local v0, "mediaProfile":Lcom/android/ims/ImsStreamMediaProfile;
    iget v2, v0, Lcom/android/ims/ImsStreamMediaProfile;->mAudioDirection:I

    if-nez v2, :cond_2

    .line 306
    const/4 v1, 0x1

    .line 305
    :cond_2
    return v1
.end method

.method private takeOver(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 3
    .param p1, "that"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .prologue
    .line 363
    iget-object v2, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    .line 364
    iget-object v2, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 365
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 366
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->changeParent(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    goto :goto_0

    .line 362
    :cond_0
    return-void
.end method


# virtual methods
.method public attach(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 154
    sget-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->VDBG:Z

    if-eqz v0, :cond_0

    .line 155
    const-string/jumbo v0, "ImsPhoneCall"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "attach : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " conn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->clearDisconnected()V

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logState()V

    .line 153
    return-void
.end method

.method public attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 164
    sget-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->VDBG:Z

    if-eqz v0, :cond_0

    .line 165
    const-string/jumbo v0, "ImsPhoneCall"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "attach : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attach(Lcom/android/internal/telephony/Connection;)V

    .line 169
    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 163
    return-void
.end method

.method public attachFake(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V
    .locals 0
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 173
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->attach(Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/Call$State;)V

    .line 172
    return-void
.end method

.method public connectionDisconnected(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Z
    .locals 6
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .prologue
    .line 180
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_3

    .line 183
    const/4 v0, 0x1

    .line 185
    .local v0, "hasOnlyDisconnectedConnections":Z
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 186
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_2

    .line 187
    const/4 v0, 0x0

    .line 192
    :cond_0
    if-eqz v0, :cond_3

    .line 193
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 194
    sget-boolean v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->VDBG:Z

    if-eqz v3, :cond_1

    .line 195
    const-string/jumbo v3, "ImsPhoneCall"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "connectionDisconnected : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 196
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 195
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_1
    const/4 v3, 0x1

    return v3

    .line 185
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v0    # "hasOnlyDisconnectedConnections":Z
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method public detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .prologue
    .line 206
    sget-boolean v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->VDBG:Z

    if-eqz v0, :cond_0

    .line 207
    const-string/jumbo v0, "ImsPhoneCall"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "detach : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " conn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 210
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->clearDisconnected()V

    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logState()V

    .line 205
    return-void
.end method

.method public dispose()V
    .locals 7

    .prologue
    const/16 v6, 0xe

    .line 76
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "s":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 82
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 83
    .local v0, "c":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect(I)Z

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "c":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .end local v2    # "i":I
    .end local v3    # "s":I
    :catch_0
    move-exception v1

    .line 81
    .local v1, "ex":Lcom/android/internal/telephony/CallStateException;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .restart local v3    # "s":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 82
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 83
    .restart local v0    # "c":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect(I)Z

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 80
    .end local v0    # "c":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .end local v1    # "ex":Lcom/android/internal/telephony/CallStateException;
    .end local v2    # "i":I
    .end local v3    # "s":I
    :catchall_0
    move-exception v4

    .line 81
    const/4 v2, 0x0

    .restart local v2    # "i":I
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .restart local v3    # "s":I
    :goto_2
    if-ge v2, v3, :cond_0

    .line 82
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 83
    .restart local v0    # "c":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onDisconnect(I)Z

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 80
    .end local v0    # "c":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_0
    throw v4

    .line 74
    :cond_1
    return-void
.end method

.method public getConferenceParticipants()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 145
    .local v0, "call":Lcom/android/ims/ImsCall;
    if-nez v0, :cond_0

    .line 146
    return-object v1

    .line 148
    :cond_0
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->getConferenceParticipants()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getConnections()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    return-object v0
.end method

.method getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    return-object v0
.end method

.method getHandoverConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .locals 1

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    return-object v0
.end method

.method public getImsCall()Lcom/android/ims/ImsCall;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 294
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    return-object v0
.end method

.method public hangup()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 118
    return-void
.end method

.method isFull()Z
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMultiparty()Z
    .locals 2

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    .line 106
    .local v0, "imsCall":Lcom/android/ims/ImsCall;
    if-nez v0, :cond_0

    .line 107
    const/4 v1, 0x0

    return v1

    .line 110
    :cond_0
    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->isMultiparty()Z

    move-result v1

    return v1
.end method

.method merge(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;Lcom/android/internal/telephony/Call$State;)V
    .locals 6
    .param p1, "that"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    .param p2, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    .line 266
    .local v2, "imsPhoneConnection":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    if-eqz v2, :cond_0

    .line 267
    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getConferenceConnectTime()J

    move-result-wide v0

    .line 268
    .local v0, "conferenceConnectTime":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_2

    .line 269
    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->setConnectTime(J)V

    .line 276
    .end local v0    # "conferenceConnectTime":J
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->DBG:Z

    if-eqz v3, :cond_1

    .line 277
    const-string/jumbo v3, "ImsPhoneCall"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "merge("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_1
    return-void

    .line 271
    .restart local v0    # "conferenceConnectTime":J
    :cond_2
    sget-boolean v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->DBG:Z

    if-eqz v3, :cond_0

    .line 272
    const-string/jumbo v3, "ImsPhoneCall"

    const-string/jumbo v4, "merge: conference connect time is 0"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method onHangupLocal()V
    .locals 6

    .prologue
    .line 230
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "s":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 231
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    .line 232
    .local v0, "cn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onHangupLocal()V

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    .end local v0    # "cn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 235
    sget-boolean v3, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->VDBG:Z

    if-eqz v3, :cond_1

    .line 236
    const-string/jumbo v3, "ImsPhoneCall"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onHangupLocal : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_1
    return-void
.end method

.method setMute(Z)V
    .locals 5
    .param p1, "mute"    # Z

    .prologue
    const/4 v1, 0x0

    .line 249
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    if-nez v2, :cond_1

    .line 251
    .local v1, "imsCall":Lcom/android/ims/ImsCall;
    :goto_0
    if-eqz v1, :cond_0

    .line 253
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/android/ims/ImsCall;->setMute(Z)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :cond_0
    :goto_1
    return-void

    .line 250
    .end local v1    # "imsCall":Lcom/android/ims/ImsCall;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getFirstConnection()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    goto :goto_0

    .line 254
    .restart local v1    # "imsCall":Lcom/android/ims/ImsCall;
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Lcom/android/ims/ImsException;
    const-string/jumbo v2, "ImsPhoneCall"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMute failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public switchWith(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 4
    .param p1, "that"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    .prologue
    .line 350
    sget-boolean v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->VDBG:Z

    if-eqz v1, :cond_0

    .line 351
    const-string/jumbo v1, "ImsPhoneCall"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchWith : switchCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " withCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    const-class v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    monitor-enter v2

    .line 354
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;-><init>()V

    .line 355
    .local v0, "tmp":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->takeOver(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 356
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->takeOver(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    .line 357
    invoke-direct {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->takeOver(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 359
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->logState()V

    .line 349
    return-void

    .line 353
    .end local v0    # "tmp":Lcom/android/internal/telephony/imsphone/ImsPhoneCall;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "[ImsPhoneCall "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string/jumbo v3, " state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 131
    const-string/jumbo v3, " ERROR_MULTIPLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mConnections:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "conn$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 134
    .local v0, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 138
    .end local v0    # "conn":Lcom/android/internal/telephony/Connection;
    :cond_1
    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public update(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;)Z
    .locals 5
    .param p1, "conn"    # Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    .param p2, "imsCall"    # Lcom/android/ims/ImsCall;
    .param p3, "state"    # Lcom/android/internal/telephony/Call$State;

    .prologue
    const/4 v3, 0x0

    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 315
    .local v1, "oldState":Lcom/android/internal/telephony/Call$State;
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne p3, v2, :cond_5

    .line 316
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mRingbackTonePlayed:Z

    if-eqz v2, :cond_0

    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isLocalTone(Lcom/android/ims/ImsCall;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 319
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mRingbackTonePlayed:Z

    if-nez v2, :cond_1

    invoke-static {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->isLocalTone(Lcom/android/ims/ImsCall;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 320
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->startRingbackTone()V

    .line 321
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mRingbackTonePlayed:Z

    .line 330
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    if-eq p3, v2, :cond_6

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq p3, v2, :cond_6

    .line 331
    iput-object p3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    .line 332
    const/4 v0, 0x1

    .line 337
    :cond_2
    :goto_1
    sget-boolean v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->VDBG:Z

    if-eqz v2, :cond_3

    .line 338
    const-string/jumbo v2, "ImsPhoneCall"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mCallContext:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_3
    return v0

    .line 317
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->stopRingbackTone()V

    .line 318
    iput-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mRingbackTonePlayed:Z

    goto :goto_0

    .line 324
    :cond_5
    iget-boolean v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mRingbackTonePlayed:Z

    if-eqz v2, :cond_1

    .line 325
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mOwner:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->stopRingbackTone()V

    .line 326
    iput-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->mRingbackTonePlayed:Z

    goto :goto_0

    .line 333
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne p3, v2, :cond_2

    .line 334
    const/4 v0, 0x1

    goto :goto_1
.end method
