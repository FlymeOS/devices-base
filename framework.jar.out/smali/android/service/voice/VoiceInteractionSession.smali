.class public Landroid/service/voice/VoiceInteractionSession;
.super Ljava/lang/Object;
.source "VoiceInteractionSession.java"

# interfaces
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/VoiceInteractionSession$1;,
        Landroid/service/voice/VoiceInteractionSession$2;,
        Landroid/service/voice/VoiceInteractionSession$3;,
        Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;,
        Landroid/service/voice/VoiceInteractionSession$CommandRequest;,
        Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;,
        Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;,
        Landroid/service/voice/VoiceInteractionSession$Insets;,
        Landroid/service/voice/VoiceInteractionSession$MyCallbacks;,
        Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;,
        Landroid/service/voice/VoiceInteractionSession$Request;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final KEY_CONTENT:Ljava/lang/String; = "content"

.field public static final KEY_DATA:Ljava/lang/String; = "data"

.field public static final KEY_RECEIVER_EXTRAS:Ljava/lang/String; = "receiverExtras"

.field public static final KEY_STRUCTURE:Ljava/lang/String; = "structure"

.field static final MSG_CANCEL:I = 0x7

.field static final MSG_CLOSE_SYSTEM_DIALOGS:I = 0x66

.field static final MSG_DESTROY:I = 0x67

.field static final MSG_HANDLE_ASSIST:I = 0x68

.field static final MSG_HANDLE_SCREENSHOT:I = 0x69

.field static final MSG_HIDE:I = 0x6b

.field static final MSG_ON_LOCKSCREEN_SHOWN:I = 0x6c

.field static final MSG_SHOW:I = 0x6a

.field static final MSG_START_ABORT_VOICE:I = 0x4

.field static final MSG_START_COMMAND:I = 0x5

.field static final MSG_START_COMPLETE_VOICE:I = 0x3

.field static final MSG_START_CONFIRMATION:I = 0x1

.field static final MSG_START_PICK_OPTION:I = 0x2

.field static final MSG_SUPPORTS_COMMANDS:I = 0x6

.field static final MSG_TASK_FINISHED:I = 0x65

.field static final MSG_TASK_STARTED:I = 0x64

.field public static final SHOW_SOURCE_ACTIVITY:I = 0x10

.field public static final SHOW_SOURCE_APPLICATION:I = 0x8

.field public static final SHOW_SOURCE_ASSIST_GESTURE:I = 0x4

.field public static final SHOW_WITH_ASSIST:I = 0x1

.field public static final SHOW_WITH_SCREENSHOT:I = 0x2

.field static final TAG:Ljava/lang/String; = "VoiceInteractionSession"


# instance fields
.field final mActiveRequests:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/service/voice/VoiceInteractionSession$Request;",
            ">;"
        }
    .end annotation
.end field

.field final mCallbacks:Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

.field mContentFrame:Landroid/widget/FrameLayout;

.field final mContext:Landroid/content/Context;

.field final mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field final mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

.field mInShowWindow:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mInitialized:Z

.field final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field final mInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field mRootView:Landroid/view/View;

.field final mSession:Landroid/service/voice/IVoiceInteractionSession;

.field mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

.field mTheme:I

.field mThemeAttrs:Landroid/content/res/TypedArray;

.field final mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

.field mToken:Landroid/os/IBinder;

.field final mWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/service/voice/VoiceInteractionSession;",
            ">;"
        }
    .end annotation
.end field

.field mWindow:Landroid/inputmethodservice/SoftInputWindow;

.field mWindowAdded:Z

.field mWindowVisible:Z

