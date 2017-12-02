.class public abstract Landroid/printservice/PrinterDiscoverySession;
.super Ljava/lang/Object;
.source "PrinterDiscoverySession.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PrinterDiscoverySession"

.field private static sIdCounter:I


# instance fields
.field private final mId:I

.field private mIsDestroyed:Z

.field private mIsDiscoveryStarted:Z

.field private mLastSentPrinters:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/print/PrinterId;",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Landroid/printservice/IPrintServiceClient;

.field private final mPrinters:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/print/PrinterId;",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrackedPrinters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    sput v0, Landroid/printservice/PrinterDiscoverySession;->sIdCounter:I

    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 90
    iput-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    iput-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mTrackedPrinters:Ljava/util/List;

    .line 108
    sget v0, Landroid/printservice/PrinterDiscoverySession;->sIdCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/printservice/PrinterDiscoverySession;->sIdCounter:I

    iput v0, p0, Landroid/printservice/PrinterDiscoverySession;->mId:I

    .line 107
    return-void
.end method

.method private sendOutOfDiscoveryPeriodPrinterChanges()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 276
    iget-object v7, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 277
    :cond_0
    iput-object v9, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    .line 278
    return-void

    .line 282
    :cond_1
    const/4 v0, 0x0

    .line 283
    .local v0, "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    iget-object v7, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v0    # "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    .local v2, "printer$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrinterInfo;

    .line 284
    .local v1, "printer":Landroid/print/PrinterInfo;
    iget-object v7, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrinterInfo;

    .line 285
    .local v5, "sentPrinter":Landroid/print/PrinterInfo;
    if-eqz v5, :cond_3

    invoke-virtual {v5, v1}, Landroid/print/PrinterInfo;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 286
    :cond_3
    if-nez v0, :cond_4

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 294
    .end local v1    # "printer":Landroid/print/PrinterInfo;
    .end local v5    # "sentPrinter":Landroid/print/PrinterInfo;
    :cond_5
    if-eqz v0, :cond_6

    .line 296
    :try_start_0
    iget-object v7, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    new-instance v8, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v8, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v8}, Landroid/printservice/IPrintServiceClient;->onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :cond_6
    :goto_1
    const/4 v4, 0x0

    .line 304
    .local v4, "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v7, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v4    # "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    .local v6, "sentPrinter$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrinterInfo;

    .line 305
    .restart local v5    # "sentPrinter":Landroid/print/PrinterInfo;
    iget-object v7, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 306
    if-nez v4, :cond_8

    .line 307
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 309
    :cond_8
    invoke-virtual {v5}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 297
    .end local v5    # "sentPrinter":Landroid/print/PrinterInfo;
    .end local v6    # "sentPrinter$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 298
    .local v3, "re":Landroid/os/RemoteException;
    const-string/jumbo v7, "PrinterDiscoverySession"

    const-string/jumbo v8, "Error sending added printers"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 314
    .end local v3    # "re":Landroid/os/RemoteException;
    .restart local v6    # "sentPrinter$iterator":Ljava/util/Iterator;
    :cond_9
    if-eqz v4, :cond_a

    .line 316
    :try_start_1
    iget-object v7, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    new-instance v8, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v8, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v7, v8}, Landroid/printservice/IPrintServiceClient;->onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 322
    :cond_a
    :goto_3
    iput-object v9, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    .line 274
    return-void

    .line 317
    :catch_1
    move-exception v3

    .line 318
    .restart local v3    # "re":Landroid/os/RemoteException;
    const-string/jumbo v7, "PrinterDiscoverySession"

    const-string/jumbo v8, "Error sending removed printers"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method


