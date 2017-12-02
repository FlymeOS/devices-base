.class Landroid/app/EphemeralResolverService$1;
.super Landroid/app/IEphemeralResolver$Stub;
.source "EphemeralResolverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/EphemeralResolverService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/EphemeralResolverService;


# direct methods
.method constructor <init>(Landroid/app/EphemeralResolverService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/EphemeralResolverService;

    .prologue
    .line 64
    iput-object p1, p0, Landroid/app/EphemeralResolverService$1;->this$0:Landroid/app/EphemeralResolverService;

    invoke-direct {p0}, Landroid/app/IEphemeralResolver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getEphemeralResolveInfoList(Landroid/os/IRemoteCallback;[III)V
    .locals 4
    .param p1, "callback"    # Landroid/os/IRemoteCallback;
    .param p2, "digestPrefix"    # [I
    .param p3, "prefixMask"    # I
    .param p4, "sequence"    # I

    .prologue
    .line 68
    iget-object v2, p0, Landroid/app/EphemeralResolverService$1;->this$0:Landroid/app/EphemeralResolverService;

    invoke-static {v2}, Landroid/app/EphemeralResolverService;->-get0(Landroid/app/EphemeralResolverService;)Landroid/os/Handler;

    move-result-object v2

    .line 69
    const/4 v3, 0x1

    .line 68
    invoke-virtual {v2, v3, p3, p4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 70
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "android.app.PREFIX"

    invoke-virtual {v0, v2, p2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 72
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 67
    return-void
.end method
