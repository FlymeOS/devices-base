.class final Landroid/telecom/CallScreeningService$CallScreeningBinder;
.super Lcom/android/internal/telecom/ICallScreeningService$Stub;
.source "CallScreeningService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/CallScreeningService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CallScreeningBinder"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/CallScreeningService;


# direct methods
.method private constructor <init>(Landroid/telecom/CallScreeningService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/CallScreeningService;

    .prologue
    .line 76
    iput-object p1, p0, Landroid/telecom/CallScreeningService$CallScreeningBinder;->this$0:Landroid/telecom/CallScreeningService;

    invoke-direct {p0}, Lcom/android/internal/telecom/ICallScreeningService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/telecom/CallScreeningService;Landroid/telecom/CallScreeningService$CallScreeningBinder;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/CallScreeningService;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/CallScreeningService$CallScreeningBinder;-><init>(Landroid/telecom/CallScreeningService;)V

    return-void
.end method


# virtual methods
.method public screenCall(Lcom/android/internal/telecom/ICallScreeningAdapter;Landroid/telecom/ParcelableCall;)V
    .locals 3
    .param p1, "adapter"    # Lcom/android/internal/telecom/ICallScreeningAdapter;
    .param p2, "call"    # Landroid/telecom/ParcelableCall;

    .prologue
    .line 79
    const-string/jumbo v1, "screenCall"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 81
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 82
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 83
    iget-object v1, p0, Landroid/telecom/CallScreeningService$CallScreeningBinder;->this$0:Landroid/telecom/CallScreeningService;

    invoke-static {v1}, Landroid/telecom/CallScreeningService;->-get0(Landroid/telecom/CallScreeningService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 78
    return-void
.end method
