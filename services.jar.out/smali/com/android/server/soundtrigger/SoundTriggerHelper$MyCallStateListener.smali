.class Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "SoundTriggerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;


# direct methods
.method constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .prologue
    .line 828
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 832
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->-get0(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 833
    :try_start_0
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v2, v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->-wrap0(Lcom/android/server/soundtrigger/SoundTriggerHelper;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 830
    return-void

    .line 832
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
