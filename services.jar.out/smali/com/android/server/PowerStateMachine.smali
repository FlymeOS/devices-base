.class public Lcom/android/server/PowerStateMachine;
.super Ljava/lang/Object;
.source "PowerStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PowerStateMachine$OnStateChangeListener;,
        Lcom/android/server/PowerStateMachine$StateHandler;,
        Lcom/android/server/PowerStateMachine$TimerThread;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final ENTER_IDLE_SCAN_TIME:J = 0xea60L

.field private static final ENTER_IDLE_TIME:J = 0x18b820L

.field private static final ENTER_PAUSE_SCAN_TIME:J = 0x2710L

.field private static final ENTER_PAUSE_TIME:J = 0x2bf20L

.field private static final ENTER_STANDBY_NIGHT_SCAN_TIME:J = 0xea60L

.field private static final ENTER_STANDBY_NIGHT_TIME:J = 0x1b7740L

.field private static final MSG_ENTER_ACTIVE:I = 0x0

.field private static final MSG_ENTER_IDLE:I = 0x4

.field private static final MSG_ENTER_NIGHT:I = 0x7

.field private static final MSG_ENTER_PAUSE:I = 0x2

.field private static final MSG_ENTER_PLUG:I = 0x9

.field private static final MSG_ENTER_SCREEN_ON:I = 0x8

.field private static final MSG_ENTER_STANDBY:I = 0x6

.field private static final MSG_ENTER_WAIT_IDLE:I = 0x3

.field private static final MSG_ENTER_WAIT_PAUSE:I = 0x1

.field private static final MSG_ENTER_WAIT_STANDBY_NIGHT:I = 0x5

.field private static final SCREEN_OFF:I = 0x1

.field private static final SCREEN_ON:I = 0x0

.field public static final STATE_ACTIVE:I = 0x0

.field public static final STATE_IDLE:I = 0x2

.field private static final STATE_MODE_ACTIVE:I = 0x0

.field private static final STATE_MODE_IDLE:I = 0x4

.field private static final STATE_MODE_NIGHT:I = 0x7

.field private static final STATE_MODE_PAUSE:I = 0x2

.field private static final STATE_MODE_STANDBY:I = 0x6

.field private static final STATE_MODE_WAIT_IDLE:I = 0x3

.field private static final STATE_MODE_WAIT_PAUSE:I = 0x1

.field private static final STATE_MODE_WAIT_STANDBY_NIGHT:I = 0x5

.field public static final STATE_NIGHT:I = 0x4

.field public static final STATE_PAUSE:I = 0x1

.field public static final STATE_STANDBY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MzPowerStateMachine"

.field private static mHandlerThread:Landroid/os/HandlerThread; = null

.field private static mInstance:Lcom/android/server/PowerStateMachine; = null

.field private static final mIsLockPatternEnabledMethodString:Ljava/lang/String; = "isLockPatternEnabled"

.field private static final mIsisLockPasswordEnabledMethodString:Ljava/lang/String; = "isLockPasswordEnabled"

.field private static final mLockPatternClassString:Ljava/lang/String; = "com.android.internal.widget.LockPatternUtils"

.field private static mStateHandler:Landroid/os/Handler;


# instance fields
.field private mClazz:Ljava/lang/Object;

.field private mConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIdleStartTime:J

.field private mIsLockPasswordEnabled:Ljava/lang/reflect/Method;

.field private mIsLockPatternEnabled:Ljava/lang/reflect/Method;

.field private mListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/server/PowerStateMachine$OnStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLockScreenPatternUtils:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private mPauseStartTime:J

.field private mPauseTimeThread:Z

.field private mPlugStatus:Z

.field mPowerStateReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenState:I

.field private mStandbyNigStartTime:J

.field private mState:I

.field private mStateMode:I

.field private final mSyncState:Ljava/lang/Object;

.field private mSyncTimeThread:Ljava/lang/Object;

