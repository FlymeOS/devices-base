.class public Lcom/android/server/MzInputMethodManagerService;
.super Lcom/android/server/InputMethodManagerService;
.source "MzInputMethodManagerService.java"

# interfaces
.implements Lcom/android/internal/view/MzIInputMethodManager;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.IInputMethodManager"

.field static final MSG_MZ_FINISH_INPUT:I = 0x271a

.field static final MSG_MZ_VIS_CHANGED:I = 0x2710

.field private static final TRANSACTION_mzIsShown:I = 0x65

.field private static final TRANSACTION_mzSetFlags:I = 0x66


# instance fields
.field private mLastInputShown:Z

.field private mMeizuFlags:I

.field private mMeizuLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0}, Lcom/android/server/MzInputMethodManagerService;->initParams()V

    .line 39
    return-void
.end method

.method private finishInputInternal(Lcom/android/internal/view/IInputMethodClient;)V
    .locals 3
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .prologue
    .line 116
    iget-object v1, p0, Lcom/android/server/MzInputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/android/server/MzInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/server/MzInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 119
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/MzInputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 115
    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initParams()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    iput v1, p0, Lcom/android/server/MzInputMethodManagerService;->mMeizuFlags:I

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/MzInputMethodManagerService;->mMeizuLock:Ljava/lang/Object;

    .line 47
    iput-boolean v1, p0, Lcom/android/server/MzInputMethodManagerService;->mLastInputShown:Z

    .line 48
    invoke-virtual {p0}, Lcom/android/server/MzInputMethodManagerService;->setFlymeImeSwitcherNotification()V

    .line 44
    return-void
.end method

