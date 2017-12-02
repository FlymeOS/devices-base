.class Landroid/inputmethodservice/IInputMethodWrapper;
.super Lcom/android/internal/view/IInputMethod$Stub;
.source "IInputMethodWrapper.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;,
        Landroid/inputmethodservice/IInputMethodWrapper$Notifier;
    }
.end annotation


# static fields
.field private static final DO_ATTACH_TOKEN:I = 0xa

.field private static final DO_CHANGE_INPUTMETHOD_SUBTYPE:I = 0x50

.field private static final DO_CREATE_SESSION:I = 0x28

.field private static final DO_DUMP:I = 0x1

.field private static final DO_HIDE_SOFT_INPUT:I = 0x46

.field private static final DO_RESTART_INPUT:I = 0x22

.field private static final DO_REVOKE_SESSION:I = 0x32

.field private static final DO_SET_INPUT_CONTEXT:I = 0x14

.field private static final DO_SET_SESSION_ENABLED:I = 0x2d

.field private static final DO_SHOW_SOFT_INPUT:I = 0x3c

.field private static final DO_START_INPUT:I = 0x20

.field private static final DO_UNSET_INPUT_CONTEXT:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "InputMethodWrapper"


# instance fields
.field final mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mContext:Landroid/content/Context;

.field final mInputMethod:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/inputmethod/InputMethod;",
            ">;"
        }
    .end annotation
.end field

.field final mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/inputmethodservice/AbstractInputMethodService;",
            ">;"
        }
    .end annotation
.end field

.field final mTargetSdkVersion:I


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/AbstractInputMethodService;Landroid/view/inputmethod/InputMethod;)V
    .locals 4
    .param p1, "context"    # Landroid/inputmethodservice/AbstractInputMethodService;
    .param p2, "inputMethod"    # Landroid/view/inputmethod/InputMethod;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethod$Stub;-><init>()V

    .line 115
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    .line 116
    invoke-virtual {p1}, Landroid/inputmethodservice/AbstractInputMethodService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mContext:Landroid/content/Context;

    .line 117
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 118
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Ljava/lang/ref/WeakReference;

    .line 119
    invoke-virtual {p1}, Landroid/inputmethodservice/AbstractInputMethodService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTargetSdkVersion:I

    .line 114
    return-void
.end method


# virtual methods
.method public attachToken(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 247
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 246
    return-void
.end method

.method public bindInput(Landroid/view/inputmethod/InputBinding;)V
    .locals 6
    .param p1, "binding"    # Landroid/view/inputmethod/InputBinding;

    .prologue
    .line 253
    const/4 v1, 0x0

    .line 254
    .local v1, "missingMethodFlags":I
    new-instance v0, Lcom/android/internal/view/InputConnectionWrapper;

    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    .line 255
    invoke-virtual {p1}, Landroid/view/inputmethod/InputBinding;->getConnectionToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v4

    const/4 v5, 0x0

    .line 254
    invoke-direct {v0, v3, v4, v5}, Lcom/android/internal/view/InputConnectionWrapper;-><init>(Ljava/lang/ref/WeakReference;Lcom/android/internal/view/IInputContext;I)V

    .line 256
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    new-instance v2, Landroid/view/inputmethod/InputBinding;

    invoke-direct {v2, v0, p1}, Landroid/view/inputmethod/InputBinding;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputBinding;)V

    .line 257
    .local v2, "nu":Landroid/view/inputmethod/InputBinding;
    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v4, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v5, 0x14

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 251
    return-void
.end method

.method public changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 3
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 332
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x50

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 331
    return-void
.end method

