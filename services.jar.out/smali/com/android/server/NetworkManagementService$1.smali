.class Lcom/android/server/NetworkManagementService$1;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NetworkManagementService;->addIdleTimer(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkManagementService;
    .param p2, "val$type"    # I

    .prologue
    .line 1615
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$1;->this$0:Lcom/android/server/NetworkManagementService;

    iput p2, p0, Lcom/android/server/NetworkManagementService$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1617
    iget-object v1, p0, Lcom/android/server/NetworkManagementService$1;->this$0:Lcom/android/server/NetworkManagementService;

    iget v2, p0, Lcom/android/server/NetworkManagementService$1;->val$type:I

    .line 1619
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    .line 1618
    const/4 v3, 0x3

    .line 1619
    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 1617
    invoke-static/range {v1 .. v7}, Lcom/android/server/NetworkManagementService;->-wrap4(Lcom/android/server/NetworkManagementService;IIJIZ)V

    .line 1616
    return-void
.end method
