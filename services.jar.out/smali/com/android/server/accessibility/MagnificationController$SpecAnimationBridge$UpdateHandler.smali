.class Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$UpdateHandler;
.super Landroid/os/Handler;
.source "MagnificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 832
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$UpdateHandler;->this$1:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    .line 833
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 832
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 838
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 837
    :goto_0
    return-void

    .line 840
    :pswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .line 841
    .local v0, "animate":Z
    :goto_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/MagnificationSpec;

    .line 842
    .local v1, "spec":Landroid/view/MagnificationSpec;
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge$UpdateHandler;->this$1:Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;

    invoke-static {v2, v1, v0}, Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;->-wrap1(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;Landroid/view/MagnificationSpec;Z)V

    goto :goto_0

    .line 840
    .end local v0    # "animate":Z
    .end local v1    # "spec":Landroid/view/MagnificationSpec;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "animate":Z
    goto :goto_1

    .line 838
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
