.class Lcom/android/server/connectivity/Tethering$1;
.super Ljava/lang/Object;
.source "Tethering.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Tethering;->setBluetoothTethering(ZLandroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;

.field final synthetic val$adapter:Landroid/bluetooth/BluetoothAdapter;

.field final synthetic val$enable:Z

.field final synthetic val$receiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;ZLandroid/os/ResultReceiver;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/Tethering;
    .param p2, "val$enable"    # Z
    .param p3, "val$receiver"    # Landroid/os/ResultReceiver;
    .param p4, "val$adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    iput-boolean p2, p0, Lcom/android/server/connectivity/Tethering$1;->val$enable:Z

    iput-object p3, p0, Lcom/android/server/connectivity/Tethering$1;->val$receiver:Landroid/os/ResultReceiver;

    iput-object p4, p0, Lcom/android/server/connectivity/Tethering$1;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    move-object v1, p2

    .line 484
    check-cast v1, Landroid/bluetooth/BluetoothPan;

    iget-boolean v2, p0, Lcom/android/server/connectivity/Tethering$1;->val$enable:Z

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    move-object v1, p2

    .line 487
    check-cast v1, Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v1

    iget-boolean v2, p0, Lcom/android/server/connectivity/Tethering$1;->val$enable:Z

    if-ne v1, v2, :cond_1

    .line 488
    const/4 v0, 0x0

    .line 490
    .local v0, "result":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$1;->val$receiver:Landroid/os/ResultReceiver;

    invoke-static {v1, v2, v0}, Lcom/android/server/connectivity/Tethering;->-wrap6(Lcom/android/server/connectivity/Tethering;Landroid/os/ResultReceiver;I)V

    .line 491
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering$1;->val$enable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-wrap1(Lcom/android/server/connectivity/Tethering;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 492
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/server/connectivity/Tethering;->-wrap5(Lcom/android/server/connectivity/Tethering;I)V

    .line 494
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$1;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 483
    return-void

    .line 489
    .end local v0    # "result":I
    :cond_1
    const/4 v0, 0x5

    .restart local v0    # "result":I
    goto :goto_0
.end method

.method public onServiceDisconnected(I)V
    .locals 0
    .param p1, "profile"    # I

    .prologue
    .line 480
    return-void
.end method
