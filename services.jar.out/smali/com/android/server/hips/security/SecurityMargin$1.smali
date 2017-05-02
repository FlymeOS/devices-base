.class Lcom/android/server/hips/security/SecurityMargin$1;
.super Landroid/os/Handler;
.source "SecurityMargin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hips/security/SecurityMargin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hips/security/SecurityMargin;


# direct methods
.method constructor <init>(Lcom/android/server/hips/security/SecurityMargin;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hips/security/SecurityMargin;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/server/hips/security/SecurityMargin$1;->this$0:Lcom/android/server/hips/security/SecurityMargin;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v2, 0x0

    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 119
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin$1;->this$0:Lcom/android/server/hips/security/SecurityMargin;

    invoke-static {v0}, Lcom/android/server/hips/security/SecurityMargin;->-get3(Lcom/android/server/hips/security/SecurityMargin;)I

    move-result v0

    if-lez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin$1;->this$0:Lcom/android/server/hips/security/SecurityMargin;

    invoke-static {v0}, Lcom/android/server/hips/security/SecurityMargin;->-get3(Lcom/android/server/hips/security/SecurityMargin;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/android/server/hips/security/SecurityMargin;->-set1(Lcom/android/server/hips/security/SecurityMargin;I)I

    .line 121
    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin$1;->this$0:Lcom/android/server/hips/security/SecurityMargin;

    invoke-static {v0}, Lcom/android/server/hips/security/SecurityMargin;->-get1(Lcom/android/server/hips/security/SecurityMargin;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 123
    :cond_0
    const-string/jumbo v0, "SecurityMargin"

    .line 124
    const-string/jumbo v1, "handleMessage, exit from the SMS protection margin."

    .line 123
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin$1;->this$0:Lcom/android/server/hips/security/SecurityMargin;

    invoke-static {v0}, Lcom/android/server/hips/security/SecurityMargin;->-get2(Lcom/android/server/hips/security/SecurityMargin;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin$1;->this$0:Lcom/android/server/hips/security/SecurityMargin;

    invoke-static {v0}, Lcom/android/server/hips/security/SecurityMargin;->-get2(Lcom/android/server/hips/security/SecurityMargin;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin$1;->this$0:Lcom/android/server/hips/security/SecurityMargin;

    invoke-static {v0}, Lcom/android/server/hips/security/SecurityMargin;->-get2(Lcom/android/server/hips/security/SecurityMargin;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/hips/utils/HipsUtils;->changeDefaultSMS(Ljava/lang/String;)V

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin$1;->this$0:Lcom/android/server/hips/security/SecurityMargin;

    invoke-static {v0, v2}, Lcom/android/server/hips/security/SecurityMargin;->-set0(Lcom/android/server/hips/security/SecurityMargin;Z)Z

    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin$1;->this$0:Lcom/android/server/hips/security/SecurityMargin;

    invoke-static {v0}, Lcom/android/server/hips/security/SecurityMargin;->-get4(Lcom/android/server/hips/security/SecurityMargin;)I

    move-result v0

    if-lez v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin$1;->this$0:Lcom/android/server/hips/security/SecurityMargin;

    invoke-static {v0}, Lcom/android/server/hips/security/SecurityMargin;->-get4(Lcom/android/server/hips/security/SecurityMargin;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/android/server/hips/security/SecurityMargin;->-set2(Lcom/android/server/hips/security/SecurityMargin;I)I

    .line 136
    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin$1;->this$0:Lcom/android/server/hips/security/SecurityMargin;

    invoke-static {v0}, Lcom/android/server/hips/security/SecurityMargin;->-get1(Lcom/android/server/hips/security/SecurityMargin;)Landroid/os/Handler;

    move-result-object v0

    .line 137
    const/4 v1, 0x1

    .line 136
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin$1;->this$0:Lcom/android/server/hips/security/SecurityMargin;

    iget-object v1, p0, Lcom/android/server/hips/security/SecurityMargin$1;->this$0:Lcom/android/server/hips/security/SecurityMargin;

    invoke-static {v1}, Lcom/android/server/hips/security/SecurityMargin;->-get0(Lcom/android/server/hips/security/SecurityMargin;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/server/hips/security/SecurityMargin;->-wrap0(Lcom/android/server/hips/security/SecurityMargin;Ljava/lang/String;Z)V

    .line 140
    const-string/jumbo v0, "SecurityMargin"

    const-string/jumbo v1, "handleMessage, hide the status bar corlor."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
