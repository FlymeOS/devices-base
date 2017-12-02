.class public Landroid/media/tv/ITvInputSessionWrapper;
.super Landroid/media/tv/ITvInputSession$Stub;
.source "ITvInputSessionWrapper.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;
    }
.end annotation


# static fields
.field private static final DO_APP_PRIVATE_COMMAND:I = 0x9

.field private static final DO_CREATE_OVERLAY_VIEW:I = 0xa

.field private static final DO_DISPATCH_SURFACE_CHANGED:I = 0x4

.field private static final DO_RELAYOUT_OVERLAY_VIEW:I = 0xb

.field private static final DO_RELEASE:I = 0x1

.field private static final DO_REMOVE_OVERLAY_VIEW:I = 0xc

.field private static final DO_SELECT_TRACK:I = 0x8

.field private static final DO_SET_CAPTION_ENABLED:I = 0x7

.field private static final DO_SET_MAIN:I = 0x2

.field private static final DO_SET_STREAM_VOLUME:I = 0x5

.field private static final DO_SET_SURFACE:I = 0x3

.field private static final DO_START_RECORDING:I = 0x14

.field private static final DO_STOP_RECORDING:I = 0x15

.field private static final DO_TIME_SHIFT_ENABLE_POSITION_TRACKING:I = 0x13

.field private static final DO_TIME_SHIFT_PAUSE:I = 0xf

.field private static final DO_TIME_SHIFT_PLAY:I = 0xe

.field private static final DO_TIME_SHIFT_RESUME:I = 0x10

.field private static final DO_TIME_SHIFT_SEEK_TO:I = 0x11

.field private static final DO_TIME_SHIFT_SET_PLAYBACK_PARAMS:I = 0x12

.field private static final DO_TUNE:I = 0x6

.field private static final DO_UNBLOCK_CONTENT:I = 0xd

.field private static final EXECUTE_MESSAGE_TIMEOUT_LONG_MILLIS:I = 0x1388

.field private static final EXECUTE_MESSAGE_TIMEOUT_SHORT_MILLIS:I = 0x32

.field private static final EXECUTE_MESSAGE_TUNE_TIMEOUT_MILLIS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "TvInputSessionWrapper"


# instance fields
.field private final mCaller:Lcom/android/internal/os/HandlerCaller;

.field private mChannel:Landroid/view/InputChannel;

.field private final mIsRecordingSession:Z

.field private mReceiver:Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;

.field private mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

.field private mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;


