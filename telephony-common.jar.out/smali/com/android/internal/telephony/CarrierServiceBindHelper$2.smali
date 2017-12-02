.class Lcom/android/internal/telephony/CarrierServiceBindHelper$2;
.super Landroid/os/Handler;
.source "CarrierServiceBindHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServiceBindHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/CarrierServiceBindHelper;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$2;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mHandler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    .line 80
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 76
    :goto_0
    return-void

    .line 82
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;

    .line 83
    .local v0, "binding":Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Rebinding if necessary for phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->rebind()V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