.method private selectMzInputAsDefaultIMELocked()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 197
    iget-object v1, p0, Lcom/android/server/MzInputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    const-string/jumbo v2, "com.syntellia.fleksy.keyboard/.Fleksy"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 198
    .local v0, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isBuildExtAndDefaultIME(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/MzInputMethodManagerService;->flymeInvokeMethodSetSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 200
    return-void

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/android/server/MzInputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    const-string/jumbo v2, "com.emoji.keyboard.touchpal/com.cootek.smartinput5.TouchPalIME"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 205
    .restart local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isBuildExtAndDefaultIME(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 206
    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/MzInputMethodManagerService;->flymeInvokeMethodSetSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 207
    return-void

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/android/server/MzInputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    const-string/jumbo v2, "com.meizu.flyme.input/com.meizu.input.MzInputService"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 212
    .restart local v0    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->isBuildExtAndDefaultIME(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 213
    invoke-virtual {p0, v0, v3, v4}, Lcom/android/server/MzInputMethodManagerService;->flymeInvokeMethodSetSelectedInputMethodAndSubtypeLocked(Landroid/view/inputmethod/InputMethodInfo;IZ)V

    .line 214
    return-void

    .line 195
    :cond_2
    return-void
.end method

.method private setInputShownLocked()V
    .locals 5

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/android/server/MzInputMethodManagerService;->mLastInputShown:Z

    iget-boolean v1, p0, Lcom/android/server/MzInputMethodManagerService;->mInputShown:Z

    if-eq v0, v1, :cond_0

    .line 181
    iget-boolean v0, p0, Lcom/android/server/MzInputMethodManagerService;->mInputShown:Z

    iput-boolean v0, p0, Lcom/android/server/MzInputMethodManagerService;->mLastInputShown:Z

    .line 182
    iget-object v0, p0, Lcom/android/server/MzInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/server/MzInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v0, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    iget-object v1, p0, Lcom/android/server/MzInputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 184
    iget-boolean v2, p0, Lcom/android/server/MzInputMethodManagerService;->mInputShown:Z

    iget-object v3, p0, Lcom/android/server/MzInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    const/16 v4, 0x2710

    .line 183
    invoke-virtual {v1, v4, v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageBO(IZLjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/MzInputMethodManagerService;->executeOrSendMessage(Landroid/os/IInterface;Landroid/os/Message;)V

    .line 179
    :cond_0
    return-void
.end method


# virtual methods
.method public finishInput(Lcom/android/internal/view/IInputMethodClient;)V
    .locals 5
    .param p1, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/android/server/InputMethodManagerService;->finishInput(Lcom/android/internal/view/IInputMethodClient;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/server/MzInputMethodManagerService;->flymeInvokeMethodCalledFromValidUser()Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    return-void

    .line 131
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 133
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MzInputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 134
    :try_start_1
    iget-object v2, p0, Lcom/android/server/MzInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 135
    iget-object v2, p0, Lcom/android/server/MzInputMethodManagerService;->mCurClient:Lcom/android/server/InputMethodManagerService$ClientState;

    iget-object v2, v2, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    invoke-interface {v2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v2, v4, :cond_1

    .line 136
    iget-object v2, p0, Lcom/android/server/MzInputMethodManagerService;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x271a

    invoke-virtual {v2, v4, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 140
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 125
    return-void

    .line 133
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 139
    :catchall_1
    move-exception v2

    .line 140
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    throw v2
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 95
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 112
    invoke-super {p0, p1}, Lcom/android/server/InputMethodManagerService;->handleMessage(Landroid/os/Message;)Z

    move-result v3

    return v3

    .line 98
    :sswitch_0
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/InputMethodManagerService$ClientState;

    .line 102
    .local v0, "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_0

    const/4 v2, -0x7

    .line 103
    .local v2, "sequence":I
    :goto_0
    iget-object v3, v0, Lcom/android/server/InputMethodManagerService$ClientState;->client:Lcom/android/internal/view/IInputMethodClient;

    const/4 v4, -0x1

    invoke-interface {v3, v2, v4}, Lcom/android/internal/view/IInputMethodClient;->onUnbindMethod(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v0    # "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v2    # "sequence":I
    :goto_1
    return v5

    .line 102
    .restart local v0    # "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    :cond_0
    const/16 v2, -0x9

    .restart local v2    # "sequence":I
    goto :goto_0

    .line 108
    .end local v0    # "clientState":Lcom/android/server/InputMethodManagerService$ClientState;
    .end local v2    # "sequence":I
    :sswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputMethodClient;

    invoke-direct {p0, v3}, Lcom/android/server/MzInputMethodManagerService;->finishInputInternal(Lcom/android/internal/view/IInputMethodClient;)V

    .line 109
    return v5

    .line 104
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 95
    :sswitch_data_0
    .sparse-switch
        0x2710 -> :sswitch_0
        0x271a -> :sswitch_1
    .end sparse-switch
.end method

.method hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    .locals 3
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->hideCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    move-result v1

    .line 147
    .local v1, "res":Z
    const/4 v0, 0x1

    .line 148
    .local v0, "needSetInputShown":Z
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_1

    .line 149
    iget-boolean v2, p0, Lcom/android/server/MzInputMethodManagerService;->mShowExplicitlyRequested:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/MzInputMethodManagerService;->mShowForced:Z

    .line 148
    if-eqz v2, :cond_1

    .line 150
    :cond_0
    const/4 v0, 0x0

    .line 152
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/MzInputMethodManagerService;->mShowForced:Z

    if-eqz v2, :cond_2

    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_2

    .line 153
    const/4 v0, 0x0

    .line 155
    :cond_2
    if-eqz v0, :cond_3

    .line 156
    invoke-direct {p0}, Lcom/android/server/MzInputMethodManagerService;->setInputShownLocked()V

    .line 158
    :cond_3
    return v1
.end method

.method public mzIsShown()Z
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/MzInputMethodManagerService;->mMethodMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/MzInputMethodManagerService;->mInputShown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 79
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public mzSetFlags(II)I
    .locals 4
    .param p1, "flags"    # I
    .param p2, "mask"    # I

    .prologue
    .line 86
    iget-object v2, p0, Lcom/android/server/MzInputMethodManagerService;->mMeizuLock:Ljava/lang/Object;

    monitor-enter v2

    .line 87
    :try_start_0
    iget v0, p0, Lcom/android/server/MzInputMethodManagerService;->mMeizuFlags:I

    .line 88
    .local v0, "old":I
    iget v1, p0, Lcom/android/server/MzInputMethodManagerService;->mMeizuFlags:I

    not-int v3, p2

    and-int/2addr v1, v3

    and-int v3, p1, p2

    or-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/MzInputMethodManagerService;->mMeizuFlags:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 89
    return v0

    .line 86
    .end local v0    # "old":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/android/server/InputMethodManagerService;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 173
    iget-object v0, p0, Lcom/android/server/MzInputMethodManagerService;->mCurMethod:Lcom/android/internal/view/IInputMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/MzInputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/server/MzInputMethodManagerService;->mCurIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 173
    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/android/server/MzInputMethodManagerService;->setInputShownLocked()V

    .line 171
    :cond_0
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 53
    packed-switch p1, :pswitch_data_0

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/InputMethodManagerService;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 55
    :pswitch_0
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/server/MzInputMethodManagerService;->mzIsShown()Z

    move-result v3

    .line 57
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v3, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    return v5

    .line 58
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 62
    .end local v3    # "_result":Z
    :pswitch_1
    const-string/jumbo v4, "com.android.internal.view.IInputMethodManager"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 67
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/android/server/MzInputMethodManagerService;->mzSetFlags(II)I

    move-result v2

    .line 68
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    return v5

    .line 53
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected resetDefaultImeLocked(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/android/server/InputMethodManagerService;->resetDefaultImeLocked(Landroid/content/Context;)V

    .line 192
    invoke-direct {p0}, Lcom/android/server/MzInputMethodManagerService;->selectMzInputAsDefaultIMELocked()V

    .line 190
    return-void
.end method

.method showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z
    .locals 1
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Lcom/android/server/InputMethodManagerService;->showCurrentInputLocked(ILandroid/os/ResultReceiver;)Z

    move-result v0

    .line 164
    .local v0, "res":Z
    if-eqz v0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/android/server/MzInputMethodManagerService;->setInputShownLocked()V

    .line 167
    :cond_0
    return v0
.end method
