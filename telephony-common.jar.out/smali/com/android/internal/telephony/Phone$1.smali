.class Lcom/android/internal/telephony/Phone$1;
.super Landroid/content/BroadcastReceiver;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    .line 98
    const-string/jumbo v3, "Phone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mImsIntentReceiver: action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string/jumbo v3, "android:phone_id"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 100
    const-string/jumbo v3, "android:phone_id"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 102
    .local v0, "extraPhoneId":I
    const-string/jumbo v3, "Phone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mImsIntentReceiver: extraPhoneId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-eq v0, v6, :cond_0

    .line 104
    iget-object v3, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    if-eq v0, v3, :cond_1

    .line 105
    :cond_0
    return-void

    .line 109
    .end local v0    # "extraPhoneId":I
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/Phone;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v4

    .line 110
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "com.android.ims.IMS_SERVICE_UP"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 111
    iget-object v3, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/android/internal/telephony/Phone;->-set0(Lcom/android/internal/telephony/Phone;Z)Z

    .line 112
    iget-object v3, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    invoke-static {v3}, Lcom/android/internal/telephony/Phone;->-wrap0(Lcom/android/internal/telephony/Phone;)V

    .line 113
    iget-object v3, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    iget-object v3, v3, Lcom/android/internal/telephony/Phone;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    iget v5, v5, Lcom/android/internal/telephony/Phone;->mPhoneId:I

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Lcom/android/ims/ImsManager;->updateImsServiceConfig(Landroid/content/Context;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v4

    .line 97
    return-void

    .line 114
    :cond_3
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 115
    iget-object v3, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/internal/telephony/Phone;->-set0(Lcom/android/internal/telephony/Phone;Z)Z

    .line 116
    iget-object v3, p0, Lcom/android/internal/telephony/Phone$1;->this$0:Lcom/android/internal/telephony/Phone;

    invoke-static {v3}, Lcom/android/internal/telephony/Phone;->-wrap0(Lcom/android/internal/telephony/Phone;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 117
    :cond_4
    :try_start_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "com.android.intent.action.IMS_CONFIG_CHANGED"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 118
    const-string/jumbo v3, "item"

    const/4 v5, -0x1

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 119
    .local v1, "item":I
    const-string/jumbo v3, "value"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, "value":Ljava/lang/String;
    invoke-static {p1, v1, v2}, Lcom/android/ims/ImsManager;->onProvisionedValueChanged(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
