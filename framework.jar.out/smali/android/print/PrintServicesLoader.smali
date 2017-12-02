.class public Landroid/print/PrintServicesLoader;
.super Landroid/content/Loader;
.source "PrintServicesLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintServicesLoader$MyHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/Loader",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/printservice/PrintServiceInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mListener:Landroid/print/PrintManager$PrintServicesChangeListener;

.field private final mPrintManager:Landroid/print/PrintManager;

.field private final mSelectionFlags:I


# direct methods
.method static synthetic -wrap0(Landroid/print/PrintServicesLoader;)V
    .locals 0

    invoke-direct {p0}, Landroid/print/PrintServicesLoader;->queueNewResult()V

    return-void
.end method

.method public constructor <init>(Landroid/print/PrintManager;Landroid/content/Context;I)V
    .locals 1
    .param p1, "printManager"    # Landroid/print/PrintManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "selectionFlags"    # I

    .prologue
    .line 56
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/content/Loader;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v0, Landroid/print/PrintServicesLoader$MyHandler;

    invoke-direct {v0, p0}, Landroid/print/PrintServicesLoader$MyHandler;-><init>(Landroid/print/PrintServicesLoader;)V

    iput-object v0, p0, Landroid/print/PrintServicesLoader;->mHandler:Landroid/os/Handler;

    .line 58
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    iput-object v0, p0, Landroid/print/PrintServicesLoader;->mPrintManager:Landroid/print/PrintManager;

    .line 60
    const/4 v0, 0x3

    .line 59
    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    move-result v0

    iput v0, p0, Landroid/print/PrintServicesLoader;->mSelectionFlags:I

    .line 55
    return-void
.end method

.method private queueNewResult()V
    .locals 3

    .prologue
    .line 72
    iget-object v1, p0, Landroid/print/PrintServicesLoader;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 73
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Landroid/print/PrintServicesLoader;->mPrintManager:Landroid/print/PrintManager;

    iget v2, p0, Landroid/print/PrintServicesLoader;->mSelectionFlags:I

    invoke-virtual {v1, v2}, Landroid/print/PrintManager;->getPrintServices(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 74
    iget-object v1, p0, Landroid/print/PrintServicesLoader;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 71
    return-void
.end method


# virtual methods
.method protected onForceLoad()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/print/PrintServicesLoader;->queueNewResult()V

    .line 64
    return-void
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/print/PrintServicesLoader;->onStopLoading()V

    .line 102
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Landroid/print/PrintServicesLoader$1;

    invoke-direct {v0, p0}, Landroid/print/PrintServicesLoader$1;-><init>(Landroid/print/PrintServicesLoader;)V

    iput-object v0, p0, Landroid/print/PrintServicesLoader;->mListener:Landroid/print/PrintManager$PrintServicesChangeListener;

    .line 85
    iget-object v0, p0, Landroid/print/PrintServicesLoader;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Landroid/print/PrintServicesLoader;->mListener:Landroid/print/PrintManager$PrintServicesChangeListener;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->addPrintServicesChangeListener(Landroid/print/PrintManager$PrintServicesChangeListener;)V

    .line 88
    iget-object v0, p0, Landroid/print/PrintServicesLoader;->mPrintManager:Landroid/print/PrintManager;

    iget v1, p0, Landroid/print/PrintServicesLoader;->mSelectionFlags:I

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->getPrintServices(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/print/PrintServicesLoader;->deliverResult(Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method protected onStopLoading()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Landroid/print/PrintServicesLoader;->mListener:Landroid/print/PrintManager$PrintServicesChangeListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Landroid/print/PrintServicesLoader;->mPrintManager:Landroid/print/PrintManager;

    iget-object v1, p0, Landroid/print/PrintServicesLoader;->mListener:Landroid/print/PrintManager$PrintServicesChangeListener;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->removePrintServicesChangeListener(Landroid/print/PrintManager$PrintServicesChangeListener;)V

    .line 95
    iput-object v2, p0, Landroid/print/PrintServicesLoader;->mListener:Landroid/print/PrintManager$PrintServicesChangeListener;

    .line 98
    :cond_0
    iget-object v0, p0, Landroid/print/PrintServicesLoader;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 92
    return-void
.end method
