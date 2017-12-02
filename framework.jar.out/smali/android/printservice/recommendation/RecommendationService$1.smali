.class Landroid/printservice/recommendation/RecommendationService$1;
.super Landroid/printservice/recommendation/IRecommendationService$Stub;
.source "RecommendationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/printservice/recommendation/RecommendationService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/printservice/recommendation/RecommendationService;


# direct methods
.method constructor <init>(Landroid/printservice/recommendation/RecommendationService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/printservice/recommendation/RecommendationService;

    .prologue
    .line 73
    iput-object p1, p0, Landroid/printservice/recommendation/RecommendationService$1;->this$0:Landroid/printservice/recommendation/RecommendationService;

    invoke-direct {p0}, Landroid/printservice/recommendation/IRecommendationService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public registerCallbacks(Landroid/printservice/recommendation/IRecommendationServiceCallbacks;)V
    .locals 2
    .param p1, "callbacks"    # Landroid/printservice/recommendation/IRecommendationServiceCallbacks;

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 83
    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationService$1;->this$0:Landroid/printservice/recommendation/RecommendationService;

    invoke-static {v0}, Landroid/printservice/recommendation/RecommendationService;->-get1(Landroid/printservice/recommendation/RecommendationService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 75
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationService$1;->this$0:Landroid/printservice/recommendation/RecommendationService;

    invoke-static {v0}, Landroid/printservice/recommendation/RecommendationService;->-get1(Landroid/printservice/recommendation/RecommendationService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
