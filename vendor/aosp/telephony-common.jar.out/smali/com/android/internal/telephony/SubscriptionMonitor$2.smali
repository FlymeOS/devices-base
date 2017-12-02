.class Lcom/android/internal/telephony/SubscriptionMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "SubscriptionMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionMonitor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/SubscriptionMonitor;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v10, -0x1

    .line 147
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get5(Lcom/android/internal/telephony/SubscriptionMonitor;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    .line 148
    .local v1, "newDefaultDataSubId":I
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get3(Lcom/android/internal/telephony/SubscriptionMonitor;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 149
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get2(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    move-result v6

    if-eq v6, v1, :cond_2

    .line 150
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Default changed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v9}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get2(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/internal/telephony/SubscriptionMonitor;->-wrap1(Lcom/android/internal/telephony/SubscriptionMonitor;Ljava/lang/String;)V

    .line 151
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get2(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    move-result v3

    .line 152
    .local v3, "oldDefaultDataSubId":I
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get0(Lcom/android/internal/telephony/SubscriptionMonitor;)I

    move-result v2

    .line 153
    .local v2, "oldDefaultDataPhoneId":I
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v6, v1}, Lcom/android/internal/telephony/SubscriptionMonitor;->-set1(Lcom/android/internal/telephony/SubscriptionMonitor;I)I

    .line 156
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get5(Lcom/android/internal/telephony/SubscriptionMonitor;)Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v6

    const/4 v8, -0x1

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    .line 157
    .local v0, "newDefaultDataPhoneId":I
    if-eq v1, v10, :cond_0

    .line 158
    const/4 v4, 0x0

    .local v4, "phoneId":I
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get4(Lcom/android/internal/telephony/SubscriptionMonitor;)[I

    move-result-object v6

    array-length v6, v6

    if-ge v4, v6, :cond_0

    .line 159
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get4(Lcom/android/internal/telephony/SubscriptionMonitor;)[I

    move-result-object v6

    aget v6, v6, v4

    if-ne v6, v1, :cond_3

    .line 160
    move v0, v4

    .line 161
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "newDefaultDataPhoneId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/internal/telephony/SubscriptionMonitor;->-wrap1(Lcom/android/internal/telephony/SubscriptionMonitor;Ljava/lang/String;)V

    .line 166
    .end local v4    # "phoneId":I
    :cond_0
    if-eq v0, v2, :cond_2

    .line 167
    iget-object v8, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Default phoneId changed "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v9, "->"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 168
    const-string/jumbo v9, ", "

    .line 167
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 169
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v6, v2}, Lcom/android/internal/telephony/SubscriptionMonitor;->-wrap0(Lcom/android/internal/telephony/SubscriptionMonitor;I)Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v5

    .line 167
    :goto_1
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 172
    const-string/jumbo v9, ","

    .line 167
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 172
    iget-object v9, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v9, v0}, Lcom/android/internal/telephony/SubscriptionMonitor;->-wrap0(Lcom/android/internal/telephony/SubscriptionMonitor;I)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 167
    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 175
    const-string/jumbo v6, " registrants"

    .line 167
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/android/internal/telephony/SubscriptionMonitor;->-wrap1(Lcom/android/internal/telephony/SubscriptionMonitor;Ljava/lang/String;)V

    .line 176
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v5, v0}, Lcom/android/internal/telephony/SubscriptionMonitor;->-set0(Lcom/android/internal/telephony/SubscriptionMonitor;I)I

    .line 177
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v5, v2}, Lcom/android/internal/telephony/SubscriptionMonitor;->-wrap0(Lcom/android/internal/telephony/SubscriptionMonitor;I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 178
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v5}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get1(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 181
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v5, v0}, Lcom/android/internal/telephony/SubscriptionMonitor;->-wrap0(Lcom/android/internal/telephony/SubscriptionMonitor;I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 182
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v5}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get1(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/os/RegistrantList;->notifyRegistrants()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "newDefaultDataPhoneId":I
    .end local v2    # "oldDefaultDataPhoneId":I
    .end local v3    # "oldDefaultDataSubId":I
    :cond_2
    monitor-exit v7

    .line 146
    return-void

    .line 158
    .restart local v0    # "newDefaultDataPhoneId":I
    .restart local v2    # "oldDefaultDataPhoneId":I
    .restart local v3    # "oldDefaultDataSubId":I
    .restart local v4    # "phoneId":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 171
    .end local v4    # "phoneId":I
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v6}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get1(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v6}, Landroid/os/RegistrantList;->size()I

    move-result v6

    goto :goto_1

    .line 174
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/SubscriptionMonitor$2;->this$0:Lcom/android/internal/telephony/SubscriptionMonitor;

    invoke-static {v5}, Lcom/android/internal/telephony/SubscriptionMonitor;->-get1(Lcom/android/internal/telephony/SubscriptionMonitor;)[Landroid/os/RegistrantList;

    move-result-object v5

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/os/RegistrantList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    goto :goto_2

    .line 148
    .end local v0    # "newDefaultDataPhoneId":I
    .end local v2    # "oldDefaultDataPhoneId":I
    .end local v3    # "oldDefaultDataSubId":I
    :catchall_0
    move-exception v5

    monitor-exit v7

    throw v5
.end method
