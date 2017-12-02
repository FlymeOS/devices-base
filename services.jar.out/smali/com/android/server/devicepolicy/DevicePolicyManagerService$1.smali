.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-get1(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-wrap9(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    .line 368
    :cond_0
    return-void
.end method
