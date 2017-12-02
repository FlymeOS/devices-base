.class Lcom/android/server/accessibility/MotionEventInjector$Callback;
.super Ljava/lang/Object;
.source "MotionEventInjector.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MotionEventInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Callback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/MotionEventInjector;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/MotionEventInjector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/MotionEventInjector;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/server/accessibility/MotionEventInjector$Callback;->this$0:Lcom/android/server/accessibility/MotionEventInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/MotionEventInjector;Lcom/android/server/accessibility/MotionEventInjector$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/MotionEventInjector;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MotionEventInjector$Callback;-><init>(Lcom/android/server/accessibility/MotionEventInjector;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 229
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 230
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 231
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, Lcom/android/server/accessibility/MotionEventInjector$Callback;->this$0:Lcom/android/server/accessibility/MotionEventInjector;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 232
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 231
    invoke-static {v4, v2, v3, v5}, Lcom/android/server/accessibility/MotionEventInjector;->-wrap0(Lcom/android/server/accessibility/MotionEventInjector;Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V

    .line 233
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 234
    return v6

    .line 236
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    if-eq v2, v6, :cond_1

    .line 237
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 239
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/MotionEvent;

    .line 240
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector$Callback;->this$0:Lcom/android/server/accessibility/MotionEventInjector;

    .line 241
    const/high16 v3, 0x40000000    # 2.0f

    .line 240
    invoke-static {v2, v1, v1, v3}, Lcom/android/server/accessibility/MotionEventInjector;->-wrap2(Lcom/android/server/accessibility/MotionEventInjector;Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 243
    iget-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector$Callback;->this$0:Lcom/android/server/accessibility/MotionEventInjector;

    invoke-static {v2}, Lcom/android/server/accessibility/MotionEventInjector;->-get0(Lcom/android/server/accessibility/MotionEventInjector;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 244
    iget-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector$Callback;->this$0:Lcom/android/server/accessibility/MotionEventInjector;

    invoke-static {v2, v6}, Lcom/android/server/accessibility/MotionEventInjector;->-wrap1(Lcom/android/server/accessibility/MotionEventInjector;Z)V

    .line 246
    :cond_2
    return v6
.end method