# virtual methods
.method public final addPrinters(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "printers":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 170
    iget-boolean v6, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-eqz v6, :cond_0

    .line 171
    const-string/jumbo v6, "PrinterDiscoverySession"

    const-string/jumbo v7, "Not adding printers - session destroyed."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void

    .line 175
    :cond_0
    iget-boolean v6, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDiscoveryStarted:Z

    if-eqz v6, :cond_5

    .line 177
    const/4 v2, 0x0

    .line 178
    .local v2, "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 179
    .local v1, "addedPrinterCount":I
    const/4 v3, 0x0

    .end local v2    # "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 180
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterInfo;

    .line 181
    .local v0, "addedPrinter":Landroid/print/PrinterInfo;
    iget-object v6, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrinterInfo;

    .line 182
    .local v4, "oldPrinter":Landroid/print/PrinterInfo;
    if-eqz v4, :cond_1

    invoke-virtual {v4, v0}, Landroid/print/PrinterInfo;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 179
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 183
    :cond_1
    if-nez v2, :cond_2

    .line 184
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 186
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 191
    .end local v0    # "addedPrinter":Landroid/print/PrinterInfo;
    .end local v4    # "oldPrinter":Landroid/print/PrinterInfo;
    :cond_3
    if-eqz v2, :cond_4

    .line 193
    :try_start_0
    iget-object v6, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    new-instance v7, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v7, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v6, v7}, Landroid/printservice/IPrintServiceClient;->onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_4
    :goto_2
    return-void

    .line 194
    :catch_0
    move-exception v5

    .line 195
    .local v5, "re":Landroid/os/RemoteException;
    const-string/jumbo v6, "PrinterDiscoverySession"

    const-string/jumbo v7, "Error sending added printers"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 200
    .end local v1    # "addedPrinterCount":I
    .end local v3    # "i":I
    .end local v5    # "re":Landroid/os/RemoteException;
    :cond_5
    iget-object v6, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    if-nez v6, :cond_6

    .line 201
    new-instance v6, Landroid/util/ArrayMap;

    iget-object v7, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-direct {v6, v7}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v6, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    .line 205
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 206
    .restart local v1    # "addedPrinterCount":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    if-ge v3, v1, :cond_4

    .line 207
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterInfo;

    .line 208
    .restart local v0    # "addedPrinter":Landroid/print/PrinterInfo;
    iget-object v6, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_7

    .line 209
    iget-object v6, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 551
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-nez v0, :cond_0

    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    .line 553
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDiscoveryStarted:Z

    .line 554
    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 555
    iput-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    .line 556
    iput-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    .line 557
    invoke-virtual {p0}, Landroid/printservice/PrinterDiscoverySession;->onDestroy()V

    .line 550
    :cond_0
    return-void
.end method

.method getId()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Landroid/printservice/PrinterDiscoverySession;->mId:I

    return v0
.end method

.method public final getPrinters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 145
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 146
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 148
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getTrackedPrinters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 456
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 457
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-eqz v0, :cond_0

    .line 458
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 460
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mTrackedPrinters:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final isDestroyed()Z
    .locals 1

    .prologue
    .line 480
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 481
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    return v0
.end method

.method public final isPrinterDiscoveryStarted()Z
    .locals 1

    .prologue
    .line 493
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 494
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDiscoveryStarted:Z

    return v0
.end method

.method public abstract onDestroy()V
.end method

.method public onRequestCustomPrinterIcon(Landroid/print/PrinterId;Landroid/os/CancellationSignal;Landroid/printservice/CustomPrinterIconCallback;)V
    .locals 0
    .param p1, "printerId"    # Landroid/print/PrinterId;
    .param p2, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p3, "callback"    # Landroid/printservice/CustomPrinterIconCallback;

    .prologue
    .line 423
    return-void
.end method

