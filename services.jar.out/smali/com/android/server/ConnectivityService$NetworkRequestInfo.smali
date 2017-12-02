.class Lcom/android/server/ConnectivityService$NetworkRequestInfo;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkRequestInfo"
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field final mPendingIntent:Landroid/app/PendingIntent;

.field mPendingIntentSent:Z

.field final mPid:I

.field final mUid:I

.field final messenger:Landroid/os/Messenger;

.field final request:Landroid/net/NetworkRequest;

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;
    .param p2, "r"    # Landroid/net/NetworkRequest;
    .param p3, "pi"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v1, 0x0

    .line 4039
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4040
    iput-object p2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 4041
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-static {p1, v0}, Lcom/android/server/ConnectivityService;->-wrap3(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;)V

    .line 4042
    iput-object p3, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    .line 4043
    iput-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    .line 4044
    iput-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    .line 4045
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    .line 4046
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    .line 4047
    invoke-direct {p0}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->enforceRequestCountLimit()V

    .line 4039
    return-void
.end method

.method constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;
    .param p2, "m"    # Landroid/os/Messenger;
    .param p3, "r"    # Landroid/net/NetworkRequest;
    .param p4, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 4050
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    .line 4051
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4052
    iput-object p2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    .line 4053
    iput-object p3, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 4054
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-static {p1, v1}, Lcom/android/server/ConnectivityService;->-wrap3(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;)V

    .line 4055
    iput-object p4, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    .line 4056
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingPid()I

    move-result v1

    iput v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    .line 4057
    invoke-static {}, Lcom/android/server/ConnectivityService;->getCallingUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    .line 4058
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    .line 4059
    invoke-direct {p0}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->enforceRequestCountLimit()V

    .line 4062
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4050
    :goto_0
    return-void

    .line 4063
    :catch_0
    move-exception v0

    .line 4064
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->binderDied()V

    goto :goto_0
.end method

.method private enforceRequestCountLimit()V
    .locals 5

    .prologue
    .line 4069
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get14(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v2

    monitor-enter v2

    .line 4070
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get14(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v1

    iget v3, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 4071
    .local v0, "networkRequests":I
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 4072
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Too many NetworkRequests filed"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4069
    .end local v0    # "networkRequests":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 4074
    .restart local v0    # "networkRequests":I
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->-get14(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v1

    iget v3, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 4068
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 4085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ConnectivityService NetworkRequestInfo binderDied("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4086
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 4085
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4086
    const-string/jumbo v1, ", "

    .line 4085
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4086
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    .line 4085
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4086
    const-string/jumbo v1, ")"

    .line 4085
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->-wrap23(Ljava/lang/String;)V

    .line 4087
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->releaseNetworkRequest(Landroid/net/NetworkRequest;)V

    .line 4084
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uid/pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4092
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    .line 4091
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4092
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " to trigger "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method unlinkDeathRecipient()V
    .locals 2

    .prologue
    .line 4079
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 4080
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4078
    :cond_0
    return-void
.end method
