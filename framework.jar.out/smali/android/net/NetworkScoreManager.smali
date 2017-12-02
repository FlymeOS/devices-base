.class public Landroid/net/NetworkScoreManager;
.super Ljava/lang/Object;
.source "NetworkScoreManager.java"


# static fields
.field public static final ACTION_CHANGE_ACTIVE:Ljava/lang/String; = "android.net.scoring.CHANGE_ACTIVE"

.field public static final ACTION_CUSTOM_ENABLE:Ljava/lang/String; = "android.net.scoring.CUSTOM_ENABLE"

.field public static final ACTION_SCORER_CHANGED:Ljava/lang/String; = "android.net.scoring.SCORER_CHANGED"

.field public static final ACTION_SCORE_NETWORKS:Ljava/lang/String; = "android.net.scoring.SCORE_NETWORKS"

.field public static final EXTRA_NETWORKS_TO_SCORE:Ljava/lang/String; = "networksToScore"

.field public static final EXTRA_NEW_SCORER:Ljava/lang/String; = "newScorer"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "packageName"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/net/INetworkScoreService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Landroid/net/NetworkScoreManager;->mContext:Landroid/content/Context;

    .line 132
    const-string/jumbo v1, "network_score"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 133
    .local v0, "iBinder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/INetworkScoreService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkScoreService;

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkScoreManager;->mService:Landroid/net/INetworkScoreService;

    .line 130
    return-void
.end method


# virtual methods
.method public clearScores()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 187
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkScoreManager;->mService:Landroid/net/INetworkScoreService;

    invoke-interface {v1}, Landroid/net/INetworkScoreService;->clearScores()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public disableScoring()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 222
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkScoreManager;->mService:Landroid/net/INetworkScoreService;

    invoke-interface {v1}, Landroid/net/INetworkScoreService;->disableScoring()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getActiveScorerPackage()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 147
    iget-object v1, p0, Landroid/net/NetworkScoreManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/NetworkScorerAppManager;->getActiveScorer(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v0

    .line 148
    .local v0, "app":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    if-nez v0, :cond_0

    .line 149
    return-object v2

    .line 151
    :cond_0
    iget-object v1, v0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    return-object v1
.end method

.method public registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "scoreCache"    # Landroid/net/INetworkScoreCache;

    .prologue
    .line 267
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkScoreManager;->mService:Landroid/net/INetworkScoreService;

    invoke-interface {v1, p1, p2}, Landroid/net/INetworkScoreService;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestScores([Landroid/net/NetworkKey;)Z
    .locals 5
    .param p1, "networks"    # [Landroid/net/NetworkKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 240
    invoke-virtual {p0}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "activeScorer":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 242
    const/4 v2, 0x0

    return v2

    .line 244
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.net.scoring.SCORE_NETWORKS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 247
    const-string/jumbo v2, "networksToScore"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 251
    iget-object v2, p0, Landroid/net/NetworkScoreManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string/jumbo v4, "android.permission.SCORE_NETWORKS"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 252
    const/4 v2, 0x1

    return v2
.end method

.method public setActiveScorer(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 207
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkScoreManager;->mService:Landroid/net/INetworkScoreService;

    invoke-interface {v1, p1}, Landroid/net/INetworkScoreService;->setActiveScorer(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updateScores([Landroid/net/ScoredNetwork;)Z
    .locals 2
    .param p1, "networks"    # [Landroid/net/ScoredNetwork;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 167
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkScoreManager;->mService:Landroid/net/INetworkScoreService;

    invoke-interface {v1, p1}, Landroid/net/INetworkScoreService;->updateScores([Landroid/net/ScoredNetwork;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