.field mWindowWasVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 952
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, v0}, Landroid/service/voice/VoiceInteractionSession;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 951
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 955
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    .line 144
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    .line 146
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$Insets;

    invoke-direct {v0}, Landroid/service/voice/VoiceInteractionSession$Insets;-><init>()V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mTmpInsets:Landroid/service/voice/VoiceInteractionSession$Insets;

    .line 149
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 148
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWeakRef:Ljava/lang/ref/WeakReference;

    .line 151
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$1;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionSession$1;-><init>(Landroid/service/voice/VoiceInteractionSession;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 227
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$2;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionSession$2;-><init>(Landroid/service/voice/VoiceInteractionSession;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 888
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionSession$MyCallbacks;-><init>(Landroid/service/voice/VoiceInteractionSession;)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mCallbacks:Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

    .line 941
    new-instance v0, Landroid/service/voice/VoiceInteractionSession$3;

    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionSession$3;-><init>(Landroid/service/voice/VoiceInteractionSession;)V

    .line 940
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 956
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    .line 957
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 958
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mCallbacks:Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

    const/4 v3, 0x1

    .line 957
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mHandlerCaller:Lcom/android/internal/os/HandlerCaller;

    .line 955
    return-void
.end method

.method private doOnCreate()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    .line 1275
    iget v0, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    :goto_0
    iput v0, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    .line 1277
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    .line 1278
    const-string/jumbo v1, "layout_inflater"

    .line 1277
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInflater:Landroid/view/LayoutInflater;

    .line 1279
    new-instance v0, Landroid/inputmethodservice/SoftInputWindow;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "VoiceInteractionSession"

    iget v3, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    .line 1280
    iget-object v4, p0, Landroid/service/voice/VoiceInteractionSession;->mCallbacks:Landroid/service/voice/VoiceInteractionSession$MyCallbacks;

    iget-object v6, p0, Landroid/service/voice/VoiceInteractionSession;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    .line 1281
    const/16 v7, 0x7ef

    const/16 v8, 0x50

    const/4 v9, 0x1

    move-object v5, p0

    .line 1279
    invoke-direct/range {v0 .. v9}, Landroid/inputmethodservice/SoftInputWindow;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/inputmethodservice/SoftInputWindow$Callback;Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;IIZ)V

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    .line 1282
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1283
    const v1, 0x1010100

    .line 1282
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1286
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->initViews()V

    .line 1287
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v10, v10}, Landroid/view/Window;->setLayout(II)V

    .line 1288
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/SoftInputWindow;->setToken(Landroid/os/IBinder;)V

    .line 1274
    return-void

    .line 1276
    :cond_0
    const v0, 0x103048b

    goto :goto_0
.end method


