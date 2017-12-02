.class final Lcom/android/server/display/DisplayPowerController;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/AutomaticBrightnessController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerController$1;,
        Lcom/android/server/display/DisplayPowerController$2;,
        Lcom/android/server/display/DisplayPowerController$3;,
        Lcom/android/server/display/DisplayPowerController$4;,
        Lcom/android/server/display/DisplayPowerController$5;,
        Lcom/android/server/display/DisplayPowerController$6;,
        Lcom/android/server/display/DisplayPowerController$7;,
        Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;,
        Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final COLOR_FADE_OFF_ANIMATION_DURATION_MILLIS:I = 0x190

.field private static final COLOR_FADE_ON_ANIMATION_DURATION_MILLIS:I = 0xfa

.field private static final DEBUG:Z = false

.field private static final DEBUG_PRETEND_PROXIMITY_SENSOR_ABSENT:Z = false

.field private static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x2

.field private static final MSG_SCREEN_ON_UNBLOCKED:I = 0x3

.field private static final MSG_UPDATE_POWER_STATE:I = 0x1

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I = 0xfa

.field private static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final REPORTED_TO_POLICY_SCREEN_OFF:I = 0x0

.field private static final REPORTED_TO_POLICY_SCREEN_ON:I = 0x2

.field private static final REPORTED_TO_POLICY_SCREEN_TURNING_ON:I = 0x1

.field private static final SCREEN_DIM_MINIMUM_REDUCTION:I = 0xa

.field private static final SCREEN_ON_BLOCKED_TRACE_NAME:Ljava/lang/String; = "Screen on blocked"

.field private static final TAG:Ljava/lang/String; = "DisplayPowerController"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final USE_COLOR_FADE_ON_ANIMATION:Z


# instance fields
.field private final mAllowAutoBrightnessWhileDozingConfig:Z

.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAppliedAutoBrightness:Z

.field private mAppliedDimming:Z

.field private mAppliedLowPower:Z

.field private mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field private final mBrightnessRampRateFast:I

.field private final mBrightnessRampRateSlow:I

.field private final mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private final mCleanListener:Ljava/lang/Runnable;

.field private mColorFadeFadesConfig:Z

.field private mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

.field private mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

.field private final mContext:Landroid/content/Context;

.field private mDisplayReadyLocked:Z

.field private final mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

.field private final mLock:Ljava/lang/Object;

.field private final mOnProximityNegativeRunnable:Ljava/lang/Runnable;

.field private final mOnProximityPositiveRunnable:Ljava/lang/Runnable;

.field private final mOnStateChangedRunnable:Ljava/lang/Runnable;

.field private mPendingProximity:I

.field private mPendingProximityDebounceTime:J

.field private mPendingRequestChangedLocked:Z

.field private mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPendingScreenOff:Z

.field private mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

.field private mPendingUpdatePowerStateLocked:Z

.field private mPendingWaitForNegativeProximityLocked:Z

.field private mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPowerState:Lcom/android/server/display/DisplayPowerState;

.field private mProximity:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private final mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

.field private mReportedScreenStateToPolicy:I

.field private final mScreenBrightnessDarkConfig:I

.field private final mScreenBrightnessDimConfig:I

.field private final mScreenBrightnessDozeConfig:I

.field private mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/display/RampAnimator",
            "<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private mScreenOffBecauseOfProximity:Z

.field private mScreenOnBlockStartRealTime:J

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mUnfinishedBusiness:Z

.field private mUseActiveDozeLightSensorConfig:Z

.field private mUseSoftwareAutoBrightnessConfig:Z

.field private mWaitingForNegativeProximity:Z

.field private final mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;


