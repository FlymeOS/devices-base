.class final Lcom/android/server/input/InputManagerService$InputManagerHandler;
.super Landroid/os/Handler;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2065
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    .line 2066
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2065
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2071
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 2070
    :goto_0
    return-void

    .line 2073
    :pswitch_0
    iget-object v8, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [Landroid/view/InputDevice;

    invoke-static {v8, v5}, Lcom/android/server/input/InputManagerService;->-wrap3(Lcom/android/server/input/InputManagerService;[Landroid/view/InputDevice;)V

    goto :goto_0

    .line 2076
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2077
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v9, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/input/InputDeviceIdentifier;

    .line 2078
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v8, Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;

    .line 2077
    invoke-static {v9, v5, v8}, Lcom/android/server/input/InputManagerService;->-wrap6(Lcom/android/server/input/InputManagerService;Landroid/hardware/input/InputDeviceIdentifier;Lcom/android/internal/inputmethod/InputMethodSubtypeHandle;)V

    goto :goto_0

    .line 2082
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_2
    iget-object v5, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v5}, Lcom/android/server/input/InputManagerService;->-wrap12(Lcom/android/server/input/InputManagerService;)V

    goto :goto_0

    .line 2085
    :pswitch_3
    iget-object v5, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v5}, Lcom/android/server/input/InputManagerService;->-wrap14(Lcom/android/server/input/InputManagerService;)V

    goto :goto_0

    .line 2088
    :pswitch_4
    iget-object v5, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v5}, Lcom/android/server/input/InputManagerService;->-wrap11(Lcom/android/server/input/InputManagerService;)V

    goto :goto_0

    .line 2091
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2092
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    int-to-long v8, v5

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    int-to-long v10, v5

    const/16 v5, 0x20

    shl-long/2addr v10, v5

    or-long v6, v8, v10

    .line 2093
    .local v6, "whenNanos":J
    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2094
    .local v1, "inTabletMode":Z
    iget-object v5, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v5, v6, v7, v1}, Lcom/android/server/input/InputManagerService;->-wrap4(Lcom/android/server/input/InputManagerService;JZ)V

    goto :goto_0

    .line 2098
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "inTabletMode":Z
    .end local v6    # "whenNanos":J
    :pswitch_6
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 2099
    .local v4, "userId":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 2100
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 2101
    .local v2, "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    .line 2102
    .local v3, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2103
    iget-object v5, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v5, v4, v2, v3}, Lcom/android/server/input/InputManagerService;->-wrap5(Lcom/android/server/input/InputManagerService;ILandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    goto :goto_0

    .line 2071
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
