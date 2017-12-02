.class Landroid/media/PlayerBase$1;
.super Lcom/android/internal/app/IAppOpsCallback$Stub;
.source "PlayerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/PlayerBase;


# direct methods
.method constructor <init>(Landroid/media/PlayerBase;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/PlayerBase;

    .prologue
    .line 69
    iput-object p1, p0, Landroid/media/PlayerBase$1;->this$0:Landroid/media/PlayerBase;

    invoke-direct {p0}, Lcom/android/internal/app/IAppOpsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public opChanged(IILjava/lang/String;)V
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Landroid/media/PlayerBase$1;->this$0:Landroid/media/PlayerBase;

    invoke-static {v0}, Landroid/media/PlayerBase;->-get0(Landroid/media/PlayerBase;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 72
    const/16 v0, 0x1c

    if-ne p1, v0, :cond_0

    .line 73
    :try_start_0
    iget-object v0, p0, Landroid/media/PlayerBase$1;->this$0:Landroid/media/PlayerBase;

    invoke-virtual {v0}, Landroid/media/PlayerBase;->updateAppOpsPlayAudio_sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
