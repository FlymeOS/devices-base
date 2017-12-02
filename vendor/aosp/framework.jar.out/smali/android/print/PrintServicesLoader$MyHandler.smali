.class Landroid/print/PrintServicesLoader$MyHandler;
.super Landroid/os/Handler;
.source "PrintServicesLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintServicesLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/print/PrintServicesLoader;


# direct methods
.method public constructor <init>(Landroid/print/PrintServicesLoader;)V
    .locals 1
    .param p1, "this$0"    # Landroid/print/PrintServicesLoader;

    .prologue
    .line 113
    iput-object p1, p0, Landroid/print/PrintServicesLoader$MyHandler;->this$0:Landroid/print/PrintServicesLoader;

    .line 114
    invoke-virtual {p1}, Landroid/print/PrintServicesLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 113
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 119
    iget-object v0, p0, Landroid/print/PrintServicesLoader$MyHandler;->this$0:Landroid/print/PrintServicesLoader;

    invoke-virtual {v0}, Landroid/print/PrintServicesLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Landroid/print/PrintServicesLoader$MyHandler;->this$0:Landroid/print/PrintServicesLoader;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Landroid/print/PrintServicesLoader;->deliverResult(Ljava/lang/Object;)V

    .line 118
    :cond_0
    return-void
.end method
