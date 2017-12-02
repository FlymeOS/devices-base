.class abstract Landroid/net/dhcp/DhcpClient$LoggingState;
.super Lcom/android/internal/util/State;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "LoggingState"
.end annotation


# instance fields
.field private mEnterTimeMs:J

.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method constructor <init>(Landroid/net/dhcp/DhcpClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/dhcp/DhcpClient;

    .prologue
    .line 498
    iput-object p1, p0, Landroid/net/dhcp/DhcpClient$LoggingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private messageName(I)Ljava/lang/String;
    .locals 2
    .param p1, "what"    # I

    .prologue
    .line 514
    invoke-static {}, Landroid/net/dhcp/DhcpClient;->-get24()Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private messageToString(Landroid/os/Message;)Ljava/lang/String;
    .locals 6
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 518
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 519
    .local v2, "now":J
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 520
    .local v0, "b":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/os/Message;->getWhen()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 521
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v4}, Landroid/net/dhcp/DhcpClient$LoggingState;->messageName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 522
    const-string/jumbo v4, " "

    .line 521
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 522
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 521
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 523
    const-string/jumbo v4, " "

    .line 521
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 523
    iget v4, p1, Landroid/os/Message;->arg2:I

    .line 521
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 524
    const-string/jumbo v4, " "

    .line 521
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 524
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 521
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 504
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/dhcp/DhcpClient$LoggingState;->mEnterTimeMs:J

    .line 502
    return-void
.end method

.method public exit()V
    .locals 6

    .prologue
    .line 509
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Landroid/net/dhcp/DhcpClient$LoggingState;->mEnterTimeMs:J

    sub-long v0, v2, v4

    .line 510
    .local v0, "durationMs":J
    iget-object v2, p0, Landroid/net/dhcp/DhcpClient$LoggingState;->this$0:Landroid/net/dhcp/DhcpClient;

    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->getName()Ljava/lang/String;

    move-result-object v3

    long-to-int v4, v0

    invoke-static {v2, v3, v4}, Landroid/net/dhcp/DhcpClient;->-wrap11(Landroid/net/dhcp/DhcpClient;Ljava/lang/String;I)V

    .line 508
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 540
    invoke-virtual {p0}, Landroid/net/dhcp/DhcpClient$LoggingState;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 533
    const/4 v0, 0x0

    return v0
.end method
