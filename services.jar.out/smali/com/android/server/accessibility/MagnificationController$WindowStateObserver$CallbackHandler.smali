.class Lcom/android/server/accessibility/MagnificationController$WindowStateObserver$CallbackHandler;
.super Landroid/os/Handler;
.source "MagnificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackHandler"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$1"    # Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1023
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver$CallbackHandler;->this$1:Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;

    .line 1024
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1023
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 1029
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 1028
    :goto_0
    return-void

    .line 1031
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1032
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Region;

    .line 1033
    .local v3, "magnifiedBounds":Landroid/graphics/Region;
    iget-object v6, p0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver$CallbackHandler;->this$1:Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;

    invoke-static {v6, v3}, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->-wrap0(Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;Landroid/graphics/Region;)V

    .line 1034
    invoke-virtual {v3}, Landroid/graphics/Region;->recycle()V

    goto :goto_0

    .line 1037
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "magnifiedBounds":Landroid/graphics/Region;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1038
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 1039
    .local v2, "left":I
    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 1040
    .local v5, "top":I
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 1041
    .local v4, "right":I
    iget v1, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 1042
    .local v1, "bottom":I
    iget-object v6, p0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver$CallbackHandler;->this$1:Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;

    invoke-static {v6, v2, v5, v4, v1}, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->-wrap1(Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;IIII)V

    .line 1043
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_0

    .line 1046
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "bottom":I
    .end local v2    # "left":I
    .end local v4    # "right":I
    .end local v5    # "top":I
    :pswitch_2
    iget-object v6, p0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver$CallbackHandler;->this$1:Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;

    invoke-static {v6}, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->-wrap3(Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;)V

    goto :goto_0

    .line 1049
    :pswitch_3
    iget-object v6, p0, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver$CallbackHandler;->this$1:Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;

    invoke-static {v6}, Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;->-wrap2(Lcom/android/server/accessibility/MagnificationController$WindowStateObserver;)V

    goto :goto_0

    .line 1029
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
