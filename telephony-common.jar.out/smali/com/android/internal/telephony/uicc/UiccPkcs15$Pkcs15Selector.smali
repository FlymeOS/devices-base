.class Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;
.super Landroid/os/Handler;
.source "UiccPkcs15.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccPkcs15;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Pkcs15Selector"
.end annotation


# static fields
.field private static final EVENT_OPEN_LOGICAL_CHANNEL_DONE:I = 0xc9

.field private static final PKCS15_AID:Ljava/lang/String; = "A000000063504B43532D3135"


# instance fields
.field private mCallback:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccPkcs15;Landroid/os/Message;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/UiccPkcs15;
    .param p2, "callBack"    # Landroid/os/Message;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 146
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;->mCallback:Landroid/os/Message;

    .line 147
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-get1(Lcom/android/internal/telephony/uicc/UiccPkcs15;)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    const-string/jumbo v1, "A000000063504B43532D3135"

    .line 148
    const/16 v2, 0xc9

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 147
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->iccOpenLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    .line 145
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-wrap0(Ljava/lang/String;)V

    .line 156
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown event"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-wrap0(Ljava/lang/String;)V

    .line 152
    :goto_0
    return-void

    .line 158
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 159
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 160
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-static {v2, v1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-set0(Lcom/android/internal/telephony/uicc/UiccPkcs15;I)I

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mChannelId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;->this$0:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-get0(Lcom/android/internal/telephony/uicc/UiccPkcs15;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-wrap0(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;->mCallback:Landroid/os/Message;

    invoke-static {v1, v4, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 168
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;->mCallback:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 164
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->-wrap0(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;->mCallback:Landroid/os/Message;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v4, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_1

    .line 156
    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
    .end packed-switch
.end method
