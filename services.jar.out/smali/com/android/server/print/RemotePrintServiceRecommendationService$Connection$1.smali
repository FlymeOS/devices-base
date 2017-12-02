.class Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection$1;
.super Landroid/printservice/recommendation/IRecommendationServiceCallbacks$Stub;
.source "RemotePrintServiceRecommendationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;


# direct methods
.method constructor <init>(Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection$1;->this$1:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    invoke-direct {p0}, Landroid/printservice/recommendation/IRecommendationServiceCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecommendationsUpdated(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "recommendations":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/recommendation/RecommendationInfo;>;"
    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection$1;->this$1:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    iget-object v0, v0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    invoke-static {v0}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->-get1(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection$1;->this$1:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    iget-object v0, v0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    invoke-static {v0}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->-get0(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection$1;->this$1:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    iget-object v0, v0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->this$0:Lcom/android/server/print/RemotePrintServiceRecommendationService;

    invoke-static {v0}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->-get2(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Landroid/printservice/recommendation/IRecommendationService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 209
    if-eqz p1, :cond_0

    .line 211
    const-string/jumbo v0, "recommendation"

    .line 210
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection$1;->this$1:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    invoke-static {v0}, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;->-get0(Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;)Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;->onPrintServiceRecommendationsUpdated(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 206
    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