# direct methods
.method static synthetic -get0(Landroid/media/tv/ITvInputSessionWrapper;)Landroid/media/tv/TvInputService$Session;
    .locals 1

    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/tv/TvInputService$RecordingSession;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "recordingSessionImpl"    # Landroid/media/tv/TvInputService$RecordingSession;

    .prologue
    const/4 v2, 0x1

    .line 93
    invoke-direct {p0}, Landroid/media/tv/ITvInputSession$Stub;-><init>()V

    .line 95
    iput-boolean v2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mIsRecordingSession:Z

    .line 96
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0, v2}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 97
    iput-object p2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/tv/TvInputService$Session;Landroid/view/InputChannel;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sessionImpl"    # Landroid/media/tv/TvInputService$Session;
    .param p3, "channel"    # Landroid/view/InputChannel;

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Landroid/media/tv/ITvInputSession$Stub;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mIsRecordingSession:Z

    .line 84
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v2, p0, v1}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 85
    iput-object p2, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    .line 86
    iput-object p3, p0, Landroid/media/tv/ITvInputSessionWrapper;->mChannel:Landroid/view/InputChannel;

    .line 87
    if-eqz p3, :cond_0

    .line 88
    new-instance v0, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, p3, v1}, Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;-><init>(Landroid/media/tv/ITvInputSessionWrapper;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mReceiver:Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;

    .line 82
    :cond_0
    return-void
.end method


# virtual methods
.method public appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 295
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 294
    return-void
.end method

.method public createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 301
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 300
    return-void
.end method

.method public dispatchSurfaceChanged(III)V
    .locals 7
    .param p1, "format"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 267
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v1, 0x4

    .line 268
    const/4 v5, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    .line 267
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIII(IIIII)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 266
    return-void
.end method

.method public executeMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 102
    iget-boolean v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mIsRecordingSession:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    if-nez v1, :cond_1

    .line 104
    :cond_0
    return-void

    .line 103
    :cond_1
    iget-boolean v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mIsRecordingSession:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    if-eqz v1, :cond_0

    .line 107
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 108
    .local v4, "startTime":J
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 227
    const-string/jumbo v1, "TvInputSessionWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unhandled message code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_3
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/32 v8, 0xf4240

    div-long v2, v6, v8

    .line 232
    .local v2, "durationMs":J
    const-wide/16 v6, 0x32

    cmp-long v1, v2, v6

    if-lez v1, :cond_9

    .line 233
    const-string/jumbo v1, "TvInputSessionWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Handling message ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ") took too long time (duration="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 234
    const-string/jumbo v7, "ms)"

    .line 233
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x6

    if-ne v1, v6, :cond_8

    const-wide/16 v6, 0x7d0

    cmp-long v1, v2, v6

    if-lez v1, :cond_8

    .line 236
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Too much time to handle tune request. ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 237
    const-string/jumbo v7, "ms > "

    .line 236
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 237
    const/16 v7, 0x7d0

    .line 236
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 237
    const-string/jumbo v7, "ms) "

    .line 236
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 238
    const-string/jumbo v7, "Consider handling the tune request in a separate thread."

    .line 236
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    .end local v2    # "durationMs":J
    :pswitch_0
    iget-boolean v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mIsRecordingSession:Z

    if-eqz v1, :cond_4

    .line 111
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    invoke-virtual {v1}, Landroid/media/tv/TvInputService$RecordingSession;->release()V

    .line 112
    iput-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    goto/16 :goto_0

    .line 114
    :cond_4
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    invoke-virtual {v1}, Landroid/media/tv/TvInputService$Session;->release()V

    .line 115
    iput-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    .line 116
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mReceiver:Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;

    if-eqz v1, :cond_5

    .line 117
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mReceiver:Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;

    invoke-virtual {v1}, Landroid/view/InputEventReceiver;->dispose()V

    .line 118
    iput-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mReceiver:Landroid/media/tv/ITvInputSessionWrapper$TvInputEventReceiver;

    .line 120
    :cond_5
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_3

    .line 121
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 122
    iput-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mChannel:Landroid/view/InputChannel;

    goto/16 :goto_0

    .line 128
    :pswitch_1
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v6, v1}, Landroid/media/tv/TvInputService$Session;->setMain(Z)V

    goto/16 :goto_0

    .line 132
    :pswitch_2
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v6, v1}, Landroid/media/tv/TvInputService$Session;->setSurface(Landroid/view/Surface;)V

    goto/16 :goto_0

    .line 136
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 137
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v8, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/media/tv/TvInputService$Session;->dispatchSurfaceChanged(III)V

    .line 138
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 142
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_4
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v6, v1}, Landroid/media/tv/TvInputService$Session;->setStreamVolume(F)V

    goto/16 :goto_0

    .line 146
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 147
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-boolean v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mIsRecordingSession:Z

    if-eqz v1, :cond_6

    .line 148
    iget-object v7, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v7, v1, v6}, Landroid/media/tv/TvInputService$RecordingSession;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 152
    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 150
    :cond_6
    iget-object v7, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v7, v1, v6}, Landroid/media/tv/TvInputService$Session;->tune(Landroid/net/Uri;Landroid/os/Bundle;)V

    goto :goto_1

    .line 156
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_6
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v6, v1}, Landroid/media/tv/TvInputService$Session;->setCaptionEnabled(Z)V

    goto/16 :goto_0

    .line 160
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 161
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v7, v1}, Landroid/media/tv/TvInputService$Session;->selectTrack(ILjava/lang/String;)V

    .line 162
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 166
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 167
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-boolean v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mIsRecordingSession:Z

    if-eqz v1, :cond_7

    .line 168
    iget-object v7, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    .line 169
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    .line 168
    invoke-virtual {v7, v1, v6}, Landroid/media/tv/TvInputService$RecordingSession;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 173
    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 171
    :cond_7
    iget-object v7, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    invoke-virtual {v7, v1, v6}, Landroid/media/tv/TvInputService$Session;->appPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 177
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 178
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v7, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Rect;

    invoke-virtual {v7, v1, v6}, Landroid/media/tv/TvInputService$Session;->createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    .line 179
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_0

    .line 183
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_a
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v6, v1}, Landroid/media/tv/TvInputService$Session;->relayoutOverlayView(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 187
    :pswitch_b
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/media/tv/TvInputService$Session;->removeOverlayView(Z)V

    goto/16 :goto_0

    .line 191
    :pswitch_c
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Landroid/media/tv/TvInputService$Session;->unblockContent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 195
    :pswitch_d
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v6, v1}, Landroid/media/tv/TvInputService$Session;->timeShiftPlay(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 199
    :pswitch_e
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    invoke-virtual {v1}, Landroid/media/tv/TvInputService$Session;->timeShiftPause()V

    goto/16 :goto_0

    .line 203
    :pswitch_f
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    invoke-virtual {v1}, Landroid/media/tv/TvInputService$Session;->timeShiftResume()V

    goto/16 :goto_0

    .line 207
    :pswitch_10
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/media/tv/TvInputService$Session;->timeShiftSeekTo(J)V

    goto/16 :goto_0

    .line 211
    :pswitch_11
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/PlaybackParams;

    invoke-virtual {v6, v1}, Landroid/media/tv/TvInputService$Session;->timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V

    goto/16 :goto_0

    .line 215
    :pswitch_12
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v6, v1}, Landroid/media/tv/TvInputService$Session;->timeShiftEnablePositionTracking(Z)V

    goto/16 :goto_0

    .line 219
    :pswitch_13
    iget-object v6, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v6, v1}, Landroid/media/tv/TvInputService$RecordingSession;->startRecording(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 223
    :pswitch_14
    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputRecordingSessionImpl:Landroid/media/tv/TvInputService$RecordingSession;

    invoke-virtual {v1}, Landroid/media/tv/TvInputService$RecordingSession;->stopRecording()V

    goto/16 :goto_0

    .line 240
    .restart local v2    # "durationMs":J
    :cond_8
    const-wide/16 v6, 0x1388

    cmp-long v1, v2, v6

    if-lez v1, :cond_9

    .line 241
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Too much time to handle a request. (type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 242
    const-string/jumbo v7, ", "

    .line 241
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 242
    const-string/jumbo v7, "ms > "

    .line 241
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 242
    const/16 v7, 0x1388

    .line 241
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 242
    const-string/jumbo v7, "ms)."

    .line 241
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_9
    return-void

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public relayoutOverlayView(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "frame"    # Landroid/graphics/Rect;

    .prologue
    .line 307
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xb

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 306
    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    .line 249
    iget-boolean v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mIsRecordingSession:Z

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mTvInputSessionImpl:Landroid/media/tv/TvInputService$Session;

    invoke-virtual {v0}, Landroid/media/tv/TvInputService$Session;->scheduleOverlayViewCleanup()V

    .line 252
    :cond_0
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 248
    return-void
.end method

.method public removeOverlayView()V
    .locals 3

    .prologue
    .line 312
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 311
    return-void
.end method

.method public selectTrack(ILjava/lang/String;)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "trackId"    # Ljava/lang/String;

    .prologue
    .line 290
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 289
    return-void
.end method

.method public setCaptionEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 285
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 284
    return-void
.end method

.method public setMain(Z)V
    .locals 4
    .param p1, "isMain"    # Z

    .prologue
    .line 257
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 256
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 262
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 261
    return-void
.end method

.method public final setVolume(F)V
    .locals 4
    .param p1, "volume"    # F

    .prologue
    .line 273
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 272
    return-void
.end method

.method public startRecording(Landroid/net/Uri;)V
    .locals 3
    .param p1, "programUri"    # Landroid/net/Uri;

    .prologue
    .line 356
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 355
    return-void
.end method

.method public stopRecording()V
    .locals 3

    .prologue
    .line 361
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 360
    return-void
.end method

.method public timeShiftEnablePositionTracking(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 350
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 351
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v3, 0x13

    .line 350
    invoke-virtual {v1, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 349
    return-void
.end method

.method public timeShiftPause()V
    .locals 3

    .prologue
    .line 329
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 328
    return-void
.end method

.method public timeShiftPlay(Landroid/net/Uri;)V
    .locals 3
    .param p1, "recordedProgramUri"    # Landroid/net/Uri;

    .prologue
    .line 323
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 324
    const/16 v2, 0xe

    .line 323
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 322
    return-void
.end method

.method public timeShiftResume()V
    .locals 3

    .prologue
    .line 334
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 333
    return-void
.end method

.method public timeShiftSeekTo(J)V
    .locals 5
    .param p1, "timeMs"    # J

    .prologue
    .line 339
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 338
    return-void
.end method

.method public timeShiftSetPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 3
    .param p1, "params"    # Landroid/media/PlaybackParams;

    .prologue
    .line 344
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 343
    return-void
.end method

.method public tune(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "channelUri"    # Landroid/net/Uri;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x6

    .line 279
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v0, v2}, Lcom/android/internal/os/HandlerCaller;->removeMessages(I)V

    .line 280
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 277
    return-void
.end method

.method public unblockContent(Ljava/lang/String;)V
    .locals 3
    .param p1, "unblockedRating"    # Ljava/lang/String;

    .prologue
    .line 317
    iget-object v0, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/media/tv/ITvInputSessionWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 318
    const/16 v2, 0xd

    .line 317
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 316
    return-void
.end method
