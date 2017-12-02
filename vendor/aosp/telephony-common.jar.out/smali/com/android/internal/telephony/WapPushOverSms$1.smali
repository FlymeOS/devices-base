.class Lcom/android/internal/telephony/WapPushOverSms$1;
.super Landroid/content/BroadcastReceiver;
.source "WapPushOverSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/WapPushOverSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/WapPushOverSms;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/WapPushOverSms;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/WapPushOverSms;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms$1;->this$0:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 87
    const-string/jumbo v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received broadcast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const-string/jumbo v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    new-instance v0, Lcom/android/internal/telephony/WapPushOverSms$BindServiceThread;

    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms$1;->this$0:Lcom/android/internal/telephony/WapPushOverSms;

    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms$1;->this$0:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-static {v2}, Lcom/android/internal/telephony/WapPushOverSms;->-get0(Lcom/android/internal/telephony/WapPushOverSms;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/WapPushOverSms$BindServiceThread;-><init>(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;Lcom/android/internal/telephony/WapPushOverSms$BindServiceThread;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 86
    :cond_0
    return-void
.end method
