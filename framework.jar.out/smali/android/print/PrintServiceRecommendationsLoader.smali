.class public Landroid/print/PrintServiceRecommendationsLoader;
.super Landroid/content/Loader;
.source "PrintServiceRecommendationsLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintServiceRecommendationsLoader$MyHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/Loader",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/printservice/recommendation/RecommendationInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mListener:Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;

.field private final mPrintManager:Landroid/print/PrintManager;


# direct methods
.method static synthetic -wrap0(Landroid/print/PrintServiceRecommendationsLoader;)V
    .locals 0

    invoke-direct {p0}, Landroid/print/PrintServiceRecommendationsLoader;->queueNewResult()V

    return-void
.end method

.method public constructor <init>(Landroid/print/PrintManager;Landroid/content/Context;)V
    .locals 1
    .param p1, "printManager"    # Landroid/print/PrintManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/content/Loader;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Landroid/print/PrintServiceRecommendationsLoader$MyHandler;

    invoke-direct {v0, p0}, Landroid/print/PrintServiceRecommendationsLoader$MyHandler;-><init>(Landroid/print/PrintServiceRecommendationsLoader;)V

    iput-object v0, p0, Landroid/print/PrintServiceRecommendationsLoader;->mHandler:Landroid/os/Handler;

    .line 54
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    iput-object v0, p0, Landroid/print/PrintServiceRecommendationsLoader;->mPrintManager:Landroid/print/PrintManager;

    .line 51
    return-void
.end method

.method private queueNewResult()V
    .locals 3

    .prologue
    .line 66
    iget-object v1, p0, Landroid/print/PrintServiceRecommendationsLoader;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 67
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/print/PrintServiceRecommendationsLoader;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {v1}, Landroid/print/PrintManager;->getPrintServiceRecommendations()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 68
    iget-object v1, p0, Landroid/print/PrintServiceRecommendationsLoader;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 65
    return-void
.end method


# virtual methods
.method protected onForceLoad()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/print/PrintServiceRecommendationsLoader;->queueNewResult()V

    .line 58
    return-void
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0}, Landroid/print/PrintServiceRecommendationsLoader;->onStopLoading()V

    .line 97
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Landroid/print/PrintServiceRecommendationsLoader$1;

    invoke-direct {v0, p0}, Landroid/print/PrintServiceRecommendationsLoader$1;-><init>(Landroid/print/PrintServiceRecommendationsLoader;)V

    iput-object v0, p0, Landroid/print/PrintServiceRecommendationsLoader;->mListener:Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;

    .line 80
    iget-object v0, p0, Landroid/print/PrintServiceRecommendationsLoader;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Landroid/print/PrintServiceRecommendationsLoader;->mListener:Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->addPrintServiceRecommendationsChangeListener(Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;)V

    .line 83
    iget-object v0, p0, Landroid/print/PrintServiceRecommendationsLoader;->mPrintManager:Landroid/print/PrintManager;

    invoke-virtual {v0}, Landroid/print/PrintManager;->getPrintServiceRecommendations()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Loader;->deliverResult(Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method protected onStopLoading()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    iget-object v0, p0, Landroid/print/PrintServiceRecommendationsLoader;->mListener:Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Landroid/print/PrintServiceRecommendationsLoader;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Landroid/print/PrintServiceRecommendationsLoader;->mListener:Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->removePrintServiceRecommendationsChangeListener(Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;)V

    .line 90
    iput-object v2, p0, Landroid/print/PrintServiceRecommendationsLoader;->mListener:Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;

    .line 93
    :cond_0
    iget-object v0, p0, Landroid/print/PrintServiceRecommendationsLoader;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 87
    return-void
.end method
