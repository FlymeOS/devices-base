.class Lcom/android/server/policy/MzPhoneWindowManager$MzPolicyHandler;
.super Landroid/os/Handler;
.source "MzPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MzPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MzPolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MzPhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/MzPhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/MzPhoneWindowManager;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/server/policy/MzPhoneWindowManager$MzPolicyHandler;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/MzPhoneWindowManager;Lcom/android/server/policy/MzPhoneWindowManager$MzPolicyHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/MzPhoneWindowManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/MzPhoneWindowManager$MzPolicyHandler;-><init>(Lcom/android/server/policy/MzPhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 155
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 154
    :goto_0
    :pswitch_0
    return-void

    .line 157
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/policy/MzPhoneWindowManager$MzPolicyHandler;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    invoke-static {v1, v0}, Lcom/android/server/policy/MzPhoneWindowManager;->-wrap5(Lcom/android/server/policy/MzPhoneWindowManager;Landroid/view/KeyEvent;)V

    goto :goto_0

    .line 160
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager$MzPolicyHandler;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/MzPhoneWindowManager;->-wrap8(Lcom/android/server/policy/MzPhoneWindowManager;)V

    goto :goto_0

    .line 163
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager$MzPolicyHandler;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/MzPhoneWindowManager;->-wrap6(Lcom/android/server/policy/MzPhoneWindowManager;)V

    goto :goto_0

    .line 166
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/policy/MzPhoneWindowManager$MzPolicyHandler;->this$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/MzPhoneWindowManager;->-wrap4(Lcom/android/server/policy/MzPhoneWindowManager;)V

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
