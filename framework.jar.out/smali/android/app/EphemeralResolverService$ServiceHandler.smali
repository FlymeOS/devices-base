.class final Landroid/app/EphemeralResolverService$ServiceHandler;
.super Landroid/os/Handler;
.source "EphemeralResolverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/EphemeralResolverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# static fields
.field public static final MSG_GET_EPHEMERAL_RESOLVE_INFO:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/app/EphemeralResolverService;


# direct methods
.method public constructor <init>(Landroid/app/EphemeralResolverService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Landroid/app/EphemeralResolverService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 81
    iput-object p1, p0, Landroid/app/EphemeralResolverService$ServiceHandler;->this$0:Landroid/app/EphemeralResolverService;

    .line 82
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 81
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    .line 89
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 105
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 91
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IRemoteCallback;

    .line 92
    .local v1, "callback":Landroid/os/IRemoteCallback;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "android.app.PREFIX"

    invoke-virtual {v6, v7}, Landroid/os/BaseBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 94
    .local v3, "digestPrefix":[I
    iget-object v6, p0, Landroid/app/EphemeralResolverService$ServiceHandler;->this$0:Landroid/app/EphemeralResolverService;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v3, v7}, Landroid/app/EphemeralResolverService;->onEphemeralResolveInfoList([II)Ljava/util/List;

    move-result-object v5

    .line 95
    .local v5, "resolveInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/EphemeralResolveInfo;>;"
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v2, "data":Landroid/os/Bundle;
    const-string/jumbo v6, "android.app.extra.SEQUENCE"

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 97
    const-string/jumbo v6, "android.app.extra.RESOLVE_INFO"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 99
    :try_start_0
    invoke-interface {v1, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v4

    .local v4, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
