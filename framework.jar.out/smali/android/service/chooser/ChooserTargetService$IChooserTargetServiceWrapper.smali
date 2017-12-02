.class Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;
.super Landroid/service/chooser/IChooserTargetService$Stub;
.source "ChooserTargetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/chooser/ChooserTargetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IChooserTargetServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/service/chooser/ChooserTargetService;


# direct methods
.method private constructor <init>(Landroid/service/chooser/ChooserTargetService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/chooser/ChooserTargetService;

    .prologue
    .line 137
    iput-object p1, p0, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;->this$0:Landroid/service/chooser/ChooserTargetService;

    invoke-direct {p0}, Landroid/service/chooser/IChooserTargetService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/service/chooser/ChooserTargetService;Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/service/chooser/ChooserTargetService;

    .prologue
    invoke-direct {p0, p1}, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;-><init>(Landroid/service/chooser/ChooserTargetService;)V

    return-void
.end method


# virtual methods
.method public getChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/service/chooser/IChooserTargetResult;)V
    .locals 4
    .param p1, "targetComponentName"    # Landroid/content/ComponentName;
    .param p2, "matchedFilter"    # Landroid/content/IntentFilter;
    .param p3, "result"    # Landroid/service/chooser/IChooserTargetResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 141
    const/4 v2, 0x0

    .line 142
    .local v2, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    invoke-static {}, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;->clearCallingIdentity()J

    move-result-wide v0

    .line 148
    .local v0, "id":J
    :try_start_0
    iget-object v3, p0, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;->this$0:Landroid/service/chooser/ChooserTargetService;

    invoke-virtual {v3, p1, p2}, Landroid/service/chooser/ChooserTargetService;->onGetChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 150
    .local v2, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    invoke-static {v0, v1}, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;->restoreCallingIdentity(J)V

    .line 151
    invoke-interface {p3, v2}, Landroid/service/chooser/IChooserTargetResult;->sendResult(Ljava/util/List;)V

    .line 140
    return-void

    .line 149
    .local v2, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    :catchall_0
    move-exception v3

    .line 150
    invoke-static {v0, v1}, Landroid/service/chooser/ChooserTargetService$IChooserTargetServiceWrapper;->restoreCallingIdentity(J)V

    .line 151
    invoke-interface {p3, v2}, Landroid/service/chooser/IChooserTargetResult;->sendResult(Ljava/util/List;)V

    .line 149
    throw v3
.end method
