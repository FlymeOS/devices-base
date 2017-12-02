.class Landroid/service/quicksettings/TileService$H;
.super Landroid/os/Handler;
.source "TileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/quicksettings/TileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field private static final MSG_START_LISTENING:I = 0x1

.field private static final MSG_START_SUCCESS:I = 0x7

.field private static final MSG_STOP_LISTENING:I = 0x2

.field private static final MSG_TILE_ADDED:I = 0x3

.field private static final MSG_TILE_CLICKED:I = 0x5

.field private static final MSG_TILE_REMOVED:I = 0x4

.field private static final MSG_UNLOCK_COMPLETE:I = 0x6


# instance fields
.field final synthetic this$0:Landroid/service/quicksettings/TileService;


# direct methods
.method public constructor <init>(Landroid/service/quicksettings/TileService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/quicksettings/TileService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 372
    iput-object p1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    .line 373
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 372
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 378
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 380
    :pswitch_0
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v1}, Landroid/service/quicksettings/TileService;->onTileAdded()V

    goto :goto_0

    .line 383
    :pswitch_1
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v1}, Landroid/service/quicksettings/TileService;->-get1(Landroid/service/quicksettings/TileService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 384
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v1, v2}, Landroid/service/quicksettings/TileService;->-set0(Landroid/service/quicksettings/TileService;Z)Z

    .line 385
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v1}, Landroid/service/quicksettings/TileService;->onStopListening()V

    .line 387
    :cond_1
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v1}, Landroid/service/quicksettings/TileService;->onTileRemoved()V

    goto :goto_0

    .line 390
    :pswitch_2
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v1}, Landroid/service/quicksettings/TileService;->-get1(Landroid/service/quicksettings/TileService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v1, v2}, Landroid/service/quicksettings/TileService;->-set0(Landroid/service/quicksettings/TileService;Z)Z

    .line 392
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v1}, Landroid/service/quicksettings/TileService;->onStopListening()V

    goto :goto_0

    .line 396
    :pswitch_3
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v1}, Landroid/service/quicksettings/TileService;->-get1(Landroid/service/quicksettings/TileService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 397
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/service/quicksettings/TileService;->-set0(Landroid/service/quicksettings/TileService;Z)Z

    .line 398
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v1}, Landroid/service/quicksettings/TileService;->onStartListening()V

    goto :goto_0

    .line 402
    :pswitch_4
    iget-object v2, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    invoke-static {v2, v1}, Landroid/service/quicksettings/TileService;->-set1(Landroid/service/quicksettings/TileService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 403
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-virtual {v1}, Landroid/service/quicksettings/TileService;->onClick()V

    goto :goto_0

    .line 406
    :pswitch_5
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v1}, Landroid/service/quicksettings/TileService;->-get4(Landroid/service/quicksettings/TileService;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v1}, Landroid/service/quicksettings/TileService;->-get4(Landroid/service/quicksettings/TileService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 412
    :pswitch_6
    :try_start_0
    iget-object v1, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v1}, Landroid/service/quicksettings/TileService;->-get2(Landroid/service/quicksettings/TileService;)Landroid/service/quicksettings/IQSService;

    move-result-object v1

    iget-object v2, p0, Landroid/service/quicksettings/TileService$H;->this$0:Landroid/service/quicksettings/TileService;

    invoke-static {v2}, Landroid/service/quicksettings/TileService;->-get3(Landroid/service/quicksettings/TileService;)Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/service/quicksettings/IQSService;->onStartSuccessful(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 413
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 378
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
