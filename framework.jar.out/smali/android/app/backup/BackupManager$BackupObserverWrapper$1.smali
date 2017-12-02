.class Landroid/app/backup/BackupManager$BackupObserverWrapper$1;
.super Landroid/os/Handler;
.source "BackupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/backup/BackupManager$BackupObserverWrapper;-><init>(Landroid/app/backup/BackupManager;Landroid/content/Context;Landroid/app/backup/BackupObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/backup/BackupManager$BackupObserverWrapper;


# direct methods
.method constructor <init>(Landroid/app/backup/BackupManager$BackupObserverWrapper;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$1"    # Landroid/app/backup/BackupManager$BackupObserverWrapper;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 516
    iput-object p1, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper$1;->this$1:Landroid/app/backup/BackupManager$BackupObserverWrapper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 519
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 532
    const-string/jumbo v1, "BackupManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :goto_0
    return-void

    .line 522
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 523
    .local v0, "obj":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/app/backup/BackupProgress;>;"
    iget-object v1, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper$1;->this$1:Landroid/app/backup/BackupManager$BackupObserverWrapper;

    iget-object v3, v1, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mObserver:Landroid/app/backup/BackupObserver;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/app/backup/BackupProgress;

    invoke-virtual {v3, v1, v2}, Landroid/app/backup/BackupObserver;->onUpdate(Ljava/lang/String;Landroid/app/backup/BackupProgress;)V

    goto :goto_0

    .line 526
    .end local v0    # "obj":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Landroid/app/backup/BackupProgress;>;"
    :pswitch_1
    iget-object v1, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper$1;->this$1:Landroid/app/backup/BackupManager$BackupObserverWrapper;

    iget-object v2, v1, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mObserver:Landroid/app/backup/BackupObserver;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v1, v3}, Landroid/app/backup/BackupObserver;->onResult(Ljava/lang/String;I)V

    goto :goto_0

    .line 529
    :pswitch_2
    iget-object v1, p0, Landroid/app/backup/BackupManager$BackupObserverWrapper$1;->this$1:Landroid/app/backup/BackupManager$BackupObserverWrapper;

    iget-object v1, v1, Landroid/app/backup/BackupManager$BackupObserverWrapper;->mObserver:Landroid/app/backup/BackupObserver;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Landroid/app/backup/BackupObserver;->backupFinished(I)V

    goto :goto_0

    .line 519
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
