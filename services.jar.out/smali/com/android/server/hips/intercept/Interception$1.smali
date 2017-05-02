.class final Lcom/android/server/hips/intercept/Interception$1;
.super Landroid/os/Handler;
.source "Interception.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hips/intercept/Interception;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 94
    :pswitch_0
    invoke-static {}, Lcom/android/server/hips/intercept/Interception;->-get2()I

    move-result v0

    if-lez v0, :cond_0

    .line 95
    const-string/jumbo v0, "Interception"

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage, the white list active time for sleep: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 97
    invoke-static {}, Lcom/android/server/hips/intercept/Interception;->-get2()I

    move-result v2

    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-static {}, Lcom/android/server/hips/intercept/Interception;->-get2()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lcom/android/server/hips/intercept/Interception;->-set2(I)I

    .line 99
    invoke-static {}, Lcom/android/server/hips/intercept/Interception;->-get0()Landroid/os/Handler;

    move-result-object v0

    .line 100
    const-wide/16 v2, 0x3e8

    .line 99
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 102
    :cond_0
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/server/hips/intercept/Interception;->-set2(I)I

    .line 103
    invoke-static {}, Lcom/android/server/hips/intercept/Interception;->-get3()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 104
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/hips/intercept/Interception;->-set1(Z)Z

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
