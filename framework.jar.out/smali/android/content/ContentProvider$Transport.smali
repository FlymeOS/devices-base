.class Landroid/content/ContentProvider$Transport;
.super Landroid/content/ContentProviderNative;
.source "ContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Transport"
.end annotation


# instance fields
.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mReadOp:I

.field mWriteOp:I

.field final synthetic this$0:Landroid/content/ContentProvider;


# direct methods
.method constructor <init>(Landroid/content/ContentProvider;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 184
    iput-object p1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-direct {p0}, Landroid/content/ContentProviderNative;-><init>()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 186
    iput v1, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    .line 187
    iput v1, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    return-void
.end method

.method private enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 434
    if-eqz p3, :cond_0

    const/16 v0, 0x77

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 435
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "App op not allowed"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "App op not allowed"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_1
    return-void
.end method

.method private enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;)I
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->enforceReadPermissionInner(Landroid/net/Uri;)V

    .line 447
    iget v0, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 448
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    .line 450
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->enforceWritePermissionInner(Landroid/net/Uri;)V

    .line 455
    iget v0, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 456
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    .line 458
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 12
    .param p1, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .local p2, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v10, 0x0

    const/4 v11, -0x2

    .line 260
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 261
    .local v1, "numOperations":I
    new-array v7, v1, [I

    .line 262
    .local v7, "userIds":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 263
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProviderOperation;

    .line 264
    .local v2, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 265
    .local v6, "uri":Landroid/net/Uri;
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v8, v6}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 266
    invoke-static {v6}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v8

    aput v8, v7, v0

    .line 267
    aget v8, v7, v0

    if-eq v8, v11, :cond_0

    .line 269
    new-instance v3, Landroid/content/ContentProviderOperation;

    const/4 v8, 0x1

    invoke-direct {v3, v2, v8}, Landroid/content/ContentProviderOperation;-><init>(Landroid/content/ContentProviderOperation;Z)V

    .line 270
    .end local v2    # "operation":Landroid/content/ContentProviderOperation;
    .local v3, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {p2, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    .line 272
    .end local v3    # "operation":Landroid/content/ContentProviderOperation;
    .restart local v2    # "operation":Landroid/content/ContentProviderOperation;
    :cond_0
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->isReadOperation()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 273
    invoke-direct {p0, p1, v6}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v8

    if-eqz v8, :cond_1

    .line 275
    new-instance v8, Landroid/content/OperationApplicationException;

    const-string v9, "App op not allowed"

    invoke-direct {v8, v9, v10}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 278
    :cond_1
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->isWriteOperation()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 279
    invoke-direct {p0, p1, v6}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v8

    if-eqz v8, :cond_2

    .line 281
    new-instance v8, Landroid/content/OperationApplicationException;

    const-string v9, "App op not allowed"

    invoke-direct {v8, v9, v10}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v8

    .line 262
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    .end local v2    # "operation":Landroid/content/ContentProviderOperation;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_3
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 287
    .local v4, "original":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v8, p2}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    .line 288
    .local v5, "results":[Landroid/content/ContentProviderResult;
    const/4 v0, 0x0

    :goto_1
    array-length v8, v5

    if-ge v0, v8, :cond_5

    .line 289
    aget v8, v7, v0

    if-eq v8, v11, :cond_4

    .line 291
    new-instance v8, Landroid/content/ContentProviderResult;

    aget-object v9, v5, v0

    aget v10, v7, v0

    invoke-direct {v8, v9, v10}, Landroid/content/ContentProviderResult;-><init>(Landroid/content/ContentProviderResult;I)V

    aput-object v8, v5, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 296
    :cond_5
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v4}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object v5

    .end local v5    # "results":[Landroid/content/ContentProviderResult;
    :catchall_0
    move-exception v8

    iget-object v9, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v9, v4}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v8
.end method

