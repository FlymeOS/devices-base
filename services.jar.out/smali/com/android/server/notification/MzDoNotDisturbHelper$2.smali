.class Lcom/android/server/notification/MzDoNotDisturbHelper$2;
.super Landroid/database/ContentObserver;
.source "MzDoNotDisturbHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/MzDoNotDisturbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;


# direct methods
.method constructor <init>(Lcom/android/server/notification/MzDoNotDisturbHelper;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/MzDoNotDisturbHelper;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$2;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 91
    invoke-static {}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-get1()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$2;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v1}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-get3(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "zen_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 93
    .local v0, "zenMode":I
    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$2;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v1}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-get5(Lcom/android/server/notification/MzDoNotDisturbHelper;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 94
    return-void

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$2;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v1, v0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-set0(Lcom/android/server/notification/MzDoNotDisturbHelper;I)I

    .line 98
    const-string/jumbo v1, "ZenModeHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MzDoNotDisturbHelper onChange mZenMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$2;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v3}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-get5(Lcom/android/server/notification/MzDoNotDisturbHelper;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$2;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v1}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-get2(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$2;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v2}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-get4(Lcom/android/server/notification/MzDoNotDisturbHelper;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 101
    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$2;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v1}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-get2(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$2;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v2}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-get4(Lcom/android/server/notification/MzDoNotDisturbHelper;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$2;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v1}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-wrap0(Lcom/android/server/notification/MzDoNotDisturbHelper;)V

    .line 90
    .end local v0    # "zenMode":I
    :cond_1
    :goto_0
    return-void

    .line 103
    :cond_2
    invoke-static {}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-get0()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$2;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v1}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-wrap0(Lcom/android/server/notification/MzDoNotDisturbHelper;)V

    goto :goto_0
.end method
