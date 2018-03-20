.class Lcom/android/server/notification/MzDoNotDisturbHelper$3;
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
    .line 152
    iput-object p1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$3;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 154
    invoke-static {}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-get1()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$3;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v1}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-get5(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "zen_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 156
    .local v0, "zenMode":I
    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$3;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v1}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-get7(Lcom/android/server/notification/MzDoNotDisturbHelper;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 157
    return-void

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$3;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v1, v0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-set2(Lcom/android/server/notification/MzDoNotDisturbHelper;I)I

    .line 160
    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$3;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v1}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-get3(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$3;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v2}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-get6(Lcom/android/server/notification/MzDoNotDisturbHelper;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 161
    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$3;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v1}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-get3(Lcom/android/server/notification/MzDoNotDisturbHelper;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$3;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v2}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-get6(Lcom/android/server/notification/MzDoNotDisturbHelper;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 162
    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$3;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v1}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-wrap1(Lcom/android/server/notification/MzDoNotDisturbHelper;)V

    .line 153
    .end local v0    # "zenMode":I
    :cond_1
    :goto_0
    return-void

    .line 163
    :cond_2
    invoke-static {}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-get0()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$3;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v1}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-wrap1(Lcom/android/server/notification/MzDoNotDisturbHelper;)V

    goto :goto_0
.end method