.field private mTimerThread:Lcom/android/server/PowerStateMachine$TimerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/PowerStateMachine;->mInstance:Lcom/android/server/PowerStateMachine;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/PowerStateMachine;->mSyncTimeThread:Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/PowerStateMachine;->mSyncState:Ljava/lang/Object;

    .line 76
    iput v1, p0, Lcom/android/server/PowerStateMachine;->mStateMode:I

    .line 77
    iput v1, p0, Lcom/android/server/PowerStateMachine;->mState:I

    .line 78
    iput v1, p0, Lcom/android/server/PowerStateMachine;->mScreenState:I

    .line 83
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/server/PowerStateMachine;->mListeners:Ljava/util/Vector;

    .line 84
    iput-boolean v1, p0, Lcom/android/server/PowerStateMachine;->mPlugStatus:Z

    .line 85
    iput-boolean v1, p0, Lcom/android/server/PowerStateMachine;->mPauseTimeThread:Z

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PowerStateMachine;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 96
    iput-wide v2, p0, Lcom/android/server/PowerStateMachine;->mPauseStartTime:J

    .line 97
    iput-wide v2, p0, Lcom/android/server/PowerStateMachine;->mIdleStartTime:J

    .line 98
    iput-wide v2, p0, Lcom/android/server/PowerStateMachine;->mStandbyNigStartTime:J

    .line 508
    new-instance v0, Lcom/android/server/PowerStateMachine$1;

    invoke-direct {v0, p0}, Lcom/android/server/PowerStateMachine$1;-><init>(Lcom/android/server/PowerStateMachine;)V

    iput-object v0, p0, Lcom/android/server/PowerStateMachine;->mPowerStateReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/PowerStateMachine;->mSyncTimeThread:Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/PowerStateMachine;->mSyncState:Ljava/lang/Object;

    .line 76
    iput v1, p0, Lcom/android/server/PowerStateMachine;->mStateMode:I

    .line 77
    iput v1, p0, Lcom/android/server/PowerStateMachine;->mState:I

    .line 78
    iput v1, p0, Lcom/android/server/PowerStateMachine;->mScreenState:I

    .line 83
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/server/PowerStateMachine;->mListeners:Ljava/util/Vector;

    .line 84
    iput-boolean v1, p0, Lcom/android/server/PowerStateMachine;->mPlugStatus:Z

    .line 85
    iput-boolean v1, p0, Lcom/android/server/PowerStateMachine;->mPauseTimeThread:Z

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PowerStateMachine;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 96
    iput-wide v2, p0, Lcom/android/server/PowerStateMachine;->mPauseStartTime:J

    .line 97
    iput-wide v2, p0, Lcom/android/server/PowerStateMachine;->mIdleStartTime:J

    .line 98
    iput-wide v2, p0, Lcom/android/server/PowerStateMachine;->mStandbyNigStartTime:J

    .line 508
    new-instance v0, Lcom/android/server/PowerStateMachine$1;

    invoke-direct {v0, p0}, Lcom/android/server/PowerStateMachine$1;-><init>(Lcom/android/server/PowerStateMachine;)V

    iput-object v0, p0, Lcom/android/server/PowerStateMachine;->mPowerStateReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    iput-object p1, p0, Lcom/android/server/PowerStateMachine;->mContext:Landroid/content/Context;

    .line 103
    invoke-direct {p0}, Lcom/android/server/PowerStateMachine;->initVariable()V

    .line 104
    invoke-direct {p0}, Lcom/android/server/PowerStateMachine;->initFilter()V

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/PowerStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PowerStateMachine;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/server/PowerStateMachine;->getStateMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/PowerStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PowerStateMachine;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/server/PowerStateMachine;->mPauseTimeThread:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/PowerStateMachine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/server/PowerStateMachine;->handleStateModeChange(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/PowerStateMachine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PowerStateMachine;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/server/PowerStateMachine;->mPlugStatus:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/PowerStateMachine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/android/server/PowerStateMachine;->mPlugStatus:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/PowerStateMachine;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerStateMachine;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/server/PowerStateMachine;->handlePlug(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/PowerStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PowerStateMachine;

    .prologue
    .line 29
    iget v0, p0, Lcom/android/server/PowerStateMachine;->mScreenState:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/PowerStateMachine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerStateMachine;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/android/server/PowerStateMachine;->mScreenState:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/PowerStateMachine;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerStateMachine;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/server/PowerStateMachine;->removeAllMessages()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/PowerStateMachine;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/PowerStateMachine;

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/android/server/PowerStateMachine;->mPauseStartTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/server/PowerStateMachine;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PowerStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/android/server/PowerStateMachine;->mPauseStartTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/server/PowerStateMachine;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/PowerStateMachine;

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/android/server/PowerStateMachine;->mIdleStartTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/server/PowerStateMachine;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PowerStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/android/server/PowerStateMachine;->mIdleStartTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/server/PowerStateMachine;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/PowerStateMachine;

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/android/server/PowerStateMachine;->mStandbyNigStartTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/server/PowerStateMachine;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PowerStateMachine;
    .param p1, "x1"    # J

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/android/server/PowerStateMachine;->mStandbyNigStartTime:J

    return-wide p1
.end method

.method static synthetic access$500()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/android/server/PowerStateMachine;->mStateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/PowerStateMachine;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PowerStateMachine;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/server/PowerStateMachine;->enterStandbyOrNight()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/PowerStateMachine;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PowerStateMachine;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/server/PowerStateMachine;->mSyncTimeThread:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/PowerStateMachine;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PowerStateMachine;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/server/PowerStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/PowerStateMachine;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PowerStateMachine;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/server/PowerStateMachine;->isLockPasswordEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private doNotify()V
    .locals 2

    .prologue
    .line 342
    iget-object v1, p0, Lcom/android/server/PowerStateMachine;->mSyncTimeThread:Ljava/lang/Object;

    monitor-enter v1

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerStateMachine;->mSyncTimeThread:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 345
    monitor-exit v1

    .line 346
    return-void

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private enterStandbyOrNight()I
    .locals 4

    .prologue
    const/4 v2, 0x7

    .line 349
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 350
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 351
    .local v1, "hour":I
    const/16 v3, 0x17

    if-ge v1, v3, :cond_0

    if-ltz v1, :cond_1

    if-gt v1, v2, :cond_1

    .line 357
    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x6

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/PowerStateMachine;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    sget-object v0, Lcom/android/server/PowerStateMachine;->mInstance:Lcom/android/server/PowerStateMachine;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/android/server/PowerStateMachine;

    invoke-direct {v0, p0}, Lcom/android/server/PowerStateMachine;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/PowerStateMachine;->mInstance:Lcom/android/server/PowerStateMachine;

    .line 114
    :cond_0
    sget-object v0, Lcom/android/server/PowerStateMachine;->mInstance:Lcom/android/server/PowerStateMachine;

    return-object v0
.end method

.method private getStateMode()I
    .locals 2

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/server/PowerStateMachine;->mSyncState:Ljava/lang/Object;

    monitor-enter v1

    .line 192
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerStateMachine;->mStateMode:I

    monitor-exit v1

    return v0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handlePlug(Z)V
    .locals 4
    .param p1, "plug"    # Z

    .prologue
    .line 311
    if-nez p1, :cond_0

    .line 312
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/PowerStateMachine;->mPauseTimeThread:Z

    .line 313
    invoke-direct {p0}, Lcom/android/server/PowerStateMachine;->getStateMode()I

    move-result v0

    .line 314
    .local v0, "stateMode":I
    packed-switch v0, :pswitch_data_0

    .line 331
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/PowerStateMachine;->doNotify()V

    .line 339
    .end local v0    # "stateMode":I
    :goto_1
    return-void

    .line 316
    .restart local v0    # "stateMode":I
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/PowerStateMachine;->mPauseStartTime:J

    goto :goto_0

    .line 320
    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/PowerStateMachine;->mIdleStartTime:J

    goto :goto_0

    .line 324
    :pswitch_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/PowerStateMachine;->mStandbyNigStartTime:J

    goto :goto_0

    .line 334
    .end local v0    # "stateMode":I
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/PowerStateMachine;->mPauseTimeThread:Z

    goto :goto_1

    .line 314
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private handleStateModeChange(I)V
    .locals 4
    .param p1, "enterState"    # I

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/android/server/PowerStateMachine;->verifyStateChange(I)Z

    move-result v0

    .line 288
    .local v0, "canChange":Z
    if-eqz v0, :cond_0

    .line 289
    invoke-direct {p0, p1}, Lcom/android/server/PowerStateMachine;->setStateMode(I)V

    .line 290
    invoke-virtual {p0, p1}, Lcom/android/server/PowerStateMachine;->handleStateChange(I)V

    .line 292
    packed-switch p1, :pswitch_data_0

    .line 308
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 294
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/PowerStateMachine;->mPauseStartTime:J

    .line 296
    invoke-direct {p0}, Lcom/android/server/PowerStateMachine;->doNotify()V

    goto :goto_0

    .line 299
    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/PowerStateMachine;->mIdleStartTime:J

    goto :goto_0

    .line 302
    :pswitch_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/PowerStateMachine;->mStandbyNigStartTime:J

    goto :goto_0

    .line 292
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private initFilter()V
    .locals 3

    .prologue
    .line 142
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 143
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/android/server/PowerStateMachine;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/PowerStateMachine;->mPowerStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    return-void
.end method

.method private initVariable()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "StateHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/PowerStateMachine;->mHandlerThread:Landroid/os/HandlerThread;

    .line 119
    sget-object v1, Lcom/android/server/PowerStateMachine;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 120
    sget-object v1, Lcom/android/server/PowerStateMachine;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 121
    .local v0, "looper":Landroid/os/Looper;
    new-instance v1, Lcom/android/server/PowerStateMachine$StateHandler;

    invoke-direct {v1, p0, v0}, Lcom/android/server/PowerStateMachine$StateHandler;-><init>(Lcom/android/server/PowerStateMachine;Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/PowerStateMachine;->mStateHandler:Landroid/os/Handler;

    .line 126
    iget-object v1, p0, Lcom/android/server/PowerStateMachine;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/server/PowerStateMachine;->isScreenOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    iput v3, p0, Lcom/android/server/PowerStateMachine;->mScreenState:I

    .line 128
    iput v3, p0, Lcom/android/server/PowerStateMachine;->mStateMode:I

    .line 137
    :goto_0
    new-instance v1, Lcom/android/server/PowerStateMachine$TimerThread;

    invoke-direct {v1, p0}, Lcom/android/server/PowerStateMachine$TimerThread;-><init>(Lcom/android/server/PowerStateMachine;)V

    iput-object v1, p0, Lcom/android/server/PowerStateMachine;->mTimerThread:Lcom/android/server/PowerStateMachine$TimerThread;

    .line 138
    iget-object v1, p0, Lcom/android/server/PowerStateMachine;->mTimerThread:Lcom/android/server/PowerStateMachine$TimerThread;

    invoke-virtual {v1}, Lcom/android/server/PowerStateMachine$TimerThread;->start()V

    .line 139
    return-void

    .line 131
    :cond_0
    iput v4, p0, Lcom/android/server/PowerStateMachine;->mScreenState:I

    .line 132
    iput v4, p0, Lcom/android/server/PowerStateMachine;->mStateMode:I

    .line 133
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/PowerStateMachine;->mPauseStartTime:J

    goto :goto_0
.end method

.method private isLockPasswordEnabled(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 567
    :try_start_0
    iget-object v3, p0, Lcom/android/server/PowerStateMachine;->mLockScreenPatternUtils:Ljava/lang/Class;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/PowerStateMachine;->mIsLockPasswordEnabled:Ljava/lang/reflect/Method;

    if-nez v3, :cond_2

    .line 568
    :cond_0
    const-string v3, "com.android.internal.widget.LockPatternUtils"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerStateMachine;->mLockScreenPatternUtils:Ljava/lang/Class;

    .line 569
    iget-object v3, p0, Lcom/android/server/PowerStateMachine;->mLockScreenPatternUtils:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 570
    .local v0, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 571
    aget-object v3, v0, v2

    iput-object v3, p0, Lcom/android/server/PowerStateMachine;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 572
    iget-object v3, p0, Lcom/android/server/PowerStateMachine;->mConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_3

    .line 575
    :cond_1
    iget-object v3, p0, Lcom/android/server/PowerStateMachine;->mConstructor:Ljava/lang/reflect/Constructor;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 576
    iget-object v3, p0, Lcom/android/server/PowerStateMachine;->mConstructor:Ljava/lang/reflect/Constructor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerStateMachine;->mClazz:Ljava/lang/Object;

    .line 577
    iget-object v3, p0, Lcom/android/server/PowerStateMachine;->mLockScreenPatternUtils:Ljava/lang/Class;

    const-string v5, "isLockPasswordEnabled"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerStateMachine;->mIsLockPasswordEnabled:Ljava/lang/reflect/Method;

    .line 579
    .end local v0    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/PowerStateMachine;->mIsLockPasswordEnabled:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/android/server/PowerStateMachine;->mClazz:Ljava/lang/Object;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 584
    :goto_1
    return v3

    .line 570
    .restart local v0    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .restart local v2    # "i":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 581
    .end local v0    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 582
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MzPowerStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isLockPasswordEnabled exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v4

    .line 584
    goto :goto_1
.end method

.method private isLockPatternEnabled(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 590
    :try_start_0
    iget-object v3, p0, Lcom/android/server/PowerStateMachine;->mLockScreenPatternUtils:Ljava/lang/Class;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/PowerStateMachine;->mIsLockPatternEnabled:Ljava/lang/reflect/Method;

    if-nez v3, :cond_2

    .line 591
    :cond_0
    const-string v3, "com.android.internal.widget.LockPatternUtils"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerStateMachine;->mLockScreenPatternUtils:Ljava/lang/Class;

    .line 592
    iget-object v3, p0, Lcom/android/server/PowerStateMachine;->mLockScreenPatternUtils:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 593
    .local v0, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 594
    aget-object v3, v0, v2

    iput-object v3, p0, Lcom/android/server/PowerStateMachine;->mConstructor:Ljava/lang/reflect/Constructor;

    .line 595
    iget-object v3, p0, Lcom/android/server/PowerStateMachine;->mConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v3}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_3

    .line 598
    :cond_1
    iget-object v3, p0, Lcom/android/server/PowerStateMachine;->mConstructor:Ljava/lang/reflect/Constructor;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 599
    iget-object v3, p0, Lcom/android/server/PowerStateMachine;->mConstructor:Ljava/lang/reflect/Constructor;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerStateMachine;->mClazz:Ljava/lang/Object;

    .line 600
    iget-object v3, p0, Lcom/android/server/PowerStateMachine;->mLockScreenPatternUtils:Ljava/lang/Class;

    const-string v5, "isLockPatternEnabled"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/PowerStateMachine;->mIsLockPatternEnabled:Ljava/lang/reflect/Method;

    .line 602
    .end local v0    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/PowerStateMachine;->mIsLockPatternEnabled:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/android/server/PowerStateMachine;->mClazz:Ljava/lang/Object;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 607
    :goto_1
    return v3

    .line 593
    .restart local v0    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .restart local v2    # "i":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 604
    .end local v0    # "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 605
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MzPowerStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isLockScreenDisabled exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v4

    .line 607
    goto :goto_1
.end method

.method public static final isScreenLocked(Landroid/content/Context;)Z
    .locals 2
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 561
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 562
    .local v0, "mKeyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    return v1
.end method

.method private isScreenOn(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 555
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 556
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    return v1
.end method

.method private removeAllMessages()V
    .locals 2

    .prologue
    .line 165
    sget-object v0, Lcom/android/server/PowerStateMachine;->mStateHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    sget-object v0, Lcom/android/server/PowerStateMachine;->mStateHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 167
    sget-object v0, Lcom/android/server/PowerStateMachine;->mStateHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 168
    sget-object v0, Lcom/android/server/PowerStateMachine;->mStateHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    sget-object v0, Lcom/android/server/PowerStateMachine;->mStateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 170
    sget-object v0, Lcom/android/server/PowerStateMachine;->mStateHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 171
    sget-object v0, Lcom/android/server/PowerStateMachine;->mStateHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 172
    sget-object v0, Lcom/android/server/PowerStateMachine;->mStateHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 173
    sget-object v0, Lcom/android/server/PowerStateMachine;->mStateHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 174
    sget-object v0, Lcom/android/server/PowerStateMachine;->mStateHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 176
    return-void
.end method

.method private setStateMode(I)V
    .locals 2
    .param p1, "stateMode"    # I

    .prologue
    .line 197
    iget-object v1, p0, Lcom/android/server/PowerStateMachine;->mSyncState:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_0
    iput p1, p0, Lcom/android/server/PowerStateMachine;->mStateMode:I

    .line 199
    monitor-exit v1

    .line 200
    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private verifyStateChange(I)Z
    .locals 7
    .param p1, "enterState"    # I

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, "change":Z
    invoke-direct {p0}, Lcom/android/server/PowerStateMachine;->getStateMode()I

    move-result v1

    .line 212
    .local v1, "currentState":I
    if-nez v1, :cond_1

    .line 213
    if-ne p1, v2, :cond_0

    .line 214
    const/4 v0, 0x1

    .line 248
    :cond_0
    :goto_0
    return v0

    .line 216
    :cond_1
    if-ne v1, v2, :cond_3

    .line 217
    if-eq p1, v3, :cond_2

    if-nez p1, :cond_0

    .line 218
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 220
    :cond_3
    if-ne v1, v3, :cond_5

    .line 221
    if-eq p1, v4, :cond_4

    if-nez p1, :cond_0

    .line 222
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 224
    :cond_5
    if-ne v1, v4, :cond_7

    .line 225
    if-eq p1, v5, :cond_6

    if-nez p1, :cond_0

    .line 226
    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    .line 228
    :cond_7
    if-ne v1, v5, :cond_9

    .line 229
    if-eq p1, v6, :cond_8

    if-nez p1, :cond_0

    .line 230
    :cond_8
    const/4 v0, 0x1

    goto :goto_0

    .line 232
    :cond_9
    if-ne v1, v6, :cond_b

    .line 233
    const/4 v2, 0x6

    if-eq p1, v2, :cond_a

    const/4 v2, 0x7

    if-eq p1, v2, :cond_a

    if-nez p1, :cond_0

    .line 234
    :cond_a
    const/4 v0, 0x1

    goto :goto_0

    .line 236
    :cond_b
    const/4 v2, 0x6

    if-ne v1, v2, :cond_c

    .line 237
    if-nez p1, :cond_0

    .line 238
    const/4 v0, 0x1

    goto :goto_0

    .line 240
    :cond_c
    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 241
    if-nez p1, :cond_0

    .line 242
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/android/server/PowerStateMachine$OnStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/PowerStateMachine$OnStateChangeListener;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/server/PowerStateMachine;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/server/PowerStateMachine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/PowerStateMachine;->mPowerStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 153
    invoke-direct {p0}, Lcom/android/server/PowerStateMachine;->removeAllMessages()V

    .line 154
    return-void
.end method

.method public getState()I
    .locals 2

    .prologue
    .line 179
    iget-object v1, p0, Lcom/android/server/PowerStateMachine;->mSyncState:Ljava/lang/Object;

    monitor-enter v1

    .line 180
    :try_start_0
    iget v0, p0, Lcom/android/server/PowerStateMachine;->mState:I

    monitor-exit v1

    return v0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleStateChange(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 253
    invoke-virtual {p0}, Lcom/android/server/PowerStateMachine;->getState()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 254
    const-string v0, "MzPowerStateMachine"

    const-string v1, "handleStateChange: the same state, needn\'t change"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_0
    return-void

    .line 258
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 260
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/server/PowerStateMachine;->setState(I)V

    .line 261
    invoke-virtual {p0, v1}, Lcom/android/server/PowerStateMachine;->onStateChanged(I)V

    goto :goto_0

    .line 264
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/android/server/PowerStateMachine;->setState(I)V

    .line 265
    invoke-virtual {p0, v2}, Lcom/android/server/PowerStateMachine;->onStateChanged(I)V

    goto :goto_0

    .line 268
    :pswitch_3
    invoke-virtual {p0, v3}, Lcom/android/server/PowerStateMachine;->setState(I)V

    .line 269
    invoke-virtual {p0, v3}, Lcom/android/server/PowerStateMachine;->onStateChanged(I)V

    goto :goto_0

    .line 272
    :pswitch_4
    invoke-virtual {p0, v4}, Lcom/android/server/PowerStateMachine;->setState(I)V

    .line 273
    invoke-virtual {p0, v4}, Lcom/android/server/PowerStateMachine;->onStateChanged(I)V

    goto :goto_0

    .line 276
    :pswitch_5
    invoke-virtual {p0, v5}, Lcom/android/server/PowerStateMachine;->setState(I)V

    .line 277
    invoke-virtual {p0, v5}, Lcom/android/server/PowerStateMachine;->onStateChanged(I)V

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 203
    iget-object v2, p0, Lcom/android/server/PowerStateMachine;->mListeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PowerStateMachine$OnStateChangeListener;

    .line 204
    .local v1, "listener":Lcom/android/server/PowerStateMachine$OnStateChangeListener;
    invoke-interface {v1, p1}, Lcom/android/server/PowerStateMachine$OnStateChangeListener;->onStateChange(I)V

    goto :goto_0

    .line 206
    .end local v1    # "listener":Lcom/android/server/PowerStateMachine$OnStateChangeListener;
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/server/PowerStateMachine$OnStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/PowerStateMachine$OnStateChangeListener;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/server/PowerStateMachine;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 162
    return-void
.end method

.method public setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 185
    iget-object v1, p0, Lcom/android/server/PowerStateMachine;->mSyncState:Ljava/lang/Object;

    monitor-enter v1

    .line 186
    :try_start_0
    iput p1, p0, Lcom/android/server/PowerStateMachine;->mState:I

    .line 187
    monitor-exit v1

    .line 188
    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
