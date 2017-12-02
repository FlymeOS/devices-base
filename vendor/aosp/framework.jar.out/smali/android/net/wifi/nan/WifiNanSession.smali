.class public Landroid/net/wifi/nan/WifiNanSession;
.super Ljava/lang/Object;
.source "WifiNanSession.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiNanSession"

.field private static final VDBG:Z


# instance fields
.field private mDestroyed:Z

.field protected mManager:Landroid/net/wifi/nan/WifiNanManager;

.field protected mSessionId:I


# direct methods
.method public constructor <init>(Landroid/net/wifi/nan/WifiNanManager;I)V
    .locals 1
    .param p1, "manager"    # Landroid/net/wifi/nan/WifiNanManager;
    .param p2, "sessionId"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/net/wifi/nan/WifiNanSession;->mManager:Landroid/net/wifi/nan/WifiNanManager;

    .line 55
    iput p2, p0, Landroid/net/wifi/nan/WifiNanSession;->mSessionId:I

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/nan/WifiNanSession;->mDestroyed:Z

    .line 51
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanSession;->mManager:Landroid/net/wifi/nan/WifiNanManager;

    iget v1, p0, Landroid/net/wifi/nan/WifiNanSession;->mSessionId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/nan/WifiNanManager;->destroySession(I)V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/nan/WifiNanSession;->mDestroyed:Z

    .line 75
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 85
    iget-boolean v0, p0, Landroid/net/wifi/nan/WifiNanSession;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 86
    const-string/jumbo v0, "WifiNanSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WifiNanSession mSessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/nan/WifiNanSession;->mSessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 87
    const-string/jumbo v2, " was not explicitly destroyed. The session may use resources until "

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 88
    const-string/jumbo v2, "destroyed so step should be done explicitly"

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/nan/WifiNanSession;->destroy()V

    .line 84
    return-void
.end method

.method public sendMessage(I[BII)V
    .locals 6
    .param p1, "peerId"    # I
    .param p2, "message"    # [B
    .param p3, "messageLength"    # I
    .param p4, "messageId"    # I

    .prologue
    .line 111
    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanSession;->mManager:Landroid/net/wifi/nan/WifiNanManager;

    iget v1, p0, Landroid/net/wifi/nan/WifiNanSession;->mSessionId:I

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/net/wifi/nan/WifiNanManager;->sendMessage(II[BII)V

    .line 110
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanSession;->mManager:Landroid/net/wifi/nan/WifiNanManager;

    iget v1, p0, Landroid/net/wifi/nan/WifiNanSession;->mSessionId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/nan/WifiNanManager;->stopSession(I)V

    .line 65
    return-void
.end method
