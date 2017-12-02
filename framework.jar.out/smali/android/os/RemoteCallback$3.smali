.class Landroid/os/RemoteCallback$3;
.super Ljava/lang/Object;
.source "RemoteCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/RemoteCallback;

.field final synthetic val$result:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/RemoteCallback;
    .param p2, "val$result"    # Landroid/os/Bundle;

    .prologue
    .line 66
    iput-object p1, p0, Landroid/os/RemoteCallback$3;->this$0:Landroid/os/RemoteCallback;

    iput-object p2, p0, Landroid/os/RemoteCallback$3;->val$result:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Landroid/os/RemoteCallback$3;->this$0:Landroid/os/RemoteCallback;

    invoke-static {v0}, Landroid/os/RemoteCallback;->-get0(Landroid/os/RemoteCallback;)Landroid/os/RemoteCallback$OnResultListener;

    move-result-object v0

    iget-object v1, p0, Landroid/os/RemoteCallback$3;->val$result:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Landroid/os/RemoteCallback$OnResultListener;->onResult(Landroid/os/Bundle;)V

    .line 68
    return-void
.end method
