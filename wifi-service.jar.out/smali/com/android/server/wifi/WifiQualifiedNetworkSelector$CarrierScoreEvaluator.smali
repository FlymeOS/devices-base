.class Lcom/android/server/wifi/WifiQualifiedNetworkSelector$CarrierScoreEvaluator;
.super Ljava/lang/Object;
.source "WifiQualifiedNetworkSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiQualifiedNetworkSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CarrierScoreEvaluator"
.end annotation


# instance fields
.field private final mDbg:Z

.field private mHighScore:I

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mScanResultCandidate:Landroid/net/wifi/ScanResult;


# direct methods
.method constructor <init>(Landroid/util/LocalLog;Z)V
    .locals 1
    .param p1, "localLog"    # Landroid/util/LocalLog;
    .param p2, "dbg"    # Z

    .prologue
    .line 1262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1257
    const/16 v0, -0x80

    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$CarrierScoreEvaluator;->mHighScore:I

    .line 1263
    iput-object p1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$CarrierScoreEvaluator;->mLocalLog:Landroid/util/LocalLog;

    .line 1264
    iput-boolean p2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$CarrierScoreEvaluator;->mDbg:Z

    .line 1262
    return-void
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 1286
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$CarrierScoreEvaluator;->mDbg:Z

    if-eqz v0, :cond_0

    .line 1287
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$CarrierScoreEvaluator;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1285
    :cond_0
    return-void
.end method


# virtual methods
.method evalCarrierCandidate(Landroid/net/wifi/ScanResult;I)V
    .locals 2
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "score"    # I

    .prologue
    .line 1269
    iget v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$CarrierScoreEvaluator;->mHighScore:I

    if-le p2, v0, :cond_0

    .line 1270
    iput p2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$CarrierScoreEvaluator;->mHighScore:I

    .line 1271
    iput-object p1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$CarrierScoreEvaluator;->mScanResultCandidate:Landroid/net/wifi/ScanResult;

    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->-wrap0(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1273
    const-string/jumbo v1, " become the new untrusted carrier network candidate"

    .line 1272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$CarrierScoreEvaluator;->localLog(Ljava/lang/String;)V

    .line 1268
    :cond_0
    return-void
.end method

.method getHighScore()I
    .locals 1

    .prologue
    .line 1278
    iget v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$CarrierScoreEvaluator;->mHighScore:I

    return v0
.end method

.method public getScanResultCandidate()Landroid/net/wifi/ScanResult;
    .locals 1

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$CarrierScoreEvaluator;->mScanResultCandidate:Landroid/net/wifi/ScanResult;

    return-object v0
.end method
