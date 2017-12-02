.class Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;
.super Lcom/android/internal/app/IAssistScreenshotReceiver$Stub;
.source "VoiceInteractionSessionConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;


# direct methods
.method constructor <init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-direct {p0}, Lcom/android/internal/app/IAssistScreenshotReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-object v1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iget-boolean v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveScreenshot:Z

    .line 166
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    iput-object p1, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScreenshot:Landroid/graphics/Bitmap;

    .line 167
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;->this$0:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->deliverSessionDataLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 162
    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
