.class Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;
.super Ljava/lang/Object;
.source "NetworkLoggingHandler.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/NetworkLoggingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/NetworkLoggingHandler;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/NetworkLoggingHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;->this$0:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 3

    .prologue
    .line 59
    invoke-static {}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received a batch finalization timeout alarm, finalizing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 60
    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;->this$0:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    invoke-static {v2}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->-get1(Lcom/android/server/devicepolicy/NetworkLoggingHandler;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 60
    const-string/jumbo v2, " pending events."

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;->this$0:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    monitor-enter v1

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLoggingHandler$1;->this$0:Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    invoke-static {v0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->-wrap0(Lcom/android/server/devicepolicy/NetworkLoggingHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 58
    return-void

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