# virtual methods
.method addRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V
    .locals 2
    .param p1, "req"    # Landroid/service/voice/VoiceInteractionSession$Request;

    .prologue
    .line 966
    monitor-enter p0

    .line 967
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/service/voice/VoiceInteractionSession$Request;->mInterface:Lcom/android/internal/app/IVoiceInteractorRequest;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractorRequest;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 965
    return-void

    .line 966
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public closeSystemDialogs()V
    .locals 3

    .prologue
    .line 1228
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 1229
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Can\'t call before onCreate()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1232
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->closeSystemDialogs(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1227
    :goto_0
    return-void

    .line 1233
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method doCreate(Lcom/android/internal/app/IVoiceInteractionManagerService;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "service"    # Lcom/android/internal/app/IVoiceInteractionManagerService;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 984
    iput-object p1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 985
    iput-object p2, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    .line 986
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->onCreate()V

    .line 983
    return-void
.end method

.method doDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1045
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->onDestroy()V

    .line 1046
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInitialized:Z

    if-eqz v0, :cond_1

    .line 1047
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1048
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 1047
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 1049
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowAdded:Z

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->dismiss()V

    .line 1051
    iput-boolean v2, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowAdded:Z

    .line 1053
    :cond_0
    iput-boolean v2, p0, Landroid/service/voice/VoiceInteractionSession;->mInitialized:Z

    .line 1044
    :cond_1
    return-void
.end method

.method doHide()V
    .locals 1

    .prologue
    .line 1037
    iget-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->hide()V

    .line 1039
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    .line 1040
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->onHide()V

    .line 1036
    :cond_0
    return-void
.end method

.method doOnHandleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Ljava/lang/Throwable;Landroid/app/assist/AssistContent;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "structure"    # Landroid/app/assist/AssistStructure;
    .param p3, "failure"    # Ljava/lang/Throwable;
    .param p4, "content"    # Landroid/app/assist/AssistContent;

    .prologue
    .line 1335
    if-eqz p3, :cond_0

    .line 1336
    invoke-virtual {p0, p3}, Landroid/service/voice/VoiceInteractionSession;->onAssistStructureFailure(Ljava/lang/Throwable;)V

    .line 1338
    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Landroid/service/voice/VoiceInteractionSession;->onHandleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;)V

    .line 1334
    return-void
.end method

.method doOnHandleAssistSecondary(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Ljava/lang/Throwable;Landroid/app/assist/AssistContent;II)V
    .locals 6
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "structure"    # Landroid/app/assist/AssistStructure;
    .param p3, "failure"    # Ljava/lang/Throwable;
    .param p4, "content"    # Landroid/app/assist/AssistContent;
    .param p5, "index"    # I
    .param p6, "count"    # I

    .prologue
    .line 1343
    if-eqz p3, :cond_0

    .line 1344
    invoke-virtual {p0, p3}, Landroid/service/voice/VoiceInteractionSession;->onAssistStructureFailure(Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    .line 1346
    invoke-virtual/range {v0 .. v5}, Landroid/service/voice/VoiceInteractionSession;->onHandleAssistSecondary(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V

    .line 1342
    return-void
.end method

.method doShow(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V
    .locals 5
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flags"    # I
    .param p3, "showCallback"    # Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 993
    iget-boolean v1, p0, Landroid/service/voice/VoiceInteractionSession;->mInShowWindow:Z

    if-eqz v1, :cond_0

    .line 994
    const-string/jumbo v1, "VoiceInteractionSession"

    const-string/jumbo v2, "Re-entrance in to showWindow"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    return-void

    .line 999
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/service/voice/VoiceInteractionSession;->mInShowWindow:Z

    .line 1000
    iget-boolean v1, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    if-nez v1, :cond_1

    .line 1001
    iget-boolean v1, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowAdded:Z

    if-nez v1, :cond_1

    .line 1002
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowAdded:Z

    .line 1003
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->onCreateContentView()Landroid/view/View;

    move-result-object v0

    .line 1004
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1005
    invoke-virtual {p0, v0}, Landroid/service/voice/VoiceInteractionSession;->setContentView(Landroid/view/View;)V

    .line 1009
    .end local v0    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/service/voice/VoiceInteractionSession;->onShow(Landroid/os/Bundle;I)V

    .line 1010
    iget-boolean v1, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    if-nez v1, :cond_2

    .line 1011
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    .line 1012
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v1}, Landroid/inputmethodservice/SoftInputWindow;->show()V

    .line 1014
    :cond_2
    if-eqz p3, :cond_3

    .line 1015
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1016
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 1017
    new-instance v2, Landroid/service/voice/VoiceInteractionSession$4;

    invoke-direct {v2, p0, p3}, Landroid/service/voice/VoiceInteractionSession$4;-><init>(Landroid/service/voice/VoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    .line 1016
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1031
    :cond_3
    iput-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowWasVisible:Z

    .line 1032
    iput-boolean v4, p0, Landroid/service/voice/VoiceInteractionSession;->mInShowWindow:Z

    .line 989
    return-void

    .line 1030
    :catchall_0
    move-exception v1

    .line 1031
    iput-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowWasVisible:Z

    .line 1032
    iput-boolean v4, p0, Landroid/service/voice/VoiceInteractionSession;->mInShowWindow:Z

    .line 1030
    throw v1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 1620
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mToken="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1621
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mTheme=#"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1622
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mInitialized="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mInitialized:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1623
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mWindowAdded="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowAdded:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1624
    const-string/jumbo v3, " mWindowVisible="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowVisible:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1625
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mWindowWasVisible="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mWindowWasVisible:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1626
    const-string/jumbo v3, " mInShowWindow="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, p0, Landroid/service/voice/VoiceInteractionSession;->mInShowWindow:Z

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1627
    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1628
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "Active requests:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1629
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1630
    .local v1, "innerPrefix":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1631
    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/voice/VoiceInteractionSession$Request;

    .line 1632
    .local v2, "req":Landroid/service/voice/VoiceInteractionSession$Request;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1633
    const-string/jumbo v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1634
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1635
    invoke-virtual {v2, v1, p2, p3, p4}, Landroid/service/voice/VoiceInteractionSession$Request;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1630
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1619
    .end local v0    # "i":I
    .end local v1    # "innerPrefix":Ljava/lang/String;
    .end local v2    # "req":Landroid/service/voice/VoiceInteractionSession$Request;
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 1257
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 1258
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Can\'t call before onCreate()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1261
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->finish(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1256
    :goto_0
    return-void

    .line 1262
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 962
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDisabledShowContext()I
    .locals 2

    .prologue
    .line 1089
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getDisabledShowContext()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1090
    :catch_0
    move-exception v0

    .line 1091
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getUserDisabledShowContext()I
    .locals 2

    .prologue
    .line 1106
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getUserDisabledShowContext()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1107
    :catch_0
    move-exception v0

    .line 1108
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public getWindow()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 1248
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    return-object v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 1140
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 1141
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Can\'t call before onCreate()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1144
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->hideSessionFromSession(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1139
    :goto_0
    return-void

    .line 1145
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method initViews()V
    .locals 3

    .prologue
    .line 1058
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInitialized:Z

    .line 1060
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/R$styleable;->VoiceInteractionSession:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mThemeAttrs:Landroid/content/res/TypedArray;

    .line 1061
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mInflater:Landroid/view/LayoutInflater;

    .line 1062
    const v1, 0x1090104

    const/4 v2, 0x0

    .line 1061
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    .line 1063
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    .line 1064
    const/16 v1, 0x700

    .line 1063
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1066
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/SoftInputWindow;->setContentView(Landroid/view/View;)V

    .line 1067
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 1069
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mRootView:Landroid/view/View;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContentFrame:Landroid/widget/FrameLayout;

    .line 1057
    return-void
.end method

.method isRequestActive(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "reqInterface"    # Landroid/os/IBinder;

    .prologue
    .line 972
    monitor-enter p0

    .line 973
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 972
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAssistStructureFailure(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "failure"    # Ljava/lang/Throwable;

    .prologue
    .line 1359
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 1455
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->hide()V

    .line 1454
    return-void
.end method

.method public onCancelRequest(Landroid/service/voice/VoiceInteractionSession$Request;)V
    .locals 0
    .param p1, "request"    # Landroid/service/voice/VoiceInteractionSession$Request;

    .prologue
    .line 1605
    return-void
.end method

.method public onCloseSystemDialogs()V
    .locals 0

    .prologue
    .line 1464
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->hide()V

    .line 1463
    return-void
.end method

.method public onComputeInsets(Landroid/service/voice/VoiceInteractionSession$Insets;)V
    .locals 4
    .param p1, "outInsets"    # Landroid/service/voice/VoiceInteractionSession$Insets;

    .prologue
    const/4 v3, 0x0

    .line 1496
    iget-object v1, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 1497
    iget-object v1, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 1498
    iget-object v1, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 1499
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->getWindow()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1500
    .local v0, "decor":Landroid/view/View;
    iget-object v1, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1501
    iput v3, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->touchableInsets:I

    .line 1502
    iget-object v1, p1, Landroid/service/voice/VoiceInteractionSession$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V

    .line 1495
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1475
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 1271
    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionSession;->doOnCreate()V

    .line 1270
    return-void
.end method

.method public onCreateContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1322
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 1315
    return-void
.end method

.method public onGetSupportedCommands([Ljava/lang/String;)[Z
    .locals 1
    .param p1, "commands"    # [Ljava/lang/String;

    .prologue
    .line 1541
    array-length v0, p1

    new-array v0, v0, [Z

    return-object v0
.end method

.method public onHandleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "structure"    # Landroid/app/assist/AssistStructure;
    .param p3, "content"    # Landroid/app/assist/AssistContent;

    .prologue
    .line 1381
    return-void
.end method

.method public onHandleAssistSecondary(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V
    .locals 0
    .param p1, "data"    # Landroid/os/Bundle;
    .param p2, "structure"    # Landroid/app/assist/AssistStructure;
    .param p3, "content"    # Landroid/app/assist/AssistContent;
    .param p4, "index"    # I
    .param p5, "count"    # I

    .prologue
    .line 1420
    return-void
.end method

.method public onHandleScreenshot(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1429
    return-void
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 1309
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1433
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1437
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1445
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1441
    const/4 v0, 0x0

    return v0
.end method

.method public onLockscreenShown()V
    .locals 0

    .prologue
    .line 1471
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->hide()V

    .line 1470
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 1479
    return-void
.end method

.method public onRequestAbortVoice(Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;)V
    .locals 0
    .param p1, "request"    # Landroid/service/voice/VoiceInteractionSession$AbortVoiceRequest;

    .prologue
    .line 1584
    return-void
.end method

.method public onRequestCommand(Landroid/service/voice/VoiceInteractionSession$CommandRequest;)V
    .locals 0
    .param p1, "request"    # Landroid/service/voice/VoiceInteractionSession$CommandRequest;

    .prologue
    .line 1594
    return-void
.end method

.method public onRequestCompleteVoice(Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;)V
    .locals 0
    .param p1, "request"    # Landroid/service/voice/VoiceInteractionSession$CompleteVoiceRequest;

    .prologue
    .line 1572
    return-void
.end method

.method public onRequestConfirmation(Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;)V
    .locals 0
    .param p1, "request"    # Landroid/service/voice/VoiceInteractionSession$ConfirmationRequest;

    .prologue
    .line 1551
    return-void
.end method

.method public onRequestPickOption(Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;)V
    .locals 0
    .param p1, "request"    # Landroid/service/voice/VoiceInteractionSession$PickOptionRequest;

    .prologue
    .line 1560
    return-void
.end method

.method public onShow(Landroid/os/Bundle;I)V
    .locals 0
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "showFlags"    # I

    .prologue
    .line 1303
    return-void
.end method

.method public onTaskFinished(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "taskId"    # I

    .prologue
    .line 1528
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionSession;->hide()V

    .line 1527
    return-void
.end method

.method public onTaskStarted(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "taskId"    # I

    .prologue
    .line 1513
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 1483
    return-void
.end method

.method removeRequest(Landroid/os/IBinder;)Landroid/service/voice/VoiceInteractionSession$Request;
    .locals 1
    .param p1, "reqInterface"    # Landroid/os/IBinder;

    .prologue
    .line 978
    monitor-enter p0

    .line 979
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mActiveRequests:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionSession$Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 978
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, -0x1

    .line 1326
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1327
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContentFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1330
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mContentFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    .line 1325
    return-void
.end method

.method public setDisabledShowContext(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 1078
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->setDisabledShowContext(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1076
    :goto_0
    return-void

    .line 1079
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setKeepAwake(Z)V
    .locals 3
    .param p1, "keepAwake"    # Z

    .prologue
    .line 1213
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 1214
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Can\'t call before onCreate()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1217
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->setKeepAwake(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1212
    :goto_0
    return-void

    .line 1218
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setTheme(I)V
    .locals 2
    .param p1, "theme"    # I

    .prologue
    .line 1156
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_0

    .line 1157
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1159
    :cond_0
    iput p1, p0, Landroid/service/voice/VoiceInteractionSession;->mTheme:I

    .line 1155
    return-void
.end method

.method public show(Landroid/os/Bundle;I)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flags"    # I

    .prologue
    .line 1126
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 1127
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Can\'t call before onCreate()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1130
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->showSessionFromSession(Landroid/os/IBinder;Landroid/os/Bundle;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1125
    :goto_0
    return-void

    .line 1131
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startVoiceActivity(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1186
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    if-nez v2, :cond_0

    .line 1187
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Can\'t call before onCreate()"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1190
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->migrateExtraStreamToClipData()Z

    .line 1191
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->prepareToLeaveProcess(Landroid/content/Context;)V

    .line 1192
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession;->mToken:Landroid/os/IBinder;

    .line 1193
    iget-object v4, p0, Landroid/service/voice/VoiceInteractionSession;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    .line 1192
    invoke-interface {v2, v3, p1, v4}, Lcom/android/internal/app/IVoiceInteractionManagerService;->startVoiceActivity(Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I

    move-result v1

    .line 1194
    .local v1, "res":I
    invoke-static {v1, p1}, Landroid/app/Instrumentation;->checkStartActivityResult(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1185
    .end local v1    # "res":I
    :goto_0
    return-void

    .line 1195
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
