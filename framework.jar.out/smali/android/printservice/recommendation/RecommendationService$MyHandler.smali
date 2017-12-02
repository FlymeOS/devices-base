.class Landroid/printservice/recommendation/RecommendationService$MyHandler;
.super Landroid/os/Handler;
.source "RecommendationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/printservice/recommendation/RecommendationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field static final MSG_CONNECT:I = 0x1

.field static final MSG_DISCONNECT:I = 0x2

.field static final MSG_UPDATE:I = 0x3


# instance fields
.field final synthetic this$0:Landroid/printservice/recommendation/RecommendationService;


# direct methods
.method constructor <init>(Landroid/printservice/recommendation/RecommendationService;)V
    .locals 1
    .param p1, "this$0"    # Landroid/printservice/recommendation/RecommendationService;

    .prologue
    .line 106
    iput-object p1, p0, Landroid/printservice/recommendation/RecommendationService$MyHandler;->this$0:Landroid/printservice/recommendation/RecommendationService;

    .line 107
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 106
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 112
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 111
    :goto_0
    return-void

    .line 114
    :pswitch_0
    iget-object v2, p0, Landroid/printservice/recommendation/RecommendationService$MyHandler;->this$0:Landroid/printservice/recommendation/RecommendationService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/printservice/recommendation/IRecommendationServiceCallbacks;

    invoke-static {v2, v1}, Landroid/printservice/recommendation/RecommendationService;->-set0(Landroid/printservice/recommendation/RecommendationService;Landroid/printservice/recommendation/IRecommendationServiceCallbacks;)Landroid/printservice/recommendation/IRecommendationServiceCallbacks;

    .line 115
    iget-object v1, p0, Landroid/printservice/recommendation/RecommendationService$MyHandler;->this$0:Landroid/printservice/recommendation/RecommendationService;

    invoke-virtual {v1}, Landroid/printservice/recommendation/RecommendationService;->onConnected()V

    goto :goto_0

    .line 118
    :pswitch_1
    iget-object v1, p0, Landroid/printservice/recommendation/RecommendationService$MyHandler;->this$0:Landroid/printservice/recommendation/RecommendationService;

    invoke-virtual {v1}, Landroid/printservice/recommendation/RecommendationService;->onDisconnected()V

    .line 119
    iget-object v1, p0, Landroid/printservice/recommendation/RecommendationService$MyHandler;->this$0:Landroid/printservice/recommendation/RecommendationService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/printservice/recommendation/RecommendationService;->-set0(Landroid/printservice/recommendation/RecommendationService;Landroid/printservice/recommendation/IRecommendationServiceCallbacks;)Landroid/printservice/recommendation/IRecommendationServiceCallbacks;

    goto :goto_0

    .line 127
    :pswitch_2
    :try_start_0
    iget-object v1, p0, Landroid/printservice/recommendation/RecommendationService$MyHandler;->this$0:Landroid/printservice/recommendation/RecommendationService;

    invoke-static {v1}, Landroid/printservice/recommendation/RecommendationService;->-get0(Landroid/printservice/recommendation/RecommendationService;)Landroid/printservice/recommendation/IRecommendationServiceCallbacks;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v2, v1}, Landroid/printservice/recommendation/IRecommendationServiceCallbacks;->onRecommendationsUpdated(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PrintServiceRecS"

    const-string/jumbo v2, "Could not update recommended services"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
