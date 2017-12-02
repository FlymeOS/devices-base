.class public final Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;
.super Lcom/android/server/soundtrigger/SoundTriggerInternal;
.source "SoundTriggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalSoundTriggerService"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

.field final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerService;


# direct methods
.method constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/soundtrigger/SoundTriggerService;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerInternal;-><init>()V

    .line 187
    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->mContext:Landroid/content/Context;

    .line 186
    return-void
.end method

.method private declared-synchronized isInitialized()Z
    .locals 2

    .prologue
    monitor-enter p0

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    if-nez v0, :cond_0

    .line 228
    const-string/jumbo v0, "SoundTriggerService"

    const-string/jumbo v1, "SoundTriggerHelper not initialized."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 231
    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->getModuleProperties()Landroid/hardware/soundtrigger/SoundTrigger$ModuleProperties;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized setSoundTriggerHelper(Lcom/android/server/soundtrigger/SoundTriggerHelper;)V
    .locals 1
    .param p1, "helper"    # Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .prologue
    monitor-enter p0

    .line 191
    :try_start_0
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 190
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I
    .locals 1
    .param p1, "keyphraseId"    # I
    .param p2, "soundModel"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .param p3, "listener"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;
    .param p4, "recognitionConfig"    # Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, -0x80000000

    return v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->startKeyphraseRecognition(ILandroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;Landroid/hardware/soundtrigger/IRecognitionStatusCallback;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized stopRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    .locals 1
    .param p1, "keyphraseId"    # I
    .param p2, "listener"    # Landroid/hardware/soundtrigger/IRecognitionStatusCallback;

    .prologue
    monitor-enter p0

    .line 204
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->isInitialized()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, -0x80000000

    monitor-exit p0

    return v0

    .line 205
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->stopKeyphraseRecognition(ILandroid/hardware/soundtrigger/IRecognitionStatusCallback;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unloadKeyphraseModel(I)I
    .locals 1
    .param p1, "keyphraseId"    # I

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, -0x80000000

    return v0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$LocalSoundTriggerService;->mSoundTriggerHelper:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->unloadKeyphraseSoundModel(I)I

    move-result v0

    return v0
.end method
