.class public final Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;
.super Landroid/printservice/recommendation/IRecommendationsChangeListener$Stub;
.source "PrintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrintServiceRecommendationsChangeListenerWrapper"
.end annotation


# instance fields
.field private final mWeakHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mWeakListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1373
    invoke-direct {p0}, Landroid/printservice/recommendation/IRecommendationsChangeListener$Stub;-><init>()V

    .line 1375
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    .line 1376
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;->mWeakHandler:Ljava/lang/ref/WeakReference;

    .line 1374
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 1390
    iget-object v0, p0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 1389
    return-void
.end method

.method public getListener()Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;
    .locals 1

    .prologue
    .line 1394
    iget-object v0, p0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;

    return-object v0
.end method

.method public onRecommendationsChanged()V
    .locals 3

    .prologue
    .line 1381
    iget-object v2, p0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;->mWeakHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 1382
    .local v0, "handler":Landroid/os/Handler;
    iget-object v2, p0, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListenerWrapper;->mWeakListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;

    .line 1383
    .local v1, "listener":Landroid/print/PrintManager$PrintServiceRecommendationsChangeListener;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1384
    const/4 v2, 0x3

    invoke-virtual {v0, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1380
    :cond_0
    return-void
.end method
