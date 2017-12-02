.class Lcom/android/internal/app/AlertController$1;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AlertController;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v1}, Lcom/android/internal/app/AlertController;->-get4(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v1}, Lcom/android/internal/app/AlertController;->-get5(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v1}, Lcom/android/internal/app/AlertController;->-get5(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 139
    :goto_0
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v1}, Lcom/android/internal/app/AlertController;->-get7(Lcom/android/internal/app/AlertController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v2}, Lcom/android/internal/app/AlertController;->-get6(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 127
    return-void

    .line 131
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v1}, Lcom/android/internal/app/AlertController;->-get0(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v1}, Lcom/android/internal/app/AlertController;->-get1(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v1}, Lcom/android/internal/app/AlertController;->-get1(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .local v0, "m":Landroid/os/Message;
    goto :goto_0

    .line 133
    .end local v0    # "m":Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v1}, Lcom/android/internal/app/AlertController;->-get2(Lcom/android/internal/app/AlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v1}, Lcom/android/internal/app/AlertController;->-get3(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 134
    iget-object v1, p0, Lcom/android/internal/app/AlertController$1;->this$0:Lcom/android/internal/app/AlertController;

    invoke-static {v1}, Lcom/android/internal/app/AlertController;->-get3(Lcom/android/internal/app/AlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "m":Landroid/os/Message;
    goto :goto_0

    .line 136
    .end local v0    # "m":Landroid/os/Message;
    :cond_3
    const/4 v0, 0x0

    .local v0, "m":Landroid/os/Message;
    goto :goto_0
.end method
