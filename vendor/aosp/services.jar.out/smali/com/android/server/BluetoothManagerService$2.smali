.class Lcom/android/server/BluetoothManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BluetoothManagerService;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 184
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 186
    const-string/jumbo v4, "android.bluetooth.adapter.extra.LOCAL_NAME"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 188
    .local v2, "newName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 189
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4, v2, v5}, Lcom/android/server/BluetoothManagerService;->-wrap15(Lcom/android/server/BluetoothManagerService;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .end local v2    # "newName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    const-string/jumbo v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 192
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->-get15(Lcom/android/server/BluetoothManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object v5

    monitor-enter v5

    .line 193
    :try_start_0
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->-wrap1(Lcom/android/server/BluetoothManagerService;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 194
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->-wrap0(Lcom/android/server/BluetoothManagerService;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 195
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v6, 0x2

    invoke-static {v4, v6}, Lcom/android/server/BluetoothManagerService;->-wrap9(Lcom/android/server/BluetoothManagerService;I)V

    .line 201
    :cond_2
    :goto_1
    const/16 v3, 0xa

    .line 202
    .local v3, "st":I
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_3

    .line 204
    :try_start_1
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v4

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->getState()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 209
    :cond_3
    :goto_2
    :try_start_2
    const-string/jumbo v4, "BluetoothManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "state"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->-wrap0(Lcom/android/server/BluetoothManagerService;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 213
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 214
    const/4 v4, 0x0

    :try_start_3
    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->-set1(I)I

    .line 215
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v4, v4, Lcom/android/server/BluetoothManagerService;->mBleApps:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 217
    const/16 v4, 0xf

    if-ne v3, v4, :cond_6

    .line 220
    :try_start_5
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 221
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->-get2(Lcom/android/server/BluetoothManagerService;)Landroid/bluetooth/IBluetooth;

    move-result-object v4

    invoke-interface {v4}, Landroid/bluetooth/IBluetooth;->onBrEdrDown()V

    .line 222
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/server/BluetoothManagerService;->-set5(Lcom/android/server/BluetoothManagerService;Z)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    :goto_3
    monitor-exit v5

    goto/16 :goto_0

    .line 197
    .end local v3    # "st":I
    :cond_5
    :try_start_6
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lcom/android/server/BluetoothManagerService;->-wrap9(Lcom/android/server/BluetoothManagerService;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 192
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 205
    .restart local v3    # "st":I
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string/jumbo v4, "BluetoothManagerService"

    const-string/jumbo v6, "Unable to call getState"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 213
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 224
    :catch_1
    move-exception v1

    .line 225
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "BluetoothManagerService"

    const-string/jumbo v6, "Unable to call onBrEdrDown"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 227
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_6
    const/16 v4, 0xc

    if-ne v3, v4, :cond_4

    .line 229
    const-string/jumbo v4, "BluetoothManagerService"

    const-string/jumbo v6, "Calling disable"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->-wrap13(Lcom/android/server/BluetoothManagerService;)V

    goto :goto_3

    .line 232
    :cond_7
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v4}, Lcom/android/server/BluetoothManagerService;->-get9(Lcom/android/server/BluetoothManagerService;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 234
    const-string/jumbo v4, "BluetoothManagerService"

    const-string/jumbo v6, "Calling enable"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v4, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    iget-object v6, p0, Lcom/android/server/BluetoothManagerService$2;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v6}, Lcom/android/server/BluetoothManagerService;->-get14(Lcom/android/server/BluetoothManagerService;)Z

    move-result v6

    invoke-static {v4, v6}, Lcom/android/server/BluetoothManagerService;->-wrap14(Lcom/android/server/BluetoothManagerService;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3
.end method