.method public bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "initialValues"    # [Landroid/content/ContentValues;

    .prologue
    .line 243
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v1, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 244
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 245
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->hook_enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    const/4 v1, 0x0

    .line 252
    :goto_0
    return v1

    .line 248
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 252
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 365
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3, p4}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 369
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public canonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 402
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v2, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 403
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v1

    .line 404
    .local v1, "userId":I
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 405
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    const/4 v2, 0x0

    .line 412
    :goto_0
    return-object v2

    .line 408
    :cond_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2, p2}, Landroid/content/ContentProvider;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 412
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v2
.end method

.method public createCancellationSignal()Landroid/os/ICancellationSignal;
    .locals 1

    .prologue
    .line 397
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 302
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v1, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 303
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 304
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->hook_enforceWritePermission_isDel(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    const/4 v1, 0x0

    .line 311
    :goto_0
    return v1

    .line 307
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3, p4}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 311
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method getContentProvider()Landroid/content/ContentProvider;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;

    .prologue
    .line 375
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 376
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 377
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentProvider;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 220
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 221
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 222
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 227
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v2, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 228
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v1

    .line 229
    .local v1, "userId":I
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 230
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->hook_enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentProvider;->rejectInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 237
    :goto_0
    return-object v2

    .line 233
    :cond_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 237
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v2
.end method

.method public openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 351
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v1, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 352
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 353
    invoke-direct {p0, p1, p2, p3}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v2

    invoke-virtual {v1, p2, p3, v2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 359
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public openFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 335
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v1, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 336
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 337
    invoke-direct {p0, p1, p2, p3}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 338
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v2

    invoke-virtual {v1, p2, p3, v2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 343
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 383
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v1, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 384
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 385
    const-string/jumbo v1, "r"

    invoke-direct {p0, p1, p2, v1}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 388
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p5}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v2

    invoke-virtual {v1, p2, p3, p4, v2}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 391
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method public query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    .locals 8
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;
    .param p6, "sortOrder"    # Ljava/lang/String;
    .param p7, "cancellationSignal"    # Landroid/os/ICancellationSignal;

    .prologue
    .line 202
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v0, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 203
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 204
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->hook_enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p7}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProvider;->rejectQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    .line 214
    :goto_0
    return-object v0

    .line 208
    :cond_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 210
    .local v7, "original":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {p7}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v6

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 214
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v7}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, v7}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v0
.end method

.method public uncanonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 4
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 418
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v2, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 419
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v1

    .line 420
    .local v1, "userId":I
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 421
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 422
    const/4 v2, 0x0

    .line 428
    :goto_0
    return-object v2

    .line 424
    :cond_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 426
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2, p2}, Landroid/content/ContentProvider;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 428
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v2
.end method

.method public update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "selection"    # Ljava/lang/String;
    .param p5, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 318
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V
    invoke-static {v1, p2}, Landroid/content/ContentProvider;->access$000(Landroid/content/ContentProvider;Landroid/net/Uri;)V

    .line 319
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 320
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->hook_enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    const/4 v1, 0x0

    .line 327
    :goto_0
    return v1

    .line 323
    :cond_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "original":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 327
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    # invokes: Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v0}, Landroid/content/ContentProvider;->access$100(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;

    throw v1
.end method

