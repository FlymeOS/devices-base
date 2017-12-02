.class final Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;
.super Landroid/util/TimedRemoteCaller;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClearCustomPrinterIconCacheCaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/TimedRemoteCaller",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/print/IPrintSpoolerCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 828
    const-wide/16 v0, 0x1388

    invoke-direct {p0, v0, v1}, Landroid/util/TimedRemoteCaller;-><init>(J)V

    .line 829
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller$1;

    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller$1;-><init>(Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    .line 827
    return-void
.end method


# virtual methods
.method public clearCustomPrinterIconCache(Landroid/print/IPrintSpooler;)Ljava/lang/Void;
    .locals 2
    .param p1, "target"    # Landroid/print/IPrintSpooler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 839
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;->onBeforeRemoteCall()I

    move-result v0

    .line 840
    .local v0, "sequence":I
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    invoke-interface {p1, v1, v0}, Landroid/print/IPrintSpooler;->clearCustomPrinterIconCache(Landroid/print/IPrintSpoolerCallbacks;I)V

    .line 841
    invoke-virtual {p0, v0}, Lcom/android/server/print/RemotePrintSpooler$ClearCustomPrinterIconCacheCaller;->getResultTimed(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    return-object v1
.end method