# direct methods
.method static synthetic -get0(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/display/DisplayPowerController;)F
    .locals 1

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/display/DisplayPowerController;JZ)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "positive"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerController;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->-assertionsDisabled:Z

    .line 71
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;)V
    .locals 34
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p5, "blanker"    # Lcom/android/server/display/DisplayBlanker;

    .prologue
    .line 261
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 212
    const/4 v9, -0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 215
    const/4 v9, -0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 216
    const-wide/16 v10, -0x1

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 515
    new-instance v9, Lcom/android/server/display/DisplayPowerController$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/server/display/DisplayPowerController$1;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 531
    new-instance v9, Lcom/android/server/display/DisplayPowerController$2;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/server/display/DisplayPowerController$2;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    .line 1012
    new-instance v9, Lcom/android/server/display/DisplayPowerController$3;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/server/display/DisplayPowerController$3;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 1109
    new-instance v9, Lcom/android/server/display/DisplayPowerController$4;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/server/display/DisplayPowerController$4;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    .line 1122
    new-instance v9, Lcom/android/server/display/DisplayPowerController$5;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/server/display/DisplayPowerController$5;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    .line 1135
    new-instance v9, Lcom/android/server/display/DisplayPowerController$6;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/server/display/DisplayPowerController$6;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    .line 1307
    new-instance v9, Lcom/android/server/display/DisplayPowerController$7;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/server/display/DisplayPowerController$7;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 264
    new-instance v9, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v10}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 265
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 267
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 268
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 269
    const-class v9, Landroid/view/WindowManagerPolicy;

    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    .line 270
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 271
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 273
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    .line 275
    .local v31, "resources":Landroid/content/res/Resources;
    const v9, 0x10e0064

    .line 274
    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v33

    .line 278
    .local v33, "screenBrightnessSettingMinimum":I
    const v9, 0x10e006a

    .line 277
    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    .line 281
    const v9, 0x10e0070

    .line 280
    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    .line 284
    const v9, 0x10e0071

    .line 283
    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    .line 285
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    if-le v9, v10, :cond_0

    .line 286
    const-string/jumbo v9, "DisplayPowerController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Expected config_screenBrightnessDark ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 287
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    .line 286
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 287
    const-string/jumbo v11, ") to be less than or equal to "

    .line 286
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 288
    const-string/jumbo v11, "config_screenBrightnessDim ("

    .line 286
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 288
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    .line 286
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 288
    const-string/jumbo v11, ")."

    .line 286
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    if-le v9, v10, :cond_1

    .line 291
    const-string/jumbo v9, "DisplayPowerController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Expected config_screenBrightnessDark ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 292
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    .line 291
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 292
    const-string/jumbo v11, ") to be less than or equal to "

    .line 291
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 293
    const-string/jumbo v11, "config_screenBrightnessSettingMinimum ("

    .line 291
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v33

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 294
    const-string/jumbo v11, ")."

    .line 291
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    .line 297
    move/from16 v0, v33

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 299
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    .line 297
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 301
    .local v15, "screenBrightnessRangeMinimum":I
    const/16 v9, 0xff

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    .line 304
    const v9, 0x1120023

    .line 303
    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 307
    const v9, 0x112004d

    .line 306
    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    .line 310
    const v9, 0x10e0040

    .line 309
    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFast:I

    .line 312
    const v9, 0x10e0041

    .line 311
    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlow:I

    .line 315
    const v9, 0x10e006e

    .line 314
    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    .line 317
    .local v18, "lightSensorRate":I
    const v9, 0x10e006d

    .line 316
    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v19

    .line 318
    .local v19, "initialLightSensorRate":I
    const/4 v9, -0x1

    move/from16 v0, v19

    if-ne v0, v9, :cond_5

    .line 319
    move/from16 v19, v18

    .line 326
    :cond_2
    :goto_0
    const v9, 0x10e006b

    .line 325
    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-long v0, v9

    move-wide/from16 v20, v0

    .line 328
    .local v20, "brighteningLightDebounce":J
    const v9, 0x10e006c

    .line 327
    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    int-to-long v0, v9

    move-wide/from16 v22, v0

    .line 330
    .local v22, "darkeningLightDebounce":J
    const v9, 0x112004e

    .line 329
    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v24

    .line 332
    .local v24, "autoBrightnessResetAmbientLuxAfterWarmUp":Z
    const v9, 0x10e006f

    .line 331
    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v25

    .line 334
    .local v25, "ambientLightHorizon":I
    const v9, 0x1130001

    .line 335
    const/4 v10, 0x1

    const/4 v11, 0x1

    .line 333
    move-object/from16 v0, v31

    invoke-virtual {v0, v9, v10, v11}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v26

    .line 337
    .local v26, "autoBrightnessAdjustmentMaxGamma":F
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v9, :cond_3

    .line 339
    const v9, 0x1070028

    .line 338
    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v30

    .line 341
    .local v30, "lux":[I
    const v9, 0x1070029

    .line 340
    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v32

    .line 343
    .local v32, "screenBrightness":[I
    const v9, 0x10e0072

    .line 342
    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 345
    .local v14, "lightSensorWarmUpTimeConfig":I
    const v9, 0x1130002

    .line 346
    const/4 v10, 0x1

    const/4 v11, 0x1

    .line 344
    move-object/from16 v0, v31

    invoke-virtual {v0, v9, v10, v11}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v17

    .line 350
    .local v17, "dozeScaleFactor":F
    const v9, 0x107002c

    .line 349
    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 352
    .local v3, "brightHysteresisLevels":[I
    const v9, 0x107002d

    .line 351
    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    .line 354
    .local v4, "darkHysteresisLevels":[I
    const v9, 0x107002e

    .line 353
    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 357
    .local v5, "luxHysteresisLevels":[I
    const v9, 0x107002f

    .line 356
    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    .line 359
    .local v6, "dozeSensorLuxLevels":[I
    const v9, 0x1070030

    .line 358
    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    .line 361
    .local v7, "dozeBrightnessBacklightValues":[I
    const v9, 0x1120050

    .line 360
    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v28

    .line 363
    .local v28, "useNewSensorSamplesForDoze":Z
    const v9, 0x112004f

    .line 362
    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/server/display/DisplayPowerController;->mUseActiveDozeLightSensorConfig:Z

    .line 364
    new-instance v2, Lcom/android/server/display/LuxLevels;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/display/LuxLevels;-><init>([I[I[I[I[I)V

    .line 367
    .local v2, "luxLevels":Lcom/android/server/display/LuxLevels;
    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->createAutoBrightnessSpline([I[I)Landroid/util/Spline;

    move-result-object v13

    .line 368
    .local v13, "screenAutoBrightnessSpline":Landroid/util/Spline;
    if-nez v13, :cond_6

    .line 369
    const-string/jumbo v9, "DisplayPowerController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Error in config.xml.  config_autoBrightnessLcdBacklightValues (size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 370
    move-object/from16 v0, v32

    array-length v11, v0

    .line 369
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 370
    const-string/jumbo v11, ") "

    .line 369
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 371
    const-string/jumbo v11, "must be monotic and have exactly one more entry than "

    .line 369
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 372
    const-string/jumbo v11, "config_autoBrightnessLevels (size "

    .line 369
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 372
    move-object/from16 v0, v30

    array-length v11, v0

    .line 369
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 372
    const-string/jumbo v11, ") "

    .line 369
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 373
    const-string/jumbo v11, "which must be strictly increasing.  "

    .line 369
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 374
    const-string/jumbo v11, "Auto-brightness will be disabled."

    .line 369
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 398
    .end local v2    # "luxLevels":Lcom/android/server/display/LuxLevels;
    .end local v3    # "brightHysteresisLevels":[I
    .end local v4    # "darkHysteresisLevels":[I
    .end local v5    # "luxHysteresisLevels":[I
    .end local v6    # "dozeSensorLuxLevels":[I
    .end local v7    # "dozeBrightnessBacklightValues":[I
    .end local v13    # "screenAutoBrightnessSpline":Landroid/util/Spline;
    .end local v14    # "lightSensorWarmUpTimeConfig":I
    .end local v17    # "dozeScaleFactor":F
    .end local v28    # "useNewSensorSamplesForDoze":Z
    .end local v30    # "lux":[I
    .end local v32    # "screenBrightness":[I
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    .line 401
    const v9, 0x1120028

    .line 400
    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    .line 404
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 405
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v9, :cond_4

    .line 406
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v9}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v9

    .line 407
    const/high16 v10, 0x40a00000    # 5.0f

    .line 406
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    .line 263
    :cond_4
    return-void

    .line 320
    .end local v20    # "brighteningLightDebounce":J
    .end local v22    # "darkeningLightDebounce":J
    .end local v24    # "autoBrightnessResetAmbientLuxAfterWarmUp":Z
    .end local v25    # "ambientLightHorizon":I
    .end local v26    # "autoBrightnessAdjustmentMaxGamma":F
    :cond_5
    move/from16 v0, v19

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 321
    const-string/jumbo v9, "DisplayPowerController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Expected config_autoBrightnessInitialLightSensorRate ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 322
    const-string/jumbo v11, ") to be less than or equal to "

    .line 321
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 323
    const-string/jumbo v11, "config_autoBrightnessLightSensorRate ("

    .line 321
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 323
    const-string/jumbo v11, ")."

    .line 321
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 377
    .restart local v2    # "luxLevels":Lcom/android/server/display/LuxLevels;
    .restart local v3    # "brightHysteresisLevels":[I
    .restart local v4    # "darkHysteresisLevels":[I
    .restart local v5    # "luxHysteresisLevels":[I
    .restart local v6    # "dozeSensorLuxLevels":[I
    .restart local v7    # "dozeBrightnessBacklightValues":[I
    .restart local v13    # "screenAutoBrightnessSpline":Landroid/util/Spline;
    .restart local v14    # "lightSensorWarmUpTimeConfig":I
    .restart local v17    # "dozeScaleFactor":F
    .restart local v20    # "brighteningLightDebounce":J
    .restart local v22    # "darkeningLightDebounce":J
    .restart local v24    # "autoBrightnessResetAmbientLuxAfterWarmUp":Z
    .restart local v25    # "ambientLightHorizon":I
    .restart local v26    # "autoBrightnessAdjustmentMaxGamma":F
    .restart local v28    # "useNewSensorSamplesForDoze":Z
    .restart local v30    # "lux":[I
    .restart local v32    # "screenBrightness":[I
    :cond_6
    const/4 v9, 0x0

    aget v9, v32, v9

    invoke-static {v9}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v8

    .line 378
    .local v8, "bottom":I
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    if-le v9, v8, :cond_7

    .line 379
    const-string/jumbo v9, "DisplayPowerController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "config_screenBrightnessDark ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 380
    const-string/jumbo v11, ") should be less than or equal to the first value of "

    .line 379
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 381
    const-string/jumbo v11, "config_autoBrightnessLcdBacklightValues ("

    .line 379
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 382
    const-string/jumbo v11, ")."

    .line 379
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_7
    if-ge v8, v15, :cond_8

    .line 385
    move v15, v8

    .line 387
    :cond_8
    new-instance v9, Lcom/android/server/display/AutomaticBrightnessController;

    .line 388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v11

    .line 390
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    move/from16 v16, v0

    .line 393
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mUseActiveDozeLightSensorConfig:Z

    move/from16 v27, v0

    move-object/from16 v10, p0

    move-object/from16 v12, p4

    move-object/from16 v29, v2

    .line 387
    invoke-direct/range {v9 .. v29}, Lcom/android/server/display/AutomaticBrightnessController;-><init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/util/Spline;IIIFIIJJZIFZZLcom/android/server/display/LuxLevels;)V

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    goto/16 :goto_1
.end method

.method private animateScreenBrightness(II)V
    .locals 2
    .param p1, "target"    # I
    .param p2, "rate"    # I

    .prologue
    .line 879
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/RampAnimator;->animateTo(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 881
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    :cond_0
    :goto_0
    return-void

    .line 882
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private animateScreenStateChange(IZ)V
    .locals 6
    .param p1, "target"    # I
    .param p2, "performScreenOffTransition"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 890
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 891
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v2

    .line 890
    if-eqz v2, :cond_2

    .line 892
    :cond_0
    if-eq p1, v0, :cond_1

    .line 893
    return-void

    .line 896
    :cond_1
    iput-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 902
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-eqz v2, :cond_3

    if-eq p1, v1, :cond_3

    .line 903
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 904
    iput-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 905
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    .line 908
    :cond_3
    if-ne p1, v0, :cond_5

    .line 912
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 913
    return-void

    .line 929
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 930
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    .line 888
    :goto_0
    return-void

    .line 932
    :cond_5
    const/4 v2, 0x5

    if-ne p1, v2, :cond_8

    .line 936
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 937
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-ne v1, v0, :cond_6

    .line 938
    return-void

    .line 942
    :cond_6
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 943
    return-void

    .line 947
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 948
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto :goto_0

    .line 949
    :cond_8
    const/4 v2, 0x3

    if-ne p1, v2, :cond_b

    .line 954
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 955
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-ne v1, v0, :cond_9

    .line 956
    return-void

    .line 960
    :cond_9
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 961
    return-void

    .line 965
    :cond_a
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 966
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto :goto_0

    .line 967
    :cond_b
    if-ne p1, v4, :cond_f

    .line 971
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 972
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v4, :cond_c

    .line 973
    return-void

    .line 978
    :cond_c
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v4, :cond_e

    .line 979
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 980
    return-void

    .line 982
    :cond_d
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 986
    :cond_e
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 987
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto :goto_0

    .line 990
    :cond_f
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 991
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_10

    .line 994
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 995
    iput-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 996
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    goto/16 :goto_0

    .line 997
    :cond_10
    if-eqz p2, :cond_12

    .line 998
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 999
    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz v4, :cond_11

    .line 998
    :goto_1
    invoke-virtual {v2, v3, v0}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    move-result v0

    .line 997
    if-eqz v0, :cond_12

    .line 1001
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v1, :cond_12

    .line 1003
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto/16 :goto_0

    :cond_11
    move v0, v1

    .line 1000
    goto :goto_1

    .line 1007
    :cond_12
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    goto/16 :goto_0
.end method

.method private blockScreenOn()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 814
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_0

    .line 815
    const-string/jumbo v0, "Screen on blocked"

    const-wide/32 v2, 0x20000

    const/4 v1, 0x0

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 816
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-direct {v0, p0, v4}, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 817
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    .line 818
    const-string/jumbo v0, "DisplayPowerController"

    const-string/jumbo v1, "Blocking screen on until initial contents have been drawn."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_0
    return-void
.end method

.method private static clampAbsoluteBrightness(I)I
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 1278
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 872
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    .line 871
    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clearPendingProximityDebounceTime()V
    .locals 4

    .prologue
    .line 1091
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 1092
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 1093
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    .line 1090
    :cond_0
    return-void
.end method

.method private static createAutoBrightnessSpline([I[I)Landroid/util/Spline;
    .locals 9
    .param p0, "lux"    # [I
    .param p1, "brightness"    # [I

    .prologue
    const/4 v8, 0x0

    .line 1245
    if-eqz p0, :cond_0

    array-length v6, p0

    if-nez v6, :cond_1

    .line 1246
    :cond_0
    const-string/jumbo v6, "DisplayPowerController"

    const-string/jumbo v7, "Could not create auto-brightness spline."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    return-object v8

    .line 1245
    :cond_1
    if-eqz p1, :cond_0

    array-length v6, p1

    if-eqz v6, :cond_0

    .line 1250
    :try_start_0
    array-length v2, p1

    .line 1251
    .local v2, "n":I
    new-array v4, v2, [F

    .line 1252
    .local v4, "x":[F
    new-array v5, v2, [F

    .line 1253
    .local v5, "y":[F
    const/4 v6, 0x0

    aget v6, p1, v6

    invoke-static {v6}, Lcom/android/server/display/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    move-result v6

    const/4 v7, 0x0

    aput v6, v5, v7

    .line 1254
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1255
    add-int/lit8 v6, v1, -0x1

    aget v6, p0, v6

    int-to-float v6, v6

    aput v6, v4, v1

    .line 1256
    aget v6, p1, v1

    invoke-static {v6}, Lcom/android/server/display/DisplayPowerController;->normalizeAbsoluteBrightness(I)F

    move-result v6

    aput v6, v5, v1

    .line 1254
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1259
    :cond_2
    invoke-static {v4, v5}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1266
    .local v3, "spline":Landroid/util/Spline;
    return-object v3

    .line 1267
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "spline":Landroid/util/Spline;
    .end local v4    # "x":[F
    .end local v5    # "y":[F
    :catch_0
    move-exception v0

    .line 1268
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "DisplayPowerController"

    const-string/jumbo v7, "Could not create auto-brightness spline."

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1269
    return-object v8
.end method

.method private debounceProximitySensor()V
    .locals 8

    .prologue
    .line 1071
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v1, :cond_0

    .line 1072
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 1073
    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    .line 1074
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1075
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    cmp-long v1, v4, v2

    if-gtz v1, :cond_1

    .line 1077
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 1078
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 1079
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    .line 1070
    .end local v2    # "now":J
    :cond_0
    :goto_0
    return-void

    .line 1083
    .restart local v2    # "now":J
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1084
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1085
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1176
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1177
    const-string/jumbo v0, "Display Power Controller Thread State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mPowerRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mWaitingForNegativeProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mProximitySensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mProximityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mPendingProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mPendingProximityDebounceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1187
    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    .line 1186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenOffBecauseOfProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mAppliedAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mAppliedDimming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mAppliedLowPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mPendingScreenOnUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mPendingScreenOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mReportedToPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->reportedToPolicyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenBrightnessRampAnimator.isAnimating()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1197
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    .line 1196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1199
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mColorFadeOnAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1201
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    .line 1200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1203
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    .line 1204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mColorFadeOffAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1205
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    .line 1204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1208
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v0, :cond_2

    .line 1209
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    .line 1212
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_3

    .line 1213
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->dump(Ljava/io/PrintWriter;)V

    .line 1175
    :cond_3
    return-void
.end method

.method private handleProximitySensorEvent(JZ)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "positive"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1043
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_3

    .line 1044
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    if-nez v0, :cond_0

    if-eqz p3, :cond_1

    .line 1047
    :cond_0
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    if-ne v0, v3, :cond_2

    if-eqz p3, :cond_2

    .line 1048
    return-void

    .line 1045
    :cond_1
    return-void

    .line 1054
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1055
    if-eqz p3, :cond_4

    .line 1056
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 1058
    const-wide/16 v0, 0x0

    add-long/2addr v0, p1

    .line 1057
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    .line 1066
    :goto_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    .line 1042
    :cond_3
    return-void

    .line 1060
    :cond_4
    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 1062
    const-wide/16 v0, 0xfa

    add-long/2addr v0, p1

    .line 1061
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    goto :goto_0
.end method

.method private initialize()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 489
    new-instance v1, Lcom/android/server/display/DisplayPowerState;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 490
    new-instance v3, Lcom/android/server/display/ColorFade;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/display/ColorFade;-><init>(I)V

    .line 489
    invoke-direct {v1, v2, v3}, Lcom/android/server/display/DisplayPowerState;-><init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 493
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v2, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    .line 492
    new-array v3, v5, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 494
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 495
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 498
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v2, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    .line 497
    new-array v3, v5, [F

    fill-array-data v3, :array_1

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 499
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 500
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 502
    new-instance v1, Lcom/android/server/display/RampAnimator;

    .line 503
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v3, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    .line 502
    invoke-direct {v1, v2, v3}, Lcom/android/server/display/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/IntProperty;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    .line 504
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-virtual {v1, v2}, Lcom/android/server/display/RampAnimator;->setListener(Lcom/android/server/display/RampAnimator$Listener;)V

    .line 508
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V

    .line 509
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :goto_0
    return-void

    .line 510
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 492
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 497
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private static normalizeAbsoluteBrightness(I)F
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 1274
    invoke-static {p0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private static proximityToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 1219
    packed-switch p0, :pswitch_data_0

    .line 1227
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1221
    :pswitch_0
    const-string/jumbo v0, "Unknown"

    return-object v0

    .line 1223
    :pswitch_1
    const-string/jumbo v0, "Negative"

    return-object v0

    .line 1225
    :pswitch_2
    const-string/jumbo v0, "Positive"

    return-object v0

    .line 1219
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static reportedToPolicyToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 1232
    packed-switch p0, :pswitch_data_0

    .line 1240
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1234
    :pswitch_0
    const-string/jumbo v0, "REPORTED_TO_POLICY_SCREEN_OFF"

    return-object v0

    .line 1236
    :pswitch_1
    const-string/jumbo v0, "REPORTED_TO_POLICY_SCREEN_TURNING_ON"

    return-object v0

    .line 1238
    :pswitch_2
    const-string/jumbo v0, "REPORTED_TO_POLICY_SCREEN_ON"

    return-object v0

    .line 1232
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendOnProximityNegativeWithWakelock()V
    .locals 2

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1132
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 1130
    return-void
.end method

.method private sendOnProximityPositiveWithWakelock()V
    .locals 2

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1119
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 1117
    return-void
.end method

.method private sendOnStateChangedWithWakelock()V
    .locals 2

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1106
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 1104
    return-void
.end method

.method private sendUpdatePowerState()V
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 473
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 471
    return-void

    .line 472
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private sendUpdatePowerStateLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 478
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    if-nez v1, :cond_0

    .line 479
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 480
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 481
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 482
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 477
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setPendingProximityDebounceTime(J)V
    .locals 5
    .param p1, "debounceTime"    # J

    .prologue
    .line 1098
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 1099
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 1101
    :cond_0
    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 1097
    return-void
.end method

.method private setProximitySensorEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, -0x1

    .line 1020
    if-eqz p1, :cond_1

    .line 1021
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-nez v0, :cond_0

    .line 1024
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 1025
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 1026
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v4, 0x3

    .line 1025
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1019
    :cond_0
    :goto_0
    return-void

    .line 1029
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_0

    .line 1032
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 1033
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 1034
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 1035
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 1036
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1037
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    goto :goto_0
.end method

.method private setScreenState(I)Z
    .locals 7
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 832
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v5

    if-eq v5, p1, :cond_0

    .line 833
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v5

    if-eq v5, v3, :cond_3

    const/4 v2, 0x1

    .line 834
    .local v2, "wasOn":Z
    :goto_0
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v5, p1}, Lcom/android/server/display/DisplayPowerState;->setScreenState(I)V

    .line 838
    :try_start_0
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v5, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    .end local v2    # "wasOn":Z
    :cond_0
    :goto_1
    if-ne p1, v3, :cond_4

    move v1, v3

    .line 851
    .local v1, "isOff":Z
    :goto_2
    if-eqz v1, :cond_1

    iget v5, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-eqz v5, :cond_1

    .line 852
    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v5, :cond_5

    .line 856
    :cond_1
    if-nez v1, :cond_2

    iget v5, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-nez v5, :cond_2

    .line 857
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 858
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-nez v5, :cond_6

    .line 859
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOn()V

    .line 863
    :goto_3
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 867
    :cond_2
    :goto_4
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v5, :cond_7

    :goto_5
    return v3

    .line 833
    .end local v1    # "isOff":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "wasOn":Z
    goto :goto_0

    .end local v2    # "wasOn":Z
    :cond_4
    move v1, v4

    .line 850
    goto :goto_2

    .line 853
    .restart local v1    # "isOff":Z
    :cond_5
    iput v4, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 854
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 855
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy;->screenTurnedOff()V

    goto :goto_4

    .line 861
    :cond_6
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    goto :goto_3

    :cond_7
    move v3, v4

    .line 867
    goto :goto_5

    .line 839
    .end local v1    # "isOff":Z
    .restart local v2    # "wasOn":Z
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private unblockScreenOn()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 823
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-eqz v2, :cond_0

    .line 824
    iput-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 825
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    sub-long v0, v2, v4

    .line 826
    .local v0, "delay":J
    const-string/jumbo v2, "DisplayPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unblocked screen on after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    const-string/jumbo v2, "Screen on blocked"

    const-wide/32 v4, 0x20000

    const/4 v3, 0x0

    invoke-static {v4, v5, v2, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 822
    .end local v0    # "delay":J
    :cond_0
    return-void
.end method

.method private updatePowerState()V
    .locals 20

    .prologue
    .line 541
    const/4 v8, 0x0

    .line 542
    .local v8, "mustInitialize":Z
    const/4 v3, 0x0

    .line 544
    .local v3, "autoBrightnessAdjustmentChanged":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 545
    const/16 v17, 0x0

    :try_start_0
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v17, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v17, :cond_0

    monitor-exit v18

    .line 547
    return-void

    .line 550
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v17, v0

    if-nez v17, :cond_4

    .line 551
    new-instance v17, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 552
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 553
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 554
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 555
    const/4 v8, 0x1

    .line 566
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    move/from16 v17, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v17, :cond_6

    const/4 v9, 0x0

    .local v9, "mustNotify":Z
    :goto_1
    monitor-exit v18

    .line 570
    if-eqz v8, :cond_2

    .line 571
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->initialize()V

    .line 577
    :cond_2
    const/4 v6, -0x1

    .line 578
    .local v6, "brightness":I
    const/4 v11, 0x0

    .line 579
    .local v11, "performScreenOffTransition":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    .line 600
    :pswitch_0
    const/4 v14, 0x2

    .line 603
    .local v14, "state":I
    :cond_3
    :goto_2
    sget-boolean v17, Lcom/android/server/display/DisplayPowerController;->-assertionsDisabled:Z

    if-nez v17, :cond_9

    if-eqz v14, :cond_8

    const/16 v17, 0x1

    :goto_3
    if-nez v17, :cond_9

    new-instance v17, Ljava/lang/AssertionError;

    invoke-direct/range {v17 .. v17}, Ljava/lang/AssertionError;-><init>()V

    throw v17

    .line 556
    .end local v6    # "brightness":I
    .end local v9    # "mustNotify":Z
    .end local v11    # "performScreenOffTransition":Z
    .end local v14    # "state":I
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    move/from16 v17, v0

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    move/from16 v19, v0

    .line 557
    cmpl-float v17, v17, v19

    if-eqz v17, :cond_5

    const/4 v3, 0x1

    .line 559
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 560
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    move/from16 v19, v0

    or-int v17, v17, v19

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 561
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 562
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 563
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 544
    :catchall_0
    move-exception v17

    monitor-exit v18

    throw v17

    .line 557
    :cond_5
    const/4 v3, 0x0

    goto :goto_4

    .line 566
    :cond_6
    const/4 v9, 0x1

    .restart local v9    # "mustNotify":Z
    goto/16 :goto_1

    .line 581
    .restart local v6    # "brightness":I
    .restart local v11    # "performScreenOffTransition":Z
    :pswitch_1
    const/4 v14, 0x1

    .line 582
    .restart local v14    # "state":I
    const/4 v11, 0x1

    .line 583
    goto :goto_2

    .line 585
    .end local v14    # "state":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v14, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .line 590
    .restart local v14    # "state":I
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v6, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    goto/16 :goto_2

    .line 588
    .end local v14    # "state":I
    :cond_7
    const/4 v14, 0x3

    .restart local v14    # "state":I
    goto :goto_5

    .line 595
    .end local v14    # "state":I
    :pswitch_3
    const/4 v14, 0x5

    .line 596
    .restart local v14    # "state":I
    goto/16 :goto_2

    .line 603
    :cond_8
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 606
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2a

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    move/from16 v17, v0

    if-eqz v17, :cond_28

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_28

    .line 608
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 609
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    move/from16 v17, v0

    if-nez v17, :cond_a

    .line 610
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 611
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 612
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityPositiveWithWakelock()V

    .line 623
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    .line 624
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_b

    .line 625
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 626
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    .line 631
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 632
    const/4 v14, 0x1

    .line 638
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v10

    .line 639
    .local v10, "oldState":I
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lcom/android/server/display/DisplayPowerController;->animateScreenStateChange(IZ)V

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v14

    .line 643
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v14, v0, :cond_d

    .line 644
    const/4 v6, 0x0

    .line 648
    :cond_d
    const/4 v4, 0x0

    .line 649
    .local v4, "autoBrightnessEnabled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v17, v0

    if-eqz v17, :cond_11

    .line 650
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2c

    .line 651
    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v14, v0, :cond_e

    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v14, v0, :cond_2b

    :cond_e
    const/4 v5, 0x1

    .line 652
    .local v5, "autoBrightnessEnabledInDoze":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 653
    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v14, v0, :cond_10

    .line 652
    if-nez v5, :cond_10

    .line 654
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mUseActiveDozeLightSensorConfig:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2e

    .line 652
    if-eqz v5, :cond_2e

    .line 655
    :cond_10
    if-gez v6, :cond_2d

    const/4 v4, 0x1

    .line 656
    :goto_9
    if-eqz v3, :cond_2f

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v15, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessSetByUser:Z

    .line 658
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v18, v0

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    move/from16 v19, v0

    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v14, v0, :cond_30

    const/16 v17, 0x1

    .line 658
    :goto_b
    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v4, v1, v2, v15}, Lcom/android/server/display/AutomaticBrightnessController;->configure(ZFZZ)V

    .line 668
    .end local v5    # "autoBrightnessEnabledInDoze":Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    move/from16 v17, v0

    if-eqz v17, :cond_12

    .line 669
    if-eqz v6, :cond_12

    .line 670
    const/16 v6, 0xff

    .line 674
    :cond_12
    const/4 v13, 0x0

    .line 675
    .local v13, "slowChange":Z
    if-gez v6, :cond_33

    .line 676
    if-eqz v4, :cond_13

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness()I

    move-result v6

    .line 679
    :cond_13
    if-ltz v6, :cond_32

    .line 681
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v6

    .line 682
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    move/from16 v17, v0

    if-eqz v17, :cond_14

    if-eqz v3, :cond_31

    .line 685
    :cond_14
    :goto_c
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    .line 694
    :goto_d
    const/16 v17, 0x3

    move/from16 v0, v17

    if-eq v14, v0, :cond_15

    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v14, v0, :cond_16

    .line 695
    :cond_15
    if-gez v6, :cond_34

    .line 696
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    .line 709
    :cond_16
    :goto_e
    if-gez v6, :cond_17

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(I)I

    move-result v6

    .line 715
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_35

    .line 716
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v6, v0, :cond_18

    .line 717
    add-int/lit8 v17, v6, -0xa

    .line 718
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    move/from16 v18, v0

    .line 717
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 718
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    move/from16 v18, v0

    .line 717
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 720
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    move/from16 v17, v0

    if-nez v17, :cond_19

    .line 721
    const/4 v13, 0x0

    .line 723
    :cond_19
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    .line 731
    :cond_1a
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_36

    .line 732
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v6, v0, :cond_1b

    .line 733
    div-int/lit8 v17, v6, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 735
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    move/from16 v17, v0

    if-nez v17, :cond_1c

    .line 736
    const/4 v13, 0x0

    .line 738
    :cond_1c
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    .line 746
    :cond_1d
    :goto_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    move/from16 v17, v0

    if-nez v17, :cond_21

    .line 747
    const/16 v17, 0x5

    move/from16 v0, v17

    if-eq v14, v0, :cond_1e

    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v10, v0, :cond_37

    :cond_1e
    const/16 v16, 0x1

    .line 748
    .local v16, "wasOrWillBeInVr":Z
    :goto_11
    const/16 v17, 0x2

    move/from16 v0, v17

    if-eq v14, v0, :cond_1f

    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v14, v0, :cond_20

    :cond_1f
    if-eqz v16, :cond_38

    .line 752
    :cond_20
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v6, v1}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    .line 760
    .end local v16    # "wasOrWillBeInVr":Z
    :cond_21
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    move-object/from16 v17, v0

    if-nez v17, :cond_22

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v17

    if-eqz v17, :cond_3a

    .line 760
    :cond_22
    const/4 v12, 0x0

    .line 764
    .local v12, "ready":Z
    :goto_13
    if-eqz v12, :cond_3c

    .line 765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v17

    if-eqz v17, :cond_3b

    const/4 v7, 0x0

    .line 768
    .local v7, "finished":Z
    :goto_14
    if-eqz v12, :cond_23

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_23

    .line 769
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_23

    .line 770
    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManagerPolicy;->screenTurnedOn()V

    .line 775
    :cond_23
    if-nez v7, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3d

    .line 784
    :cond_24
    :goto_15
    if-eqz v12, :cond_26

    if-eqz v9, :cond_26

    .line 786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 787
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    move/from16 v17, v0

    if-nez v17, :cond_25

    .line 788
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_25
    monitor-exit v18

    .line 795
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnStateChangedWithWakelock()V

    .line 799
    :cond_26
    if-eqz v7, :cond_27

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    move/from16 v17, v0

    if-eqz v17, :cond_27

    .line 803
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    .line 804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    .line 538
    :cond_27
    return-void

    .line 614
    .end local v4    # "autoBrightnessEnabled":Z
    .end local v7    # "finished":Z
    .end local v10    # "oldState":I
    .end local v12    # "ready":Z
    .end local v13    # "slowChange":Z
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    move/from16 v17, v0

    if-eqz v17, :cond_29

    .line 615
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    move/from16 v17, v0

    .line 614
    if-eqz v17, :cond_29

    .line 616
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_29

    .line 617
    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v14, v0, :cond_29

    .line 618
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    goto/16 :goto_6

    .line 620
    :cond_29
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 621
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_6

    .line 629
    :cond_2a
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    goto/16 :goto_7

    .line 651
    .restart local v4    # "autoBrightnessEnabled":Z
    .restart local v10    # "oldState":I
    :cond_2b
    const/4 v5, 0x0

    .restart local v5    # "autoBrightnessEnabledInDoze":Z
    goto/16 :goto_8

    .line 650
    .end local v5    # "autoBrightnessEnabledInDoze":Z
    :cond_2c
    const/4 v5, 0x0

    .restart local v5    # "autoBrightnessEnabledInDoze":Z
    goto/16 :goto_8

    .line 655
    :cond_2d
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 652
    :cond_2e
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 656
    :cond_2f
    const/4 v15, 0x0

    .local v15, "userInitiatedChange":Z
    goto/16 :goto_a

    .line 659
    .end local v15    # "userInitiatedChange":Z
    :cond_30
    const/16 v17, 0x0

    goto/16 :goto_b

    .line 683
    .end local v5    # "autoBrightnessEnabledInDoze":Z
    .restart local v13    # "slowChange":Z
    :cond_31
    const/4 v13, 0x1

    goto/16 :goto_c

    .line 687
    :cond_32
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    goto/16 :goto_d

    .line 690
    :cond_33
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    goto/16 :goto_d

    .line 697
    :cond_34
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mUseActiveDozeLightSensorConfig:Z

    move/from16 v17, v0

    if-eqz v17, :cond_16

    .line 698
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto/16 :goto_e

    .line 724
    :cond_35
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1a

    .line 725
    const/4 v13, 0x0

    .line 726
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    goto/16 :goto_f

    .line 739
    :cond_36
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1d

    .line 740
    const/4 v13, 0x0

    .line 741
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    goto/16 :goto_10

    .line 747
    :cond_37
    const/16 v16, 0x0

    .restart local v16    # "wasOrWillBeInVr":Z
    goto/16 :goto_11

    .line 750
    :cond_38
    if-eqz v13, :cond_39

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlow:I

    move/from16 v17, v0

    .line 749
    :goto_16
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v6, v1}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(II)V

    goto/16 :goto_12

    .line 750
    :cond_39
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFast:I

    move/from16 v17, v0

    goto :goto_16

    .line 762
    .end local v16    # "wasOrWillBeInVr":Z
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v17

    if-nez v17, :cond_22

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/server/display/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v12

    goto/16 :goto_13

    .line 765
    .restart local v12    # "ready":Z
    :cond_3b
    const/4 v7, 0x1

    .restart local v7    # "finished":Z
    goto/16 :goto_14

    .line 764
    .end local v7    # "finished":Z
    :cond_3c
    const/4 v7, 0x0

    .restart local v7    # "finished":Z
    goto/16 :goto_14

    .line 779
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 780
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    goto/16 :goto_15

    .line 786
    :catchall_1
    move-exception v17

    monitor-exit v18

    throw v17

    .line 579
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1144
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1145
    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1146
    const-string/jumbo v0, "Display Power Controller Locked State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mDisplayReadyLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mPendingRequestLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mPendingRequestChangedLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mPendingWaitForNegativeProximityLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1151
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 1150
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mPendingUpdatePowerStateLocked="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1155
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1156
    const-string/jumbo v0, "Display Power Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenBrightnessDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenBrightnessDimConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenBrightnessDarkConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDarkConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mUseSoftwareAutoBrightnessConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mAllowAutoBrightnessWhileDozingConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1164
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    .line 1163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  mColorFadeFadesConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1167
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayPowerController$8;-><init>(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V

    .line 1172
    const-wide/16 v2, 0x3e8

    .line 1167
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 1143
    return-void

    .line 1144
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isProximitySensorAvailable()Z
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .locals 3
    .param p1, "request"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p2, "waitForNegativeProximity"    # Z

    .prologue
    .line 441
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 442
    const/4 v0, 0x0

    .line 444
    .local v0, "changed":Z
    if-eqz p2, :cond_0

    .line 445
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    if-eqz v1, :cond_4

    .line 450
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v1, :cond_5

    .line 451
    new-instance v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 452
    const/4 v0, 0x1

    .line 458
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 459
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 462
    :cond_2
    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-eqz v1, :cond_6

    .line 467
    :cond_3
    :goto_2
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v1

    .line 446
    :cond_4
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 447
    const/4 v0, 0x1

    goto :goto_0

    .line 453
    :cond_5
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 454
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 455
    const/4 v0, 0x1

    goto :goto_1

    .line 463
    :cond_6
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 464
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 441
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public updateBrightness()V
    .locals 0

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 809
    return-void
.end method