.method public createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V
    .locals 3
    .param p1, "channel"    # Landroid/view/InputChannel;
    .param p2, "callback"    # Lcom/android/internal/view/IInputSessionCallback;

    .prologue
    .line 283
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x28

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 282
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 220
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/inputmethodservice/AbstractInputMethodService;

    .line 221
    .local v7, "target":Landroid/inputmethodservice/AbstractInputMethodService;
    if-nez v7, :cond_0

    .line 222
    return-void

    .line 224
    :cond_0
    const-string/jumbo v0, "android.permission.DUMP"

    invoke-virtual {v7, v0}, Landroid/inputmethodservice/AbstractInputMethodService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Permission Denial: can\'t dump InputMethodManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 228
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 229
    const-string/jumbo v1, ", uid="

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 229
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    return-void

    .line 233
    :cond_1
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 234
    .local v5, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v8, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 237
    const-wide/16 v0, 0x5

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 238
    const-string/jumbo v0, "Timeout waiting for dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :cond_2
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v6

    .line 241
    .local v6, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v0, "Interrupted waiting for dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public executeMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 128
    iget-object v8, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethod;

    .line 130
    .local v5, "inputMethod":Landroid/view/inputmethod/InputMethod;
    if-nez v5, :cond_0

    iget v8, p1, Landroid/os/Message;->what:I

    if-eq v8, v9, :cond_0

    .line 131
    const-string/jumbo v8, "InputMethodWrapper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Input method reference was null, ignoring message: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 135
    :cond_0
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    .line 215
    const-string/jumbo v8, "InputMethodWrapper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unhandled message code: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void

    .line 137
    :sswitch_0
    iget-object v8, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/inputmethodservice/AbstractInputMethodService;

    .line 138
    .local v7, "target":Landroid/inputmethodservice/AbstractInputMethodService;
    if-nez v7, :cond_1

    .line 139
    return-void

    .line 141
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 143
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v8, Ljava/io/FileDescriptor;

    .line 144
    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v9, Ljava/io/PrintWriter;

    iget-object v10, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v10, [Ljava/lang/String;

    .line 143
    invoke-virtual {v7, v8, v9, v10}, Landroid/inputmethodservice/AbstractInputMethodService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    monitor-enter v9

    .line 149
    :try_start_1
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v8, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v9

    .line 151
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 152
    return-void

    .line 145
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v8, Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 156
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v7    # "target":Landroid/inputmethodservice/AbstractInputMethodService;
    :sswitch_1
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/IBinder;

    invoke-interface {v5, v8}, Landroid/view/inputmethod/InputMethod;->attachToken(Landroid/os/IBinder;)V

    .line 157
    return-void

    .line 160
    :sswitch_2
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/view/inputmethod/InputBinding;

    invoke-interface {v5, v8}, Landroid/view/inputmethod/InputMethod;->bindInput(Landroid/view/inputmethod/InputBinding;)V

    .line 161
    return-void

    .line 164
    :sswitch_3
    invoke-interface {v5}, Landroid/view/inputmethod/InputMethod;->unbindInput()V

    .line 165
    return-void

    .line 167
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 168
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 169
    .local v6, "missingMethods":I
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/view/IInputContext;

    .line 170
    .local v4, "inputContext":Lcom/android/internal/view/IInputContext;
    if-eqz v4, :cond_2

    .line 171
    new-instance v2, Lcom/android/internal/view/InputConnectionWrapper;

    iget-object v8, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v8, v4, v6}, Lcom/android/internal/view/InputConnectionWrapper;-><init>(Ljava/lang/ref/WeakReference;Lcom/android/internal/view/IInputContext;I)V

    .line 172
    :goto_1
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/view/inputmethod/EditorInfo;

    .line 173
    .local v3, "info":Landroid/view/inputmethod/EditorInfo;
    iget v8, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTargetSdkVersion:I

    invoke-virtual {v3, v8}, Landroid/view/inputmethod/EditorInfo;->makeCompatible(I)V

    .line 174
    invoke-interface {v5, v2, v3}, Landroid/view/inputmethod/InputMethod;->startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 175
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 176
    return-void

    .line 171
    .end local v3    # "info":Landroid/view/inputmethod/EditorInfo;
    :cond_2
    const/4 v2, 0x0

    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    goto :goto_1

    .line 179
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v4    # "inputContext":Lcom/android/internal/view/IInputContext;
    .end local v6    # "missingMethods":I
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 180
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 181
    .restart local v6    # "missingMethods":I
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/view/IInputContext;

    .line 182
    .restart local v4    # "inputContext":Lcom/android/internal/view/IInputContext;
    if-eqz v4, :cond_3

    .line 183
    new-instance v2, Lcom/android/internal/view/InputConnectionWrapper;

    iget-object v8, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v8, v4, v6}, Lcom/android/internal/view/InputConnectionWrapper;-><init>(Ljava/lang/ref/WeakReference;Lcom/android/internal/view/IInputContext;I)V

    .line 184
    :goto_2
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/view/inputmethod/EditorInfo;

    .line 185
    .restart local v3    # "info":Landroid/view/inputmethod/EditorInfo;
    iget v8, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTargetSdkVersion:I

    invoke-virtual {v3, v8}, Landroid/view/inputmethod/EditorInfo;->makeCompatible(I)V

    .line 186
    invoke-interface {v5, v2, v3}, Landroid/view/inputmethod/InputMethod;->restartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    .line 187
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 188
    return-void

    .line 183
    .end local v3    # "info":Landroid/view/inputmethod/EditorInfo;
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    goto :goto_2

    .line 191
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v4    # "inputContext":Lcom/android/internal/view/IInputContext;
    .end local v6    # "missingMethods":I
    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 192
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    new-instance v10, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;

    .line 193
    iget-object v11, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v8, Landroid/view/InputChannel;

    .line 194
    iget-object v9, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/view/IInputSessionCallback;

    .line 192
    invoke-direct {v10, v11, v8, v9}, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;-><init>(Landroid/content/Context;Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V

    invoke-interface {v5, v10}, Landroid/view/inputmethod/InputMethod;->createSession(Landroid/view/inputmethod/InputMethod$SessionCallback;)V

    .line 195
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 196
    return-void

    .line 199
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_7
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/view/inputmethod/InputMethodSession;

    .line 200
    iget v11, p1, Landroid/os/Message;->arg1:I

    if-eqz v11, :cond_4

    .line 199
    :goto_3
    invoke-interface {v5, v8, v9}, Landroid/view/inputmethod/InputMethod;->setSessionEnabled(Landroid/view/inputmethod/InputMethodSession;Z)V

    .line 201
    return-void

    :cond_4
    move v9, v10

    .line 200
    goto :goto_3

    .line 203
    :sswitch_8
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/view/inputmethod/InputMethodSession;

    invoke-interface {v5, v8}, Landroid/view/inputmethod/InputMethod;->revokeSession(Landroid/view/inputmethod/InputMethodSession;)V

    .line 204
    return-void

    .line 206
    :sswitch_9
    iget v9, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/ResultReceiver;

    invoke-interface {v5, v9, v8}, Landroid/view/inputmethod/InputMethod;->showSoftInput(ILandroid/os/ResultReceiver;)V

    .line 207
    return-void

    .line 209
    :sswitch_a
    iget v9, p1, Landroid/os/Message;->arg1:I

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/ResultReceiver;

    invoke-interface {v5, v9, v8}, Landroid/view/inputmethod/InputMethod;->hideSoftInput(ILandroid/os/ResultReceiver;)V

    .line 210
    return-void

    .line 212
    :sswitch_b
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-interface {v5, v8}, Landroid/view/inputmethod/InputMethod;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 213
    return-void

    .line 135
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
        0x14 -> :sswitch_2
        0x1e -> :sswitch_3
        0x20 -> :sswitch_4
        0x22 -> :sswitch_5
        0x28 -> :sswitch_6
        0x2d -> :sswitch_7
        0x32 -> :sswitch_8
        0x3c -> :sswitch_9
        0x46 -> :sswitch_a
        0x50 -> :sswitch_b
    .end sparse-switch
.end method

.method public getInternalInputMethod()Landroid/view/inputmethod/InputMethod;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethod;

    return-object v0
.end method

.method public hideSoftInput(ILandroid/os/ResultReceiver;)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 326
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x46

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 325
    return-void
.end method

.method public restartInput(Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;)V
    .locals 3
    .param p1, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p2, "missingMethods"    # I
    .param p3, "attribute"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 277
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x22

    invoke-virtual {v1, v2, p2, p1, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 276
    return-void
.end method

.method public revokeSession(Lcom/android/internal/view/IInputMethodSession;)V
    .locals 6
    .param p1, "session"    # Lcom/android/internal/view/IInputMethodSession;

    .prologue
    .line 306
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/inputmethodservice/IInputMethodSessionWrapper;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/inputmethodservice/IInputMethodSessionWrapper;->getInternalInputMethodSession()Landroid/view/inputmethod/InputMethodSession;

    move-result-object v2

    .line 308
    .local v2, "ls":Landroid/view/inputmethod/InputMethodSession;
    if-nez v2, :cond_0

    .line 309
    const-string/jumbo v3, "InputMethodWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Session is already finished: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    return-void

    .line 312
    :cond_0
    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v4, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v5, 0x32

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    .end local v2    # "ls":Landroid/view/inputmethod/InputMethodSession;
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v1

    .line 314
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "InputMethodWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Incoming session not of correct type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    .locals 7
    .param p1, "session"    # Lcom/android/internal/view/IInputMethodSession;
    .param p2, "enabled"    # Z

    .prologue
    .line 290
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/inputmethodservice/IInputMethodSessionWrapper;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/inputmethodservice/IInputMethodSessionWrapper;->getInternalInputMethodSession()Landroid/view/inputmethod/InputMethodSession;

    move-result-object v2

    .line 292
    .local v2, "ls":Landroid/view/inputmethod/InputMethodSession;
    if-nez v2, :cond_0

    .line 293
    const-string/jumbo v3, "InputMethodWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Session is already finished: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-void

    .line 296
    :cond_0
    iget-object v4, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v5, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 297
    if-eqz p2, :cond_1

    const/4 v3, 0x1

    :goto_0
    const/16 v6, 0x2d

    .line 296
    invoke-virtual {v5, v6, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v2    # "ls":Landroid/view/inputmethod/InputMethodSession;
    :goto_1
    return-void

    .line 297
    .restart local v2    # "ls":Landroid/view/inputmethod/InputMethodSession;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 298
    .end local v2    # "ls":Landroid/view/inputmethod/InputMethodSession;
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "InputMethodWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Incoming session not of correct type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public showSoftInput(ILandroid/os/ResultReceiver;)V
    .locals 3
    .param p1, "flags"    # I
    .param p2, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 320
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 319
    return-void
.end method

.method public startInput(Lcom/android/internal/view/IInputContext;ILandroid/view/inputmethod/EditorInfo;)V
    .locals 3
    .param p1, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p2, "missingMethods"    # I
    .param p3, "attribute"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 269
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x20

    invoke-virtual {v1, v2, p2, p1, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 268
    return-void
.end method

.method public unbindInput()V
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 261
    return-void
.end method
