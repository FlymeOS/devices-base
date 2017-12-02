.class Landroid/media/browse/MediaBrowser$MediaServiceConnection;
.super Ljava/lang/Object;
.source "MediaBrowser.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/browse/MediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/browse/MediaBrowser;


# direct methods
.method static synthetic -wrap0(Landroid/media/browse/MediaBrowser$MediaServiceConnection;Ljava/lang/String;)Z
    .locals 1
    .param p1, "funcName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->isCurrent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private constructor <init>(Landroid/media/browse/MediaBrowser;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/browse/MediaBrowser;

    .prologue
    .line 940
    iput-object p1, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/browse/MediaBrowser;Landroid/media/browse/MediaBrowser$MediaServiceConnection;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/browse/MediaBrowser;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/browse/MediaBrowser$MediaServiceConnection;-><init>(Landroid/media/browse/MediaBrowser;)V

    return-void
.end method

.method private isCurrent(Ljava/lang/String;)Z
    .locals 4
    .param p1, "funcName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1030
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->-get7(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    move-result-object v0

    if-eq v0, p0, :cond_1

    .line 1031
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->-get8(Landroid/media/browse/MediaBrowser;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1033
    const-string/jumbo v0, "MediaBrowser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->-get6(Landroid/media/browse/MediaBrowser;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with mServiceConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1034
    iget-object v2, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v2}, Landroid/media/browse/MediaBrowser;->-get7(Landroid/media/browse/MediaBrowser;)Landroid/media/browse/MediaBrowser$MediaServiceConnection;

    move-result-object v2

    .line 1033
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1034
    const-string/jumbo v2, " this="

    .line 1033
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :cond_0
    return v3

    .line 1038
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private postOrRun(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1019
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v1}, Landroid/media/browse/MediaBrowser;->-get2(Landroid/media/browse/MediaBrowser;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1020
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1018
    :goto_0
    return-void

    .line 1022
    :cond_0
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->this$0:Landroid/media/browse/MediaBrowser;

    invoke-static {v0}, Landroid/media/browse/MediaBrowser;->-get2(Landroid/media/browse/MediaBrowser;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 943
    new-instance v0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/media/browse/MediaBrowser$MediaServiceConnection$1;-><init>(Landroid/media/browse/MediaBrowser$MediaServiceConnection;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    invoke-direct {p0, v0}, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->postOrRun(Ljava/lang/Runnable;)V

    .line 942
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 992
    new-instance v0, Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;

    invoke-direct {v0, p0, p1}, Landroid/media/browse/MediaBrowser$MediaServiceConnection$2;-><init>(Landroid/media/browse/MediaBrowser$MediaServiceConnection;Landroid/content/ComponentName;)V

    invoke-direct {p0, v0}, Landroid/media/browse/MediaBrowser$MediaServiceConnection;->postOrRun(Ljava/lang/Runnable;)V

    .line 991
    return-void
.end method