.method private hook_enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;)I
    .locals 2
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 482
    const/4 v0, 0x1

    .line 484
    .local v0, "mode":I
    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lmeizu/security/FlymePermissionManager;->checkReadPrivilege(Ljava/lang/String;Landroid/net/Uri;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 485
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    .line 489
    :cond_0
    invoke-direct {p0, p2, p1}, Landroid/content/ContentProvider$Transport;->isCurentLockApp(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 490
    const/4 v0, 0x1

    .line 493
    :cond_1
    return v0
.end method

.method private hook_enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I
    .locals 2
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 497
    const/4 v0, 0x1

    .line 499
    .local v0, "mode":I
    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lmeizu/security/FlymePermissionManager;->checkWritePrivilege(Ljava/lang/String;Landroid/net/Uri;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    .line 504
    :cond_0
    invoke-direct {p0, p2, p1}, Landroid/content/ContentProvider$Transport;->isCurentLockApp(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 505
    const/4 v0, 0x1

    .line 508
    :cond_1
    return v0
.end method

.method private hook_enforceWritePermission_isDel(Ljava/lang/String;Landroid/net/Uri;)I
    .locals 2
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 512
    const/4 v0, 0x1

    .line 514
    .local v0, "mode":I
    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lmeizu/security/FlymePermissionManager;->checkWritePrivilege(Ljava/lang/String;Landroid/net/Uri;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    .line 519
    :cond_0
    invoke-direct {p0, p2, p1}, Landroid/content/ContentProvider$Transport;->isCurentLockApp(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 520
    const/4 v0, 0x1

    .line 523
    :cond_1
    return v0
.end method

.method private isCurentLockApp(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callingPkg"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 532
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 533
    .local v7, "uid":I
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v8}, Landroid/content/ContentProvider;->mzGetMyUid()I

    move-result v8

    invoke-static {v7, v8}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v9

    .line 582
    :goto_0
    return v8

    .line 537
    :cond_0
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    iget-object v8, v8, Landroid/content/ContentProvider;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    if-nez v8, :cond_1

    .line 538
    iget-object v10, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v8}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v11, "access_control"

    invoke-virtual {v8, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lmeizu/security/AccessControlManager;

    iput-object v8, v10, Landroid/content/ContentProvider;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    .line 541
    :cond_1
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    iget-object v8, v8, Landroid/content/ContentProvider;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    if-nez v8, :cond_2

    move v8, v9

    .line 542
    goto :goto_0

    .line 545
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    .line 546
    .local v4, "name":Ljava/lang/String;
    if-nez v4, :cond_3

    move v8, v9

    .line 547
    goto :goto_0

    .line 549
    :cond_3
    const/4 v2, 0x0

    .line 551
    .local v2, "cpi":Landroid/content/pm/ProviderInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    const/4 v10, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    invoke-interface {v8, v4, v10, v11}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 555
    :goto_1
    if-eqz v2, :cond_9

    .line 556
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v8}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string/jumbo v10, "ownerPackage"

    const-string/jumbo v11, "string"

    iget-object v12, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 557
    .local v6, "ownerPackageId":I
    const/4 v5, 0x0

    .line 558
    .local v5, "ownerPackage":Ljava/lang/String;
    if-lez v6, :cond_4

    .line 559
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v8}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 561
    :cond_4
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    iget-object v8, v8, Landroid/content/ContentProvider;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    iget-object v10, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lmeizu/security/AccessControlManager;->checkAccessControl(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    iget-object v8, v8, Landroid/content/ContentProvider;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    invoke-virtual {v8, v5}, Lmeizu/security/AccessControlManager;->checkAccessControl(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 562
    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v8, v9

    .line 563
    goto :goto_0

    .line 565
    :cond_6
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v8}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v10, "believePackages"

    const-string v11, "array"

    iget-object v12, v2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 566
    .local v0, "believePackageId":I
    if-lez v0, :cond_8

    .line 567
    iget-object v8, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v8}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 569
    .local v1, "believePackages":[Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 570
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v8, v1

    if-ge v3, v8, :cond_8

    .line 571
    aget-object v8, v1, v3

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    move v8, v9

    .line 572
    goto/16 :goto_0

    .line 570
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 578
    .end local v1    # "believePackages":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_8
    const/4 v8, 0x1

    goto/16 :goto_0

    .end local v0    # "believePackageId":I
    .end local v5    # "ownerPackage":Ljava/lang/String;
    .end local v6    # "ownerPackageId":I
    :cond_9
    move v8, v9

    .line 582
    goto/16 :goto_0

    .line 552
    :catch_0
    move-exception v8

    goto/16 :goto_1
.end method