.method public abstract onStartPrinterDiscovery(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onStartPrinterStateTracking(Landroid/print/PrinterId;)V
.end method

.method public abstract onStopPrinterDiscovery()V
.end method

.method public abstract onStopPrinterStateTracking(Landroid/print/PrinterId;)V
.end method

.method public abstract onValidatePrinters(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation
.end method

.method public final removePrinters(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-static {}, Landroid/printservice/PrintService;->throwIfNotCalledOnMainThread()V

    .line 234
    iget-boolean v5, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-eqz v5, :cond_0

    .line 235
    const-string/jumbo v5, "PrinterDiscoverySession"

    const-string/jumbo v6, "Not removing printers - session destroyed."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void

    .line 239
    :cond_0
    iget-boolean v5, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDiscoveryStarted:Z

    if-eqz v5, :cond_4

    .line 241
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v4, "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 243
    .local v3, "removedPrinterIdCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 244
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterId;

    .line 245
    .local v2, "removedPrinterId":Landroid/print/PrinterId;
    iget-object v5, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 246
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    .end local v2    # "removedPrinterId":Landroid/print/PrinterId;
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 253
    :try_start_0
    iget-object v5, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    new-instance v6, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v6, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v5, v6}, Landroid/printservice/IPrintServiceClient;->onPrintersRemoved(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .end local v4    # "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :cond_3
    :goto_1
    return-void

    .line 255
    .restart local v4    # "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :catch_0
    move-exception v1

    .line 256
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v5, "PrinterDiscoverySession"

    const-string/jumbo v6, "Error sending removed printers"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 261
    .end local v0    # "i":I
    .end local v1    # "re":Landroid/os/RemoteException;
    .end local v3    # "removedPrinterIdCount":I
    .end local v4    # "removedPrinterIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :cond_4
    iget-object v5, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    if-nez v5, :cond_5

    .line 262
    new-instance v5, Landroid/util/ArrayMap;

    iget-object v6, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-direct {v5, v6}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v5, p0, Landroid/printservice/PrinterDiscoverySession;->mLastSentPrinters:Landroid/util/ArrayMap;

    .line 266
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 267
    .restart local v3    # "removedPrinterIdCount":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    if-ge v0, v3, :cond_3

    .line 268
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterId;

    .line 269
    .restart local v2    # "removedPrinterId":Landroid/print/PrinterId;
    iget-object v5, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method requestCustomPrinterIcon(Landroid/print/PrinterId;)V
    .locals 2
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .prologue
    .line 536
    iget-boolean v1, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    if-eqz v1, :cond_0

    .line 537
    new-instance v0, Landroid/printservice/CustomPrinterIconCallback;

    .line 538
    iget-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    .line 537
    invoke-direct {v0, p1, v1}, Landroid/printservice/CustomPrinterIconCallback;-><init>(Landroid/print/PrinterId;Landroid/printservice/IPrintServiceClient;)V

    .line 539
    .local v0, "callback":Landroid/printservice/CustomPrinterIconCallback;
    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    invoke-virtual {p0, p1, v1, v0}, Landroid/printservice/PrinterDiscoverySession;->onRequestCustomPrinterIcon(Landroid/print/PrinterId;Landroid/os/CancellationSignal;Landroid/printservice/CustomPrinterIconCallback;)V

    .line 535
    .end local v0    # "callback":Landroid/printservice/CustomPrinterIconCallback;
    :cond_0
    return-void
.end method

.method setObserver(Landroid/printservice/IPrintServiceClient;)V
    .locals 4
    .param p1, "observer"    # Landroid/printservice/IPrintServiceClient;

    .prologue
    .line 112
    iput-object p1, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    .line 115
    iget-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mPrinters:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    :try_start_0
    iget-object v1, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    new-instance v2, Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p0}, Landroid/printservice/PrinterDiscoverySession;->getPrinters()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Landroid/printservice/IPrintServiceClient;->onPrintersAdded(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "PrinterDiscoverySession"

    const-string/jumbo v2, "Error sending added printers"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method startPrinterDiscovery(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 498
    .local p1, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-nez v0, :cond_1

    .line 499
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDiscoveryStarted:Z

    .line 500
    invoke-direct {p0}, Landroid/printservice/PrinterDiscoverySession;->sendOutOfDiscoveryPeriodPrinterChanges()V

    .line 501
    if-nez p1, :cond_0

    .line 502
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    .line 504
    :cond_0
    invoke-virtual {p0, p1}, Landroid/printservice/PrinterDiscoverySession;->onStartPrinterDiscovery(Ljava/util/List;)V

    .line 497
    :cond_1
    return-void
.end method

.method startPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 1
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .prologue
    .line 522
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mTrackedPrinters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mTrackedPrinters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    invoke-virtual {p0, p1}, Landroid/printservice/PrinterDiscoverySession;->onStartPrinterStateTracking(Landroid/print/PrinterId;)V

    goto :goto_0
.end method

.method stopPrinterDiscovery()V
    .locals 1

    .prologue
    .line 509
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-nez v0, :cond_0

    .line 510
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDiscoveryStarted:Z

    .line 511
    invoke-virtual {p0}, Landroid/printservice/PrinterDiscoverySession;->onStopPrinterDiscovery()V

    .line 508
    :cond_0
    return-void
.end method

.method stopPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 1
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .prologue
    .line 544
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mTrackedPrinters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 544
    if-eqz v0, :cond_0

    .line 546
    invoke-virtual {p0, p1}, Landroid/printservice/PrinterDiscoverySession;->onStopPrinterStateTracking(Landroid/print/PrinterId;)V

    .line 543
    :cond_0
    return-void
.end method

.method validatePrinters(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 516
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-boolean v0, p0, Landroid/printservice/PrinterDiscoverySession;->mIsDestroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/printservice/PrinterDiscoverySession;->mObserver:Landroid/printservice/IPrintServiceClient;

    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {p0, p1}, Landroid/printservice/PrinterDiscoverySession;->onValidatePrinters(Ljava/util/List;)V

    .line 515
    :cond_0
    return-void
.end method
