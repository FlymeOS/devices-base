.class Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->onServiceConnected(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

.field final synthetic val$adapter:Landroid/widget/RemoteViewsAdapter;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Landroid/widget/RemoteViewsAdapter;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;
    .param p2, "val$adapter"    # Landroid/widget/RemoteViewsAdapter;

    .prologue
    .line 199
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->this$1:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    iput-object p2, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 202
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    invoke-static {v3}, Landroid/widget/RemoteViewsAdapter;->-get3(Landroid/widget/RemoteViewsAdapter;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    invoke-static {v3}, Landroid/widget/RemoteViewsAdapter;->-wrap2(Landroid/widget/RemoteViewsAdapter;)V

    .line 248
    :goto_0
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    invoke-static {v3}, Landroid/widget/RemoteViewsAdapter;->-wrap0(Landroid/widget/RemoteViewsAdapter;)V

    .line 249
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->this$1:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->-set0(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Z)Z

    .line 250
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->this$1:Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->-set1(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;Z)Z

    .line 201
    return-void

    .line 207
    :cond_0
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    invoke-static {v3}, Landroid/widget/RemoteViewsAdapter;->-get6(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection;->getRemoteViewsFactory()Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v2

    .line 209
    .local v2, "factory":Lcom/android/internal/widget/IRemoteViewsFactory;
    :try_start_0
    invoke-interface {v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->isCreated()Z

    move-result v3

    if-nez v3, :cond_1

    .line 212
    invoke-interface {v2}, Lcom/android/internal/widget/IRemoteViewsFactory;->onDataSetChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :cond_1
    :goto_1
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    invoke-static {v3}, Landroid/widget/RemoteViewsAdapter;->-wrap4(Landroid/widget/RemoteViewsAdapter;)V

    .line 231
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    invoke-static {v3}, Landroid/widget/RemoteViewsAdapter;->-get2(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;

    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;->val$adapter:Landroid/widget/RemoteViewsAdapter;

    invoke-direct {v4, p0, v5}, Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1$1;-><init>(Landroid/widget/RemoteViewsAdapter$RemoteViewsAdapterServiceConnection$1;Landroid/widget/RemoteViewsAdapter;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "RemoteViewsAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error notifying factory of data set changed in onServiceConnected(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 223
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 222
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 214
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 215
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "RemoteViewsAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error notifying factory of data set changed in onServiceConnected(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 216
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 215
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void
.end method
