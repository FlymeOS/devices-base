.class Landroid/hardware/location/ContextHubService$1;
.super Landroid/service/vr/IVrStateCallbacks$Stub;
.source "ContextHubService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/ContextHubService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/location/ContextHubService;


# direct methods
.method constructor <init>(Landroid/hardware/location/ContextHubService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/location/ContextHubService;

    .prologue
    .line 86
    iput-object p1, p0, Landroid/hardware/location/ContextHubService$1;->this$0:Landroid/hardware/location/ContextHubService;

    invoke-direct {p0}, Landroid/service/vr/IVrStateCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onVrStateChanged(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    .line 89
    iget-object v2, p0, Landroid/hardware/location/ContextHubService$1;->this$0:Landroid/hardware/location/ContextHubService;

    invoke-static {v2}, Landroid/hardware/location/ContextHubService;->-get0(Landroid/hardware/location/ContextHubService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/location/NanoAppInstanceInfo;

    .line 90
    .local v0, "app":Landroid/hardware/location/NanoAppInstanceInfo;
    invoke-virtual {v0}, Landroid/hardware/location/NanoAppInstanceInfo;->getAppId()J

    move-result-wide v2

    const-wide v4, 0x476f6f676c001000L    # 1.3057659520462446E36

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 91
    iget-object v2, p0, Landroid/hardware/location/ContextHubService$1;->this$0:Landroid/hardware/location/ContextHubService;

    invoke-static {v2, v0, p1}, Landroid/hardware/location/ContextHubService;->-wrap0(Landroid/hardware/location/ContextHubService;Landroid/hardware/location/NanoAppInstanceInfo;Z)V

    .line 88
    .end local v0    # "app":Landroid/hardware/location/NanoAppInstanceInfo;
    :cond_1
    return-void
.end method
