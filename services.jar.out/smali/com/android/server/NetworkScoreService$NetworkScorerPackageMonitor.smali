.class Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "NetworkScoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkScoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkScorerPackageMonitor"
.end annotation


# instance fields
.field final mRegisteredPackage:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/NetworkScoreService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkScoreService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkScoreService;
    .param p2, "mRegisteredPackage"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 94
    iput-object p2, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->mRegisteredPackage:Ljava/lang/String;

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkScoreService;Ljava/lang/String;Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkScoreService;
    .param p2, "mRegisteredPackage"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;-><init>(Lcom/android/server/NetworkScoreService;Ljava/lang/String;)V

    return-void
.end method

.method private evaluateBinding(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "scorerPackageName"    # Ljava/lang/String;
    .param p2, "forceUnbind"    # Z

    .prologue
    const/4 v4, 0x0

    .line 128
    iget-object v1, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->mRegisteredPackage:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-static {v1}, Lcom/android/server/NetworkScoreService;->-get0(Lcom/android/server/NetworkScoreService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkScorerAppManager;->getActiveScorer(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v0

    .line 135
    .local v0, "activeScorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    if-nez v0, :cond_1

    .line 138
    const-string/jumbo v1, "NetworkScoreService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->mRegisteredPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 139
    const-string/jumbo v3, " is no longer valid, disabling scoring."

    .line 138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v1, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-static {v1, v4}, Lcom/android/server/NetworkScoreService;->-wrap0(Lcom/android/server/NetworkScoreService;Ljava/lang/String;)Z

    .line 127
    .end local v0    # "activeScorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    :cond_0
    :goto_0
    return-void

    .line 141
    .restart local v0    # "activeScorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    :cond_1
    iget-object v1, v0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mScoringServiceClassName:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-static {v1}, Lcom/android/server/NetworkScoreService;->-wrap3(Lcom/android/server/NetworkScoreService;)V

    goto :goto_0

    .line 145
    :cond_2
    if-eqz p2, :cond_3

    .line 146
    iget-object v1, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-static {v1}, Lcom/android/server/NetworkScoreService;->-wrap3(Lcom/android/server/NetworkScoreService;)V

    .line 148
    :cond_3
    iget-object v1, p0, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-static {v1, v0}, Lcom/android/server/NetworkScoreService;->-wrap1(Lcom/android/server/NetworkScoreService;Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;)V

    goto :goto_0
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    .prologue
    .line 114
    if-eqz p4, :cond_0

    .line 115
    const/4 v1, 0x0

    array-length v2, p2

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p2, v1

    .line 116
    .local v0, "packageName":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-direct {p0, v0, v3}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    move-result v1

    return v1
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 99
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    .line 98
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    .line 108
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 104
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    .line 103
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 124
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->evaluateBinding(Ljava/lang/String;Z)V

    .line 123
    return-void
.end method
