.class Lcom/android/server/net/NetworkStatsService$HandlerCallback;
.super Ljava/lang/Object;
.source "NetworkStatsService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HandlerCallback"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/net/NetworkStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/net/NetworkStatsService;

    .prologue
    .line 1391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1392
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService$HandlerCallback;->mService:Lcom/android/server/net/NetworkStatsService;

    .line 1391
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 1397
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1412
    const/4 v1, 0x0

    return v1

    .line 1399
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1400
    .local v0, "flags":I
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$HandlerCallback;->mService:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v1, v0}, Lcom/android/server/net/NetworkStatsService;->-wrap3(Lcom/android/server/net/NetworkStatsService;I)V

    .line 1401
    return v2

    .line 1404
    .end local v0    # "flags":I
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$HandlerCallback;->mService:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->-wrap8(Lcom/android/server/net/NetworkStatsService;)V

    .line 1405
    return v2

    .line 1408
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService$HandlerCallback;->mService:Lcom/android/server/net/NetworkStatsService;

    invoke-static {v1}, Lcom/android/server/net/NetworkStatsService;->-wrap4(Lcom/android/server/net/NetworkStatsService;)V

    .line 1409
    return v2

    .line 1397
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
