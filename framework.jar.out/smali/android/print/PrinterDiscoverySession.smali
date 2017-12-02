.class public final Landroid/print/PrinterDiscoverySession;
.super Ljava/lang/Object;
.source "PrinterDiscoverySession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;,
        Landroid/print/PrinterDiscoverySession$PrinterDiscoveryObserver;,
        Landroid/print/PrinterDiscoverySession$SessionHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PrinterDiscoverySession"

.field private static final MSG_PRINTERS_ADDED:I = 0x1

.field private static final MSG_PRINTERS_REMOVED:I = 0x2


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIsPrinterDiscoveryStarted:Z

.field private mListener:Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;

.field private mObserver:Landroid/print/IPrinterDiscoveryObserver;

.field private final mPrintManager:Landroid/print/IPrintManager;

.field private final mPrinters:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/print/PrinterId;",
            "Landroid/print/PrinterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method static synthetic -get0(Landroid/print/PrinterDiscoverySession;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/print/PrinterDiscoverySession;Ljava/util/List;)V
    .locals 0
    .param p1, "addedPrinters"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Landroid/print/PrinterDiscoverySession;->handlePrintersAdded(Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/print/PrinterDiscoverySession;Ljava/util/List;)V
    .locals 0
    .param p1, "printerIds"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Landroid/print/PrinterDiscoverySession;->handlePrintersRemoved(Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Landroid/print/IPrintManager;Landroid/content/Context;I)V
    .locals 4
    .param p1, "printManager"    # Landroid/print/IPrintManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 46
    iput-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    .line 66
    iput-object p1, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    .line 67
    iput p3, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    .line 68
    new-instance v1, Landroid/print/PrinterDiscoverySession$SessionHandler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/print/PrinterDiscoverySession$SessionHandler;-><init>(Landroid/print/PrinterDiscoverySession;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/print/PrinterDiscoverySession;->mHandler:Landroid/os/Handler;

    .line 69
    new-instance v1, Landroid/print/PrinterDiscoverySession$PrinterDiscoveryObserver;

    invoke-direct {v1, p0}, Landroid/print/PrinterDiscoverySession$PrinterDiscoveryObserver;-><init>(Landroid/print/PrinterDiscoverySession;)V

    iput-object v1, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    .line 71
    :try_start_0
    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    iget-object v2, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    iget v3, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    invoke-interface {v1, v2, v3}, Landroid/print/IPrintManager;->createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "PrinterDiscoverySession"

    const-string/jumbo v2, "Error creating printer discovery session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private destroyNoCheck()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 187
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->stopPrinterDiscovery()V

    .line 189
    :try_start_0
    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    iget-object v2, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    iget v3, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    invoke-interface {v1, v2, v3}, Landroid/print/IPrintManager;->destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    iput-object v4, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    .line 194
    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 186
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "re":Landroid/os/RemoteException;
    :try_start_1
    const-string/jumbo v1, "PrinterDiscoverySession"

    const-string/jumbo v2, "Error destroying printer discovery session"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    iput-object v4, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    .line 194
    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_0

    .line 192
    .end local v0    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    .line 193
    iput-object v4, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    .line 194
    iget-object v2, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    .line 192
    throw v1
.end method

.method private handlePrintersAdded(Ljava/util/List;)V
    .locals 9
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
    .line 199
    .local p1, "addedPrinters":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 200
    return-void

    .line 204
    :cond_0
    iget-object v7, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 205
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 206
    .local v5, "printerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 207
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrinterInfo;

    .line 208
    .local v4, "printer":Landroid/print/PrinterInfo;
    iget-object v7, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    .end local v4    # "printer":Landroid/print/PrinterInfo;
    :cond_1
    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->notifyOnPrintersChanged()V

    .line 211
    return-void

    .line 216
    .end local v1    # "i":I
    .end local v5    # "printerCount":I
    :cond_2
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 217
    .local v0, "addedPrintersMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/print/PrinterId;Landroid/print/PrinterInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 218
    .restart local v5    # "printerCount":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v5, :cond_3

    .line 219
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrinterInfo;

    .line 220
    .restart local v4    # "printer":Landroid/print/PrinterInfo;
    invoke-virtual {v4}, Landroid/print/PrinterInfo;->getId()Landroid/print/PrinterId;

    move-result-object v7

    invoke-virtual {v0, v7, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 224
    .end local v4    # "printer":Landroid/print/PrinterInfo;
    :cond_3
    iget-object v7, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "oldPrinterId$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterId;

    .line 225
    .local v2, "oldPrinterId":Landroid/print/PrinterId;
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/print/PrinterInfo;

    .line 226
    .local v6, "updatedPrinter":Landroid/print/PrinterInfo;
    if-eqz v6, :cond_4

    .line 227
    iget-object v7, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 232
    .end local v2    # "oldPrinterId":Landroid/print/PrinterId;
    .end local v6    # "updatedPrinter":Landroid/print/PrinterInfo;
    :cond_5
    iget-object v7, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 235
    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->notifyOnPrintersChanged()V

    .line 198
    return-void
.end method

.method private handlePrintersRemoved(Ljava/util/List;)V
    .locals 5
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
    .line 239
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 240
    return-void

    .line 242
    :cond_0
    const/4 v1, 0x0

    .line 243
    .local v1, "printersChanged":Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 244
    .local v3, "removedPrinterIdCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 245
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterId;

    .line 246
    .local v2, "removedPrinterId":Landroid/print/PrinterId;
    iget-object v4, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 247
    const/4 v1, 0x1

    .line 244
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    .end local v2    # "removedPrinterId":Landroid/print/PrinterId;
    :cond_2
    if-eqz v1, :cond_3

    .line 251
    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->notifyOnPrintersChanged()V

    .line 238
    :cond_3
    return-void
.end method

.method private isDestroyedNoCheck()Z
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyOnPrintersChanged()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mListener:Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Landroid/print/PrinterDiscoverySession;->mListener:Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;

    invoke-interface {v0}, Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;->onPrintersChanged()V

    .line 255
    :cond_0
    return-void
.end method

.method private static throwIfNotCalledOnMainThread()V
    .locals 2

    .prologue
    .line 262
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string/jumbo v1, "must be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 261
    :cond_0
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const-string/jumbo v0, "PrinterDiscoverySession"

    const-string/jumbo v1, "Ignoring destroy - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->destroyNoCheck()V

    .line 143
    return-void
.end method

.method protected final finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 175
    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyedNoCheck()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    const-string/jumbo v0, "PrinterDiscoverySession"

    const-string/jumbo v1, "Destroying leaked printer discovery session"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->destroyNoCheck()V

    .line 179
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 174
    return-void
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
    .line 151
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const-string/jumbo v0, "PrinterDiscoverySession"

    const-string/jumbo v1, "Ignoring get printers - session destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 155
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrinters:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final isDestroyed()Z
    .locals 1

    .prologue
    .line 159
    invoke-static {}, Landroid/print/PrinterDiscoverySession;->throwIfNotCalledOnMainThread()V

    .line 160
    invoke-direct {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyedNoCheck()Z

    move-result v0

    return v0
.end method

.method public final isPrinterDiscoveryStarted()Z
    .locals 1

    .prologue
    .line 164
    invoke-static {}, Landroid/print/PrinterDiscoverySession;->throwIfNotCalledOnMainThread()V

    .line 165
    iget-boolean v0, p0, Landroid/print/PrinterDiscoverySession;->mIsPrinterDiscoveryStarted:Z

    return v0
.end method

.method public final setOnPrintersChangeListener(Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;

    .prologue
    .line 169
    invoke-static {}, Landroid/print/PrinterDiscoverySession;->throwIfNotCalledOnMainThread()V

    .line 170
    iput-object p1, p0, Landroid/print/PrinterDiscoverySession;->mListener:Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;

    .line 168
    return-void
.end method

.method public final startPrinterDiscovery(Ljava/util/List;)V
    .locals 4
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
    .line 78
    .local p1, "priorityList":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    const-string/jumbo v1, "PrinterDiscoverySession"

    const-string/jumbo v2, "Ignoring start printers discovery - session destroyed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void

    .line 82
    :cond_0
    iget-boolean v1, p0, Landroid/print/PrinterDiscoverySession;->mIsPrinterDiscoveryStarted:Z

    if-nez v1, :cond_1

    .line 83
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/print/PrinterDiscoverySession;->mIsPrinterDiscoveryStarted:Z

    .line 85
    :try_start_0
    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    iget-object v2, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    iget v3, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    invoke-interface {v1, v2, p1, v3}, Landroid/print/IPrintManager;->startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_1
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "PrinterDiscoverySession"

    const-string/jumbo v2, "Error starting printer discovery"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final startPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 3
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .prologue
    .line 108
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const-string/jumbo v1, "PrinterDiscoverySession"

    const-string/jumbo v2, "Ignoring start printer state tracking - session destroyed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void

    .line 113
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    iget v2, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    invoke-interface {v1, p1, v2}, Landroid/print/IPrintManager;->startPrinterStateTracking(Landroid/print/PrinterId;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "PrinterDiscoverySession"

    const-string/jumbo v2, "Error starting printer state tracking"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final stopPrinterDiscovery()V
    .locals 4

    .prologue
    .line 93
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    const-string/jumbo v1, "PrinterDiscoverySession"

    const-string/jumbo v2, "Ignoring stop printers discovery - session destroyed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void

    .line 97
    :cond_0
    iget-boolean v1, p0, Landroid/print/PrinterDiscoverySession;->mIsPrinterDiscoveryStarted:Z

    if-eqz v1, :cond_1

    .line 98
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/print/PrinterDiscoverySession;->mIsPrinterDiscoveryStarted:Z

    .line 100
    :try_start_0
    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    iget-object v2, p0, Landroid/print/PrinterDiscoverySession;->mObserver:Landroid/print/IPrinterDiscoveryObserver;

    iget v3, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    invoke-interface {v1, v2, v3}, Landroid/print/IPrintManager;->stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :cond_1
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "PrinterDiscoverySession"

    const-string/jumbo v2, "Error stopping printer discovery"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final stopPrinterStateTracking(Landroid/print/PrinterId;)V
    .locals 3
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .prologue
    .line 120
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    const-string/jumbo v1, "PrinterDiscoverySession"

    const-string/jumbo v2, "Ignoring stop printer state tracking - session destroyed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void

    .line 125
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    iget v2, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    invoke-interface {v1, p1, v2}, Landroid/print/IPrintManager;->stopPrinterStateTracking(Landroid/print/PrinterId;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "PrinterDiscoverySession"

    const-string/jumbo v2, "Error stopping printer state tracking"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final validatePrinters(Ljava/util/List;)V
    .locals 3
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
    .line 132
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {p0}, Landroid/print/PrinterDiscoverySession;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const-string/jumbo v1, "PrinterDiscoverySession"

    const-string/jumbo v2, "Ignoring validate printers - session destroyed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void

    .line 137
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/print/PrinterDiscoverySession;->mPrintManager:Landroid/print/IPrintManager;

    iget v2, p0, Landroid/print/PrinterDiscoverySession;->mUserId:I

    invoke-interface {v1, p1, v2}, Landroid/print/IPrintManager;->validatePrinters(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "PrinterDiscoverySession"

    const-string/jumbo v2, "Error validating printers"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
