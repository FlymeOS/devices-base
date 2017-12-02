.class Landroid/bluetooth/BluetoothHeadset$3;
.super Landroid/os/Handler;
.source "BluetoothHeadset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothHeadset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothHeadset;


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothHeadset;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothHeadset;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1074
    iput-object p1, p0, Landroid/bluetooth/BluetoothHeadset$3;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 1077
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1076
    :cond_0
    :goto_0
    return-void

    .line 1079
    :pswitch_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$3;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->-get3(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$3;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->-get3(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    .line 1081
    iget-object v1, p0, Landroid/bluetooth/BluetoothHeadset$3;->this$0:Landroid/bluetooth/BluetoothHeadset;

    .line 1080
    invoke-interface {v0, v2, v1}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V

    goto :goto_0

    .line 1086
    :pswitch_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$3;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->-get3(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Landroid/bluetooth/BluetoothHeadset$3;->this$0:Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0}, Landroid/bluetooth/BluetoothHeadset;->-get3(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/bluetooth/BluetoothProfile$ServiceListener;->onServiceDisconnected(I)V

    goto :goto_0

    .line 1077
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
