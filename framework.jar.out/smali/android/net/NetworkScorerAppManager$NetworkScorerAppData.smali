.class public Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
.super Ljava/lang/Object;
.source "NetworkScorerAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkScorerAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkScorerAppData"
.end annotation


# instance fields
.field public final mConfigurationActivityClassName:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public final mPackageUid:I

.field public final mScorerName:Ljava/lang/CharSequence;

.field public final mScoringServiceClassName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUid"    # I
    .param p3, "scorerName"    # Ljava/lang/CharSequence;
    .param p4, "configurationActivityClassName"    # Ljava/lang/String;
    .param p5, "scoringServiceClassName"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p3, p0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mScorerName:Ljava/lang/CharSequence;

    .line 79
    iput-object p1, p0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    .line 80
    iput p2, p0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageUid:I

    .line 81
    iput-object p4, p0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    .line 82
    iput-object p5, p0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mScoringServiceClassName:Ljava/lang/String;

    .line 77
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "NetworkScorerAppData{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "mPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    const-string/jumbo v1, ", mPackageUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    const-string/jumbo v1, ", mScorerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mScorerName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 91
    const-string/jumbo v1, ", mConfigurationActivityClassName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mConfigurationActivityClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    const-string/jumbo v1, ", mScoringServiceClassName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mScoringServiceClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
