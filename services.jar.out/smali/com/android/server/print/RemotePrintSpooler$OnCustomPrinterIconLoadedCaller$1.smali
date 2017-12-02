.class Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller$1;
.super Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;


# direct methods
.method constructor <init>(Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;

    .prologue
    .line 808
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller$1;->this$1:Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;-><init>(Lcom/android/server/print/RemotePrintSpooler$BasePrintSpoolerServiceCallbacks;)V

    return-void
.end method


# virtual methods
.method public onCustomPrinterIconCached(I)V
    .locals 2
    .param p1, "sequence"    # I

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller$1;->this$1:Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;->onRemoteMethodResult(Ljava/lang/Object;I)V

    .line 810
    return-void
.end method
