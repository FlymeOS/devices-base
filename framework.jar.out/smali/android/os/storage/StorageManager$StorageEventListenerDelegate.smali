.class Landroid/os/storage/StorageManager$StorageEventListenerDelegate;
.super Landroid/os/storage/IMountServiceListener$Stub;
.source "StorageManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StorageEventListenerDelegate"
.end annotation


# static fields
.field private static final MSG_DISK_DESTROYED:I = 0x6

.field private static final MSG_DISK_SCANNED:I = 0x5

.field private static final MSG_STORAGE_STATE_CHANGED:I = 0x1

.field private static final MSG_VOLUME_FORGOTTEN:I = 0x4

.field private static final MSG_VOLUME_RECORD_CHANGED:I = 0x3

.field private static final MSG_VOLUME_STATE_CHANGED:I = 0x2


# instance fields
.field final mCallback:Landroid/os/storage/StorageEventListener;

.field final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/storage/StorageEventListener;Landroid/os/Looper;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/storage/StorageEventListener;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 166
    invoke-direct {p0}, Landroid/os/storage/IMountServiceListener$Stub;-><init>()V

    .line 167
    iput-object p1, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageEventListener;

    .line 168
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 166
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 173
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 174
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 201
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 202
    const/4 v1, 0x0

    return v1

    .line 176
    :pswitch_0
    iget-object v4, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageEventListener;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 177
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 176
    invoke-virtual {v4, v1, v2, v3}, Landroid/os/storage/StorageEventListener;->onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 179
    return v5

    .line 181
    :pswitch_1
    iget-object v2, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageEventListener;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/os/storage/VolumeInfo;

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/storage/StorageEventListener;->onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V

    .line 182
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 183
    return v5

    .line 185
    :pswitch_2
    iget-object v2, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageEventListener;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/os/storage/VolumeRecord;

    invoke-virtual {v2, v1}, Landroid/os/storage/StorageEventListener;->onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V

    .line 186
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 187
    return v5

    .line 189
    :pswitch_3
    iget-object v2, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageEventListener;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/os/storage/StorageEventListener;->onVolumeForgotten(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 191
    return v5

    .line 193
    :pswitch_4
    iget-object v2, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageEventListener;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/os/storage/DiskInfo;

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    invoke-virtual {v2, v1, v3}, Landroid/os/storage/StorageEventListener;->onDiskScanned(Landroid/os/storage/DiskInfo;I)V

    .line 194
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 195
    return v5

    .line 197
    :pswitch_5
    iget-object v2, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mCallback:Landroid/os/storage/StorageEventListener;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/os/storage/DiskInfo;

    invoke-virtual {v2, v1}, Landroid/os/storage/StorageEventListener;->onDiskDestroyed(Landroid/os/storage/DiskInfo;)V

    .line 198
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 199
    return v5

    .line 174
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onDiskDestroyed(Landroid/os/storage/DiskInfo;)V
    .locals 3
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 252
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 253
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 254
    iget-object v1, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 251
    return-void
.end method

.method public onDiskScanned(Landroid/os/storage/DiskInfo;I)V
    .locals 3
    .param p1, "disk"    # Landroid/os/storage/DiskInfo;
    .param p2, "volumeCount"    # I

    .prologue
    .line 244
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 245
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 246
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 247
    iget-object v1, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 243
    return-void
.end method

.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    .line 212
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 213
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 214
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 215
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 216
    iget-object v1, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 211
    return-void
.end method

.method public onUsbMassStorageConnectionChanged(Z)V
    .locals 0
    .param p1, "connected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 206
    return-void
.end method

.method public onVolumeForgotten(Ljava/lang/String;)V
    .locals 3
    .param p1, "fsUuid"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 238
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 239
    iget-object v1, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 236
    return-void
.end method

.method public onVolumeRecordChanged(Landroid/os/storage/VolumeRecord;)V
    .locals 3
    .param p1, "rec"    # Landroid/os/storage/VolumeRecord;

    .prologue
    .line 230
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 231
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 232
    iget-object v1, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 229
    return-void
.end method

.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 3
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .prologue
    .line 221
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 222
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 223
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 224
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 225
    iget-object v1, p0, Landroid/os/storage/StorageManager$StorageEventListenerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 220
    return-void
.end method
