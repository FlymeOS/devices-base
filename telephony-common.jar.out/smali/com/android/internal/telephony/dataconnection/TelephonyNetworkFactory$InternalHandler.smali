.class Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;
.super Landroid/os/Handler;
.source "TelephonyNetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    .line 128
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 127
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 133
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 132
    :goto_0
    return-void

    .line 135
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->-wrap0(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;)V

    goto :goto_0

    .line 139
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->-wrap4(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;)V

    goto :goto_0

    .line 143
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->-wrap1(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;)V

    goto :goto_0

    .line 147
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->-wrap2(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;Landroid/os/Message;)V

    goto :goto_0

    .line 151
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory$InternalHandler;->this$0:Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;->-wrap3(Lcom/android/internal/telephony/dataconnection/TelephonyNetworkFactory;Landroid/os/Message;)V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
