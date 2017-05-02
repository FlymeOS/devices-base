.class Lcom/android/server/hips/intercept/UsbInstallInterception$1;
.super Landroid/os/Handler;
.source "UsbInstallInterception.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hips/intercept/UsbInstallInterception;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hips/intercept/UsbInstallInterception;


# direct methods
.method constructor <init>(Lcom/android/server/hips/intercept/UsbInstallInterception;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hips/intercept/UsbInstallInterception;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/server/hips/intercept/UsbInstallInterception$1;->this$0:Lcom/android/server/hips/intercept/UsbInstallInterception;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 89
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 87
    :goto_0
    return-void

    .line 91
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 92
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/server/hips/intercept/UsbInstallInterception$1;->this$0:Lcom/android/server/hips/intercept/UsbInstallInterception;

    const-string/jumbo v2, "pkgName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/hips/intercept/UsbInstallInterception;->-set1(Lcom/android/server/hips/intercept/UsbInstallInterception;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    iget-object v1, p0, Lcom/android/server/hips/intercept/UsbInstallInterception$1;->this$0:Lcom/android/server/hips/intercept/UsbInstallInterception;

    const-string/jumbo v2, "apkName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/hips/intercept/UsbInstallInterception;->-set0(Lcom/android/server/hips/intercept/UsbInstallInterception;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/android/server/hips/intercept/UsbInstallInterception$1;->this$0:Lcom/android/server/hips/intercept/UsbInstallInterception;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/hips/intercept/UsbInstallInterception;->-set2(Lcom/android/server/hips/intercept/UsbInstallInterception;Z)Z

    goto :goto_0

    .line 100
    .end local v0    # "bundle":Landroid/os/Bundle;
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/hips/intercept/UsbInstallInterception$1;->this$0:Lcom/android/server/hips/intercept/UsbInstallInterception;

    iget-object v2, p0, Lcom/android/server/hips/intercept/UsbInstallInterception$1;->this$0:Lcom/android/server/hips/intercept/UsbInstallInterception;

    invoke-static {v2}, Lcom/android/server/hips/intercept/UsbInstallInterception;->-get4(Lcom/android/server/hips/intercept/UsbInstallInterception;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/hips/intercept/UsbInstallInterception$1;->this$0:Lcom/android/server/hips/intercept/UsbInstallInterception;

    invoke-static {v3}, Lcom/android/server/hips/intercept/UsbInstallInterception;->-get2(Lcom/android/server/hips/intercept/UsbInstallInterception;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception$1;->this$0:Lcom/android/server/hips/intercept/UsbInstallInterception;

    invoke-static {v4}, Lcom/android/server/hips/intercept/UsbInstallInterception;->-get1(Lcom/android/server/hips/intercept/UsbInstallInterception;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 101
    iget-object v5, p0, Lcom/android/server/hips/intercept/UsbInstallInterception$1;->this$0:Lcom/android/server/hips/intercept/UsbInstallInterception;

    invoke-static {v5}, Lcom/android/server/hips/intercept/UsbInstallInterception;->-get0(Lcom/android/server/hips/intercept/UsbInstallInterception;)Landroid/content/Context;

    move-result-object v5

    .line 100
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/hips/intercept/UsbInstallInterception;->-wrap0(Lcom/android/server/hips/intercept/UsbInstallInterception;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
