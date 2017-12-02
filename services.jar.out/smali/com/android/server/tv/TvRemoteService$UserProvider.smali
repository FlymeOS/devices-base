.class final Lcom/android/server/tv/TvRemoteService$UserProvider;
.super Ljava/lang/Object;
.source "TvRemoteService.java"

# interfaces
.implements Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;
.implements Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserProvider"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/tv/TvRemoteService;

.field final synthetic this$0:Lcom/android/server/tv/TvRemoteService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvRemoteService;Lcom/android/server/tv/TvRemoteService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvRemoteService;
    .param p2, "service"    # Lcom/android/server/tv/TvRemoteService;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-object p2, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->mService:Lcom/android/server/tv/TvRemoteService;

    .line 258
    return-void
.end method


# virtual methods
.method public addProvider(Lcom/android/server/tv/TvRemoteProviderProxy;)V
    .locals 4
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get0(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 372
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->setProviderSink(Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;)V

    .line 373
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get1(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    const-string/jumbo v0, "TvRemoteService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/tv/TvRemoteProviderProxy;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 369
    return-void

    .line 371
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public clearInputBridge(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get0(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get1(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->mService:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0, p2}, Lcom/android/server/tv/TvRemoteService;->-wrap0(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 291
    return-void

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public closeInputBridge(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get0(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get1(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->mService:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0, p2}, Lcom/android/server/tv/TvRemoteService;->-wrap1(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;)V

    .line 285
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get2(Lcom/android/server/tv/TvRemoteService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 280
    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public openInputBridge(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;Ljava/lang/String;III)V
    .locals 8
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "maxPointers"    # I

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get0(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get1(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->mService:Lcom/android/server/tv/TvRemoteService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/tv/TvRemoteService;->-wrap2(Lcom/android/server/tv/TvRemoteService;Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;Ljava/lang/String;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v7

    .line 264
    return-void

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method public removeProvider(Lcom/android/server/tv/TvRemoteProviderProxy;)V
    .locals 4
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get0(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get1(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    const-string/jumbo v0, "TvRemoteService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 379
    return-void

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public sendKeyDown(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "keyCode"    # I

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get0(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 315
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get1(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->mService:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0, p2, p3}, Lcom/android/server/tv/TvRemoteService;->-wrap3(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 310
    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public sendKeyUp(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "keyCode"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get0(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get1(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->mService:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0, p2, p3}, Lcom/android/server/tv/TvRemoteService;->-wrap4(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 322
    return-void

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public sendPointerDown(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;III)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pointerId"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get0(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 340
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get1(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->mService:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0, p2, p3, p4, p5}, Lcom/android/server/tv/TvRemoteService;->-wrap5(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 335
    return-void

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public sendPointerSync(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get0(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get1(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->mService:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0, p2}, Lcom/android/server/tv/TvRemoteService;->-wrap6(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 359
    return-void

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public sendPointerUp(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pointerId"    # I

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get0(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 352
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get1(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->mService:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0, p2, p3}, Lcom/android/server/tv/TvRemoteService;->-wrap7(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 347
    return-void

    .line 351
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public sendTimeStamp(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/os/IBinder;J)V
    .locals 3
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "timestamp"    # J

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get0(Lcom/android/server/tv/TvRemoteService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0}, Lcom/android/server/tv/TvRemoteService;->-get1(Lcom/android/server/tv/TvRemoteService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserProvider;->mService:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v0, p2, p3, p4}, Lcom/android/server/tv/TvRemoteService;->-wrap8(Lcom/android/server/tv/TvRemoteService;Landroid/os/IBinder;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 301
    return-void

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
