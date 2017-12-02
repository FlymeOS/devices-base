.class public Landroid/net/wifi/nan/WifiNanPublishSession;
.super Landroid/net/wifi/nan/WifiNanSession;
.source "WifiNanPublishSession.java"


# direct methods
.method public constructor <init>(Landroid/net/wifi/nan/WifiNanManager;I)V
    .locals 0
    .param p1, "manager"    # Landroid/net/wifi/nan/WifiNanManager;
    .param p2, "sessionId"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/nan/WifiNanSession;-><init>(Landroid/net/wifi/nan/WifiNanManager;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public publish(Landroid/net/wifi/nan/PublishData;Landroid/net/wifi/nan/PublishSettings;)V
    .locals 2
    .param p1, "publishData"    # Landroid/net/wifi/nan/PublishData;
    .param p2, "publishSettings"    # Landroid/net/wifi/nan/PublishSettings;

    .prologue
    .line 45
    iget-object v0, p0, Landroid/net/wifi/nan/WifiNanSession;->mManager:Landroid/net/wifi/nan/WifiNanManager;

    iget v1, p0, Landroid/net/wifi/nan/WifiNanSession;->mSessionId:I

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/wifi/nan/WifiNanManager;->publish(ILandroid/net/wifi/nan/PublishData;Landroid/net/wifi/nan/PublishSettings;)V

    .line 44
    return-void
.end method
