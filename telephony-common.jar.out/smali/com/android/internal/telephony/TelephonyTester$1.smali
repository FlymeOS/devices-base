.class Lcom/android/internal/telephony/TelephonyTester$1;
.super Landroid/content/BroadcastReceiver;
.source "TelephonyTester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyTester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/TelephonyTester;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/TelephonyTester;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/TelephonyTester;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "action":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sIntentReceiver.onReceive: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyTester;->-wrap3(Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyTester;->-get0(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getActionDetached()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    const-string/jumbo v2, "simulate detaching"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyTester;->-wrap3(Ljava/lang/String;)V

    .line 100
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyTester;->-get0(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 94
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyTester;->-get0(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getActionAttached()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    const-string/jumbo v2, "simulate attaching"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyTester;->-wrap3(Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyTester;->-get0(Lcom/android/internal/telephony/TelephonyTester;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Landroid/os/BadParcelableException;
    const-string/jumbo v2, "TelephonyTester"

    invoke-static {v2, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 104
    .end local v1    # "e":Landroid/os/BadParcelableException;
    :cond_1
    :try_start_1
    const-string/jumbo v2, "com.android.internal.telephony.TestConferenceEventPackage"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 105
    const-string/jumbo v2, "inject simulated conference event package"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyTester;->-wrap3(Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    .line 107
    const-string/jumbo v3, "filename"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-static {v2, p1, v3}, Lcom/android/internal/telephony/TelephonyTester;->-wrap1(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_2
    const-string/jumbo v2, "com.android.internal.telephony.TestDialogEventPackage"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 109
    const-string/jumbo v2, "handle test dialog event package intent"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyTester;->-wrap3(Ljava/lang/String;)V

    .line 110
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-static {v2, p2}, Lcom/android/internal/telephony/TelephonyTester;->-wrap2(Lcom/android/internal/telephony/TelephonyTester;Landroid/content/Intent;)V

    goto :goto_0

    .line 111
    :cond_3
    const-string/jumbo v2, "com.android.internal.telephony.TestHandoverFail"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 112
    const-string/jumbo v2, "handle handover fail test intent"

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyTester;->-wrap3(Ljava/lang/String;)V

    .line 113
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyTester$1;->this$0:Lcom/android/internal/telephony/TelephonyTester;

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyTester;->-wrap0(Lcom/android/internal/telephony/TelephonyTester;)V

    goto :goto_0

    .line 115
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive: unknown action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyTester;->-wrap3(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
