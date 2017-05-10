.class public Lcom/android/server/policy/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PhoneWindowManager$FlymeInjector;,
        Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;,
        Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;,
        Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;,
        Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;,
        Lcom/android/server/policy/PhoneWindowManager$HdmiControl;,
        Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;,
        Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;,
        Lcom/android/server/policy/PhoneWindowManager$1;,
        Lcom/android/server/policy/PhoneWindowManager$2;,
        Lcom/android/server/policy/PhoneWindowManager$3;,
        Lcom/android/server/policy/PhoneWindowManager$4;,
        Lcom/android/server/policy/PhoneWindowManager$5;,
        Lcom/android/server/policy/PhoneWindowManager$6;,
        Lcom/android/server/policy/PhoneWindowManager$7;,
        Lcom/android/server/policy/PhoneWindowManager$8;,
        Lcom/android/server/policy/PhoneWindowManager$9;,
        Lcom/android/server/policy/PhoneWindowManager$10;,
        Lcom/android/server/policy/PhoneWindowManager$11;,
        Lcom/android/server/policy/PhoneWindowManager$12;,
        Lcom/android/server/policy/PhoneWindowManager$13;
    }
.end annotation


# static fields
.field static final APPLICATION_ABOVE_SUB_PANEL_SUBLAYER:I = 0x3

.field static final APPLICATION_MEDIA_OVERLAY_SUBLAYER:I = -0x1

.field static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field static final APPLICATION_SUB_PANEL_SUBLAYER:I = 0x2

.field private static final BRIGHTNESS_STEPS:I = 0xa

.field static final DEBUG:Z = false

.field static final DEBUG_INPUT:Z = false

.field static final DEBUG_KEYGUARD:Z = false

.field static final DEBUG_LAYOUT:Z = false

.field static final DEBUG_STARTING_WINDOW:Z = false

.field static final DEBUG_WAKEUP:Z = false

.field private static final DISMISS_KEYGUARD_CONTINUE:I = 0x2

.field private static final DISMISS_KEYGUARD_NONE:I = 0x0

.field private static final DISMISS_KEYGUARD_START:I = 0x1

.field static final DOUBLE_TAP_HOME_NOTHING:I = 0x0

.field static final DOUBLE_TAP_HOME_RECENT_SYSTEM_UI:I = 0x1

.field static final ENABLE_CAR_DOCK_HOME_CAPTURE:Z = true

.field static final ENABLE_DESK_DOCK_HOME_CAPTURE:Z = false

.field private static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field static final LONG_PRESS_HOME_ASSIST:I = 0x2

.field static final LONG_PRESS_HOME_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_RECENT_SYSTEM_UI:I = 0x1

.field static final LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final LONG_PRESS_POWER_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_SHUT_OFF:I = 0x2

.field static final LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM:I = 0x3

.field private static final MSG_DISABLE_POINTER_LOCATION:I = 0x2

.field private static final MSG_DISPATCH_MEDIA_KEY_REPEAT_WITH_WAKE_LOCK:I = 0x4

.field private static final MSG_DISPATCH_MEDIA_KEY_WITH_WAKE_LOCK:I = 0x3

.field private static final MSG_DISPATCH_SHOW_GLOBAL_ACTIONS:I = 0xa

.field private static final MSG_DISPATCH_SHOW_RECENTS:I = 0x9

.field private static final MSG_ENABLE_POINTER_LOCATION:I = 0x1

.field private static final MSG_HIDE_BOOT_MESSAGE:I = 0xb

.field private static final MSG_KEYGUARD_DRAWN_COMPLETE:I = 0x5

.field private static final MSG_KEYGUARD_DRAWN_TIMEOUT:I = 0x6

.field private static final MSG_LAUNCH_VOICE_ASSIST_WITH_WAKE_LOCK:I = 0xc

.field private static final MSG_POWER_DELAYED_PRESS:I = 0xd

.field private static final MSG_POWER_LONG_PRESS:I = 0xe

.field private static final MSG_UPDATE_DREAMING_SLEEP_TOKEN:I = 0xf

.field private static final MSG_WINDOW_MANAGER_DRAWN_COMPLETE:I = 0x7

.field static final MULTI_PRESS_POWER_BRIGHTNESS_BOOST:I = 0x2

.field static final MULTI_PRESS_POWER_NOTHING:I = 0x0

.field static final MULTI_PRESS_POWER_THEATER_MODE:I = 0x1

.field private static final PANIC_GESTURE_EXPIRATION:J = 0x7530L

.field static final PRINT_ANIM:Z = false

.field private static final SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x96L

.field static final SHORT_PRESS_POWER_GO_HOME:I = 0x4

.field static final SHORT_PRESS_POWER_GO_TO_SLEEP:I = 0x1

.field static final SHORT_PRESS_POWER_NOTHING:I = 0x0

.field static final SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP:I = 0x2

.field static final SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP_AND_GO_HOME:I = 0x3

.field static final SHORT_PRESS_SLEEP_GO_TO_SLEEP:I = 0x0

.field static final SHORT_PRESS_SLEEP_GO_TO_SLEEP_AND_GO_HOME:I = 0x1

.field static final SHOW_PROCESSES_ON_ALT_MENU:Z = false

.field static final SHOW_STARTING_ANIMATIONS:Z = true

.field public static final SYSTEM_DIALOG_REASON_ASSIST:Ljava/lang/String; = "assist"

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field static final SYSTEM_UI_CHANGING_LAYOUT:I = -0x3fff7ffa

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x3e8

.field private static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field static final localLOGV:Z

.field static final mTmpContentFrame:Landroid/graphics/Rect;

.field static final mTmpDecorFrame:Landroid/graphics/Rect;

.field static final mTmpDisplayFrame:Landroid/graphics/Rect;

.field static final mTmpNavigationFrame:Landroid/graphics/Rect;

.field static final mTmpOutsetFrame:Landroid/graphics/Rect;

.field static final mTmpOverscanFrame:Landroid/graphics/Rect;

.field static final mTmpParentFrame:Landroid/graphics/Rect;

.field static final mTmpStableFrame:Landroid/graphics/Rect;

.field static final mTmpVisibleFrame:Landroid/graphics/Rect;

.field static sApplicationLaunchKeyCategories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mFlymeBootLayout:Landroid/view/View;

.field mFlymeBootMsgBar:Landroid/widget/ProgressBar;

.field mFlymeBootMsgText:Landroid/widget/TextView;

.field mFlymeBootMsgTitle:Landroid/widget/TextView;

.field mFlymeLastLightStatusBar:Z

.field mFlymeLastStatusBarColor:I

.field mFlymePw:Lcom/android/server/policy/MzPhoneWindowManager;

.field mFlymeStatusBarService:Lmeizu/statusbar/IFlymeStatusBarService;

.field mAccelerometerDefault:Z

.field mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field mAllowAllRotations:I

.field mAllowLockscreenWhenOn:Z

.field private mAllowTheaterModeWakeFromCameraLens:Z

.field private mAllowTheaterModeWakeFromKey:Z

.field private mAllowTheaterModeWakeFromLidSwitch:Z

.field private mAllowTheaterModeWakeFromMotion:Z

.field private mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

.field private mAllowTheaterModeWakeFromPowerKey:Z

.field private mAllowTheaterModeWakeFromWakeGesture:Z

.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mAppsThatDismissKeyguard:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/IApplicationToken;",
            ">;"
        }
    .end annotation
.end field

.field mAppsToBeHidden:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/IApplicationToken;",
            ">;"
        }
    .end annotation
.end field

.field mAssistKeyLongPressed:Z

.field mAwake:Z

.field volatile mBeganFromNonInteractive:Z

.field mBootMessageNeedsHiding:Z

.field mBootMsgDialog:Landroid/app/ProgressDialog;

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

.field mCalendarDateVibePattern:[J

.field mCameraLensCoverState:I

.field mCanHideNavigationBar:Z

.field mCarDockEnablesAccelerometer:Z

.field mCarDockIntent:Landroid/content/Intent;

.field mCarDockRotation:I

.field private final mClearHideNavigationFlag:Ljava/lang/Runnable;

.field mClockTickVibePattern:[J

.field mConsumeSearchKeyUp:Z

.field mContentBottom:I

.field mContentLeft:I

.field mContentRight:I

.field mContentTop:I

.field mContext:Landroid/content/Context;

.field mContextClickVibePattern:[J

.field mCurBottom:I

.field mCurLeft:I

.field mCurRight:I

.field mCurTop:I

.field mCurrentAppOrientation:I

.field private mCurrentUserId:I

.field private mDeferBindKeyguard:Z

.field mDemoHdmiRotation:I

.field mDemoHdmiRotationLock:Z

.field mDemoRotation:I

.field mDemoRotationLock:Z

.field mDeskDockEnablesAccelerometer:Z

.field mDeskDockIntent:Landroid/content/Intent;

.field mDeskDockRotation:I

.field mDismissKeyguard:I

.field mDisplay:Landroid/view/Display;

.field private mDisplayRotation:I

.field mDockBottom:I

.field mDockLayer:I

.field mDockLeft:I

.field mDockMode:I

.field mDockReceiver:Landroid/content/BroadcastReceiver;

.field mDockRight:I

.field mDockTop:I

.field mDoublePressOnPowerBehavior:I

.field private mDoubleTapOnHomeBehavior:I

.field mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

.field mDreamReceiver:Landroid/content/BroadcastReceiver;

.field mDreamingLockscreen:Z

.field mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

.field mDreamingSleepTokenNeeded:Z

.field mEnableShiftMenuBugReports:Z

.field volatile mEndCallKeyHandled:Z

.field private final mEndCallLongPress:Ljava/lang/Runnable;

.field mEndcallBehavior:I

.field private final mFallbackActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/KeyCharacterMap$FallbackAction;",
            ">;"
        }
    .end annotation
.end field

.field mFocusedApp:Landroid/view/IApplicationToken;

.field mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mForceClearedSystemUiFlags:I

.field private mForceDefaultOrientation:Z

.field mForceStatusBar:Z

.field mForceStatusBarFromKeyguard:Z

.field private mForceStatusBarTransparent:Z

.field mForcingShowNavBar:Z

.field mForcingShowNavBarLayer:I

.field mGlobalActions:Lcom/android/server/policy/GlobalActions;

.field private mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

.field private mGoToSleepOnButtonPressTheaterMode:Z

.field private mHDMIObserver:Landroid/os/UEventObserver;

.field mHandler:Landroid/os/Handler;

.field mHasNavigationBar:Z

.field mHasSoftInput:Z

.field mHaveBuiltInKeyboard:Z

.field mHavePendingMediaKeyRepeatWithWakeLock:Z

.field mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

.field mHdmiPlugged:Z

.field private final mHiddenNavPanic:Ljava/lang/Runnable;

.field mHideLockScreen:Z

.field final mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

.field mHomeConsumed:Z

.field mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mHomeIntent:Landroid/content/Intent;

.field mHomePressed:Z

.field private mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

.field mIncallPowerBehavior:I

.field mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

.field mKeyboardTapVibePattern:[J

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field mKeyguardDrawComplete:Z

.field final mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

.field private mKeyguardDrawnOnce:Z

.field private mKeyguardHidden:Z

.field volatile mKeyguardOccluded:Z

.field private mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

.field mKeyguardSecure:Z

.field mKeyguardSecureIncludingHidden:Z

.field mLandscapeRotation:I

.field mLanguageSwitchKeyPressed:Z

.field mLastFocusNeedsMenu:Z

.field mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastSystemUiFlags:I

.field mLidControlsSleep:Z

.field mLidKeyboardAccessibility:I

.field mLidNavigationAccessibility:I

.field mLidOpenRotation:I

.field mLidState:I

.field private final mLock:Ljava/lang/Object;

.field mLockScreenTimeout:I

.field mLockScreenTimerActive:Z

.field private final mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

.field private mLongPressOnHomeBehavior:I

.field mLongPressOnPowerBehavior:I

.field mLongPressVibePattern:[J

.field mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mNavigationBarCanMove:Z

.field private final mNavigationBarController:Lcom/android/server/policy/BarController;

.field mNavigationBarHeightForRotation:[I

.field mNavigationBarOnBottom:Z

.field mNavigationBarWidthForRotation:[I

.field mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

.field mOrientationSensorEnabled:Z

.field mOverscanBottom:I

.field mOverscanLeft:I

.field mOverscanRight:I

.field mOverscanScreenHeight:I

.field mOverscanScreenLeft:I

.field mOverscanScreenTop:I

.field mOverscanScreenWidth:I

.field mOverscanTop:I

.field mPendingMetaAction:Z

.field private mPendingPanicGestureUptime:J

.field mPointerLocationMode:I

.field mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field mPortraitRotation:I

.field volatile mPowerKeyHandled:Z

.field volatile mPowerKeyPressCounter:I

.field mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPowerManager:Landroid/os/PowerManager;

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field mPreloadedRecentApps:Z

.field mRecentAppsHeldModifiers:I

.field mRecentsVisible:Z

.field mResettingSystemUiFlags:I

.field mRestrictedOverscanScreenHeight:I

.field mRestrictedOverscanScreenLeft:I

.field mRestrictedOverscanScreenTop:I

.field mRestrictedOverscanScreenWidth:I

.field mRestrictedScreenHeight:I

.field mRestrictedScreenLeft:I

.field mRestrictedScreenTop:I

.field mRestrictedScreenWidth:I

.field mSafeMode:Z

.field mSafeModeDisabledVibePattern:[J

.field mSafeModeEnabledVibePattern:[J

.field mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

.field mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

.field mScreenOnEarly:Z

.field mScreenOnFully:Z

.field mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

.field private mScreenshotChordEnabled:Z

.field private mScreenshotChordPowerKeyTime:J

.field private mScreenshotChordPowerKeyTriggered:Z

.field private mScreenshotChordVolumeDownKeyConsumed:Z

.field private mScreenshotChordVolumeDownKeyTime:J

.field private mScreenshotChordVolumeDownKeyTriggered:Z

.field private mScreenshotChordVolumeUpKeyTriggered:Z

.field mScreenshotConnection:Landroid/content/ServiceConnection;

.field final mScreenshotLock:Ljava/lang/Object;

.field private final mScreenshotRunnable:Ljava/lang/Runnable;

.field final mScreenshotTimeout:Ljava/lang/Runnable;

.field mSearchKeyShortcutPending:Z

.field mSearchManager:Landroid/app/SearchManager;

.field mSeascapeRotation:I

.field private mSecureDismissingKeyguard:Z

.field final mServiceAquireLock:Ljava/lang/Object;

.field mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

.field mShortPressOnPowerBehavior:I

.field mShortPressOnSleepBehavior:I

.field mShortcutManager:Lcom/android/server/policy/ShortcutManager;

.field mShowingDream:Z

.field mShowingLockscreen:Z

.field mStableBottom:I

.field mStableFullscreenBottom:I

.field mStableFullscreenLeft:I

.field mStableFullscreenRight:I

.field mStableFullscreenTop:I

.field mStableLeft:I

.field mStableRight:I

.field mStableTop:I

.field mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

.field private final mStatusBarController:Lcom/android/server/policy/StatusBarController;

.field mStatusBarHeight:I

.field mStatusBarLayer:I

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mSupportAutoRotation:Z

.field private mSupportLongPressPowerWhenNonInteractive:Z

.field mSystemBooted:Z

.field mSystemBottom:I

.field private mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

.field mSystemLeft:I

.field mSystemReady:Z

.field mSystemRight:I

.field mSystemTop:I

.field mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopIsFullscreen:Z

.field mTranslucentDecorEnabled:Z

.field mTriplePressOnPowerBehavior:I

.field mUiMode:I

.field mUiModeManager:Landroid/app/IUiModeManager;

.field mUndockedHdmiRotation:I

.field mUnrestrictedScreenHeight:I

.field mUnrestrictedScreenLeft:I

.field mUnrestrictedScreenTop:I

.field mUnrestrictedScreenWidth:I

.field mUpsideDownRotation:I

.field mUseTvRouting:Z

.field mUserRotation:I

.field mUserRotationMode:I

.field mVibrator:Landroid/os/Vibrator;

.field mVirtualKeyVibePattern:[J

.field mVoiceContentBottom:I

.field mVoiceContentLeft:I

.field mVoiceContentRight:I

.field mVoiceContentTop:I

.field mWakeGestureEnabledSetting:Z

.field mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

.field private mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

.field private mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

.field mWindowManager:Landroid/view/IWindowManager;

.field final mWindowManagerDrawCallback:Ljava/lang/Runnable;

.field mWindowManagerDrawComplete:Z

.field mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field mWindowManagerInternal:Landroid/view/WindowManagerInternal;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/BarController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/policy/PhoneWindowManager;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/PhoneWindowManager;JZLjava/lang/String;)Z
    .locals 1
    .param p1, "wakeTime"    # J
    .param p3, "wakeInTheaterMode"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->performAuditoryFeedbackForAccessibilityIfNeed()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/policy/PhoneWindowManager;JZI)V
    .locals 1
    .param p1, "eventTime"    # J
    .param p3, "interactive"    # Z
    .param p4, "count"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JZI)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "swipeTarget"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .locals 0
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->takeScreenshot()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .locals 0
    .param p1, "acquire"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->updateDreamingSleepToken(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/policy/PhoneWindowManager;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->disablePointerLocation()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->enablePointerLocation()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishWindowsDrawn()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleHideBootMessage()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 215
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 216
    const/4 v1, 0x4

    .line 215
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 217
    const/16 v1, 0xd

    .line 215
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 239
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 240
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 241
    const-string/jumbo v1, "android.intent.category.APP_BROWSER"

    const/16 v2, 0x40

    .line 240
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 242
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 243
    const-string/jumbo v1, "android.intent.category.APP_EMAIL"

    const/16 v2, 0x41

    .line 242
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 244
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 245
    const-string/jumbo v1, "android.intent.category.APP_CONTACTS"

    const/16 v2, 0xcf

    .line 244
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 246
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 247
    const-string/jumbo v1, "android.intent.category.APP_CALENDAR"

    const/16 v2, 0xd0

    .line 246
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 248
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 249
    const-string/jumbo v1, "android.intent.category.APP_MUSIC"

    const/16 v2, 0xd1

    .line 248
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 250
    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    .line 251
    const-string/jumbo v1, "android.intent.category.APP_CALCULATOR"

    const/16 v2, 0xd2

    .line 250
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 481
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 482
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 483
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 484
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 485
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 486
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 487
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpStableFrame:Landroid/graphics/Rect;

    .line 488
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    .line 489
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpOutsetFrame:Landroid/graphics/Rect;

    .line 2647
    const/16 v0, 0x7d3

    .line 2648
    const/16 v1, 0x7da

    .line 2646
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    .line 148
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    .line 274
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    .line 306
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 309
    iput-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 311
    iput-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 312
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    .line 313
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCanHideNavigationBar:Z

    .line 314
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    .line 315
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    .line 316
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    .line 317
    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    .line 321
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$1;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawCallback:Ljava/lang/Runnable;

    .line 328
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$2;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    .line 338
    iput-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 339
    iput-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 357
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    .line 358
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 368
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    .line 383
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    .line 385
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    .line 386
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    .line 390
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    .line 407
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 408
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 409
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    .line 410
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    .line 413
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationMode:I

    .line 470
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 472
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 475
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    .line 479
    iput-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    .line 493
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    .line 494
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    .line 507
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    .line 561
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    .line 562
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    .line 563
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    .line 564
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    .line 566
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    .line 567
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    .line 568
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    .line 569
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    .line 621
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 620
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    .line 624
    new-instance v0, Lcom/android/server/policy/LogDecelerateInterpolator;

    const/16 v1, 0x64

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/LogDecelerateInterpolator;-><init>(II)V

    .line 623
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

    .line 695
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$3;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 788
    new-instance v0, Lcom/android/server/policy/StatusBarController;

    invoke-direct {v0}, Lcom/android/server/policy/StatusBarController;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    .line 790
    new-instance v0, Lcom/android/server/policy/BarController;

    const-string/jumbo v1, "NavigationBar"

    .line 791
    const/high16 v2, 0x8000000

    .line 792
    const/high16 v3, 0x20000000

    .line 793
    const/high16 v4, -0x80000000

    .line 794
    const/4 v5, 0x2

    .line 795
    const/high16 v6, 0x8000000

    .line 790
    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/BarController;-><init>(Ljava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    .line 1190
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$4;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    .line 1201
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$5;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    .line 1313
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$6;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 3325
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    .line 3393
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$8;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 3392
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    .line 4817
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    .line 4818
    iput-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 4820
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$9;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$9;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    .line 5395
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$10;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$10;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    .line 5416
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$11;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$11;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    .line 5431
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$12;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$12;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    .line 5452
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$13;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$13;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHiddenNavPanic:Ljava/lang/Runnable;

    .line 6125
    iput-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 6240
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    .line 148
    return-void
.end method

.method private applyLidSwitchState()V
    .locals 5

    .prologue
    .line 6306
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    if-eqz v0, :cond_0

    .line 6307
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 6308
    const/4 v1, 0x3

    .line 6309
    const/4 v4, 0x1

    .line 6307
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 6312
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6313
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 6305
    return-void

    .line 6312
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private applyStableConstraints(IILandroid/graphics/Rect;)V
    .locals 2
    .param p1, "sysui"    # I
    .param p2, "fl"    # I
    .param p3, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 3822
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_3

    .line 3825
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_4

    .line 3826
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 3827
    :cond_0
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 3828
    :cond_1
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 3829
    :cond_2
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 3821
    :cond_3
    :goto_0
    return-void

    .line 3831
    :cond_4
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 3832
    :cond_5
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 3833
    :cond_6
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    if-le v0, v1, :cond_7

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 3834
    :cond_7
    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private areTranslucentBarsAllowed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 6787
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    if-eqz v1, :cond_0

    .line 6788
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6787
    :cond_0
    :goto_0
    return v0

    .line 6788
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static awakenDreams()V
    .locals 2

    .prologue
    .line 2614
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .line 2615
    .local v0, "dreamManager":Landroid/service/dreams/IDreamManager;
    if-eqz v0, :cond_0

    .line 2617
    :try_start_0
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2613
    :cond_0
    :goto_0
    return-void

    .line 2618
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private canHideNavigationBar()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1700
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v1, :cond_0

    .line 1701
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1700
    :cond_0
    :goto_0
    return v0

    .line 1701
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private canReceiveInput(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 6
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v3, 0x0

    .line 3841
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 3843
    .local v1, "notFocusable":Z
    :goto_0
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x20000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    .line 3844
    .local v0, "altFocusableIm":Z
    :goto_1
    xor-int v2, v1, v0

    .line 3845
    .local v2, "notFocusableForIm":Z
    if-eqz v2, :cond_2

    :goto_2
    return v3

    .line 3841
    .end local v0    # "altFocusableIm":Z
    .end local v1    # "notFocusable":Z
    .end local v2    # "notFocusableForIm":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "notFocusable":Z
    goto :goto_0

    .line 3843
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "altFocusableIm":Z
    goto :goto_1

    .line 3845
    .restart local v2    # "notFocusableForIm":Z
    :cond_2
    const/4 v3, 0x1

    goto :goto_2
.end method

.method private cancelPendingPowerKeyAction()V
    .locals 2

    .prologue
    .line 1020
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v0, :cond_0

    .line 1021
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1022
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1019
    :cond_0
    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .locals 2

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1186
    return-void
.end method

.method private cancelPreloadRecentApps()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3208
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    if-eqz v2, :cond_0

    .line 3209
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3211
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 3212
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 3213
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->cancelPreloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3207
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 3215
    :catch_0
    move-exception v0

    .line 3216
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "RemoteException when cancelling recent apps preload"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3218
    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private clearClearableFlagsLw()V
    .locals 2

    .prologue
    .line 6765
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    or-int/lit8 v0, v1, 0x7

    .line 6766
    .local v0, "newVal":I
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-eq v0, v1, :cond_0

    .line 6767
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 6768
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility()V

    .line 6764
    :cond_0
    return-void
.end method

.method private disablePointerLocation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1832
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v1, :cond_0

    .line 1833
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 1834
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1835
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1836
    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 1831
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method private dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 5292
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    .line 5293
    return-void

    .line 5295
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    .line 5296
    .local v7, "keyCode":I
    const/16 v3, 0x1005

    .line 5298
    .local v3, "flags":I
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    .line 5299
    .local v4, "pkgName":Ljava/lang/String;
    sparse-switch v7, :sswitch_data_0

    .line 5291
    :cond_1
    :goto_0
    return-void

    .line 5302
    :sswitch_0
    :try_start_0
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5303
    const-string/jumbo v5, "WindowManager"

    .line 5302
    const/4 v1, 0x1

    .line 5303
    const/high16 v2, -0x80000000

    .line 5302
    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5304
    :catch_0
    move-exception v6

    .line 5305
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Error dispatching volume up in dispatchTvAudioEvent."

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5310
    .end local v6    # "e":Landroid/os/RemoteException;
    :sswitch_1
    :try_start_1
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5311
    const-string/jumbo v5, "WindowManager"

    .line 5310
    const/4 v1, -0x1

    .line 5311
    const/high16 v2, -0x80000000

    .line 5310
    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 5312
    :catch_1
    move-exception v6

    .line 5313
    .restart local v6    # "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Error dispatching volume down in dispatchTvAudioEvent."

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5318
    .end local v6    # "e":Landroid/os/RemoteException;
    :sswitch_2
    :try_start_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 5319
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    .line 5321
    const-string/jumbo v5, "WindowManager"

    .line 5320
    const/16 v1, 0x65

    .line 5321
    const/high16 v2, -0x80000000

    .line 5319
    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 5323
    :catch_2
    move-exception v6

    .line 5324
    .restart local v6    # "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Error dispatching mute in dispatchTvAudioEvent."

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 5299
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_1
        0xa4 -> :sswitch_2
    .end sparse-switch
.end method

.method private enablePointerLocation()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1805
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v2, :cond_1

    .line 1806
    new-instance v2, Lcom/android/internal/widget/PointerLocationView;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    .line 1807
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    .line 1808
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 1811
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7df

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1812
    const/16 v2, 0x518

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1816
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1817
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1818
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1821
    :cond_0
    const/4 v2, -0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1822
    const-string/jumbo v2, "PointerLocation"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1824
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1823
    check-cast v1, Landroid/view/WindowManager;

    .line 1825
    .local v1, "wm":Landroid/view/WindowManager;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 1826
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1827
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 1804
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_1
    return-void
.end method

.method private finishKeyguardDrawn()V
    .locals 4

    .prologue
    .line 5566
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5567
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    .line 5568
    return-void

    .line 5571
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    .line 5572
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_2

    .line 5573
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5575
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 5580
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawCallback:Ljava/lang/Runnable;

    .line 5581
    const-wide/16 v2, 0x3e8

    .line 5580
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/WindowManagerInternal;->waitForAllWindowsDrawn(Ljava/lang/Runnable;J)V

    .line 5565
    return-void

    .line 5566
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private finishPowerKeyPress()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1012
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    .line 1013
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    .line 1014
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1011
    :cond_0
    return-void
.end method

.method private finishScreenTurningOn()V
    .locals 5

    .prologue
    .line 5652
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5655
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 5659
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 5667
    :try_start_1
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    if-eqz v3, :cond_4

    .line 5668
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    if-eqz v3, :cond_4

    .line 5673
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .line 5674
    .local v1, "listener":Landroid/view/WindowManagerPolicy$ScreenOnListener;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .line 5675
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    .line 5679
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v3, :cond_5

    .line 5680
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    .line 5681
    const/4 v0, 0x1

    .line 5682
    .local v0, "enableScreen":Z
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    if-eqz v3, :cond_1

    .line 5683
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    .line 5684
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hideBootMessages()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    :goto_0
    monitor-exit v4

    .line 5691
    if-eqz v1, :cond_2

    .line 5692
    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    .line 5695
    :cond_2
    if-eqz v0, :cond_3

    .line 5697
    :try_start_2
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v3}, Landroid/view/IWindowManager;->enableScreenIfNeeded()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5651
    :cond_3
    :goto_1
    return-void

    .line 5652
    .end local v0    # "enableScreen":Z
    .end local v1    # "listener":Landroid/view/WindowManagerPolicy$ScreenOnListener;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    :cond_4
    monitor-exit v4

    .line 5669
    return-void

    .line 5687
    .restart local v1    # "listener":Landroid/view/WindowManagerPolicy$ScreenOnListener;
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "enableScreen":Z
    goto :goto_0

    .line 5659
    .end local v0    # "enableScreen":Z
    .end local v1    # "listener":Landroid/view/WindowManagerPolicy$ScreenOnListener;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3

    .line 5698
    .restart local v0    # "enableScreen":Z
    .restart local v1    # "listener":Landroid/view/WindowManagerPolicy$ScreenOnListener;
    :catch_0
    move-exception v2

    .local v2, "unhandled":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private finishWindowsDrawn()V
    .locals 2

    .prologue
    .line 5640
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5641
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    monitor-exit v1

    .line 5642
    return-void

    .line 5645
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 5648
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishScreenTurningOn()V

    .line 5639
    return-void

    .line 5640
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .locals 3

    .prologue
    .line 2635
    const-string/jumbo v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 2634
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 2636
    .local v0, "audioService":Landroid/media/IAudioService;
    if-nez v0, :cond_0

    .line 2637
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    :cond_0
    return-object v0
.end method

.method static getDreamManager()Landroid/service/dreams/IDreamManager;
    .locals 1

    .prologue
    .line 2626
    const-string/jumbo v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2625
    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    return-object v0
.end method

.method private getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1259
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    if-nez v2, :cond_1

    .line 1260
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1261
    const-string/jumbo v3, "hdmi_control"

    .line 1260
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiControlManager;

    .line 1262
    .local v1, "manager":Landroid/hardware/hdmi/HdmiControlManager;
    const/4 v0, 0x0

    .line 1263
    .local v0, "client":Landroid/hardware/hdmi/HdmiPlaybackClient;
    if-eqz v1, :cond_0

    .line 1264
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v0

    .line 1266
    .end local v0    # "client":Landroid/hardware/hdmi/HdmiPlaybackClient;
    :cond_0
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    invoke-direct {v2, v0, v4}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;-><init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Lcom/android/server/policy/PhoneWindowManager$HdmiControl;)V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    .line 1268
    .end local v1    # "manager":Landroid/hardware/hdmi/HdmiControlManager;
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    return-object v2
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 6
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "resid"    # I

    .prologue
    const/4 v3, 0x0

    .line 6054
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 6055
    .local v0, "ar":[I
    if-nez v0, :cond_0

    .line 6056
    return-object v3

    .line 6058
    :cond_0
    array-length v3, v0

    new-array v2, v3, [J

    .line 6059
    .local v2, "out":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 6060
    aget v3, v0, v1

    int-to-long v4, v3

    aput-wide v4, v2, v1

    .line 6059
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6062
    :cond_1
    return-object v2
.end method

.method private getMaxMultiPressPowerCount()I
    .locals 1

    .prologue
    .line 1102
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    if-eqz v0, :cond_0

    .line 1103
    const/4 v0, 0x3

    return v0

    .line 1105
    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    if-eqz v0, :cond_1

    .line 1106
    const/4 v0, 0x2

    return v0

    .line 1108
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private getResolvedLongPressOnPowerBehavior()I
    .locals 1

    .prologue
    .line 1151
    invoke-static {}, Landroid/os/FactoryTest;->isLongPressOnPowerOffEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1152
    const/4 v0, 0x3

    return v0

    .line 1154
    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    return v0
.end method

.method private getScreenshotChordLongPressDelay()J
    .locals 2

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v0

    long-to-float v0, v0

    .line 1180
    const/high16 v1, 0x40200000    # 2.5f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0

    .line 1183
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v0

    return-wide v0
.end method

.method private getSearchManager()Landroid/app/SearchManager;
    .locals 2

    .prologue
    .line 3187
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_0

    .line 3188
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    .line 3190
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method private handleDoubleTapOnHome()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1307
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ne v0, v1, :cond_0

    .line 1308
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    .line 1309
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    .line 1306
    :cond_0
    return-void
.end method

.method private handleHideBootMessage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5704
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5705
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    if-nez v0, :cond_0

    .line 5706
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 5707
    return-void

    :cond_0
    monitor-exit v1

    .line 5711
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 5713
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 5714
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    .line 5703
    :cond_1
    return-void

    .line 5704
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleLongPressOnHome(I)V
    .locals 4
    .param p1, "deviceId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1294
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-eqz v0, :cond_0

    .line 1295
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    .line 1296
    invoke-virtual {p0, v3, v1, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1298
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ne v0, v2, :cond_1

    .line 1299
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    .line 1293
    :cond_0
    :goto_0
    return-void

    .line 1300
    :cond_1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1301
    invoke-direct {p0, v3, p1}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private handleShortPressOnHome()V
    .locals 2

    .prologue
    .line 1240
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;->turnOnTv()V

    .line 1244
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v0}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1245
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    .line 1246
    return-void

    .line 1250
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    .line 1238
    return-void
.end method

.method private hasLongPressOnPowerBehavior()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1158
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private hideRecentApps(ZZ)V
    .locals 5
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHome"    # Z

    .prologue
    const/4 v4, 0x0

    .line 3258
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3260
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 3261
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 3262
    invoke-interface {v1, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->hideRecentApps(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3257
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 3264
    :catch_0
    move-exception v0

    .line 3265
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "RemoteException when closing recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3267
    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z
    .locals 7
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "fallbackEvent"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    const/4 v6, 0x0

    .line 3111
    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    .line 3112
    .local v0, "actions":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 3113
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v2

    .line 3115
    .local v2, "delayMillis":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 3116
    const/4 v1, 0x1

    return v1

    .line 3119
    .end local v2    # "delayMillis":J
    :cond_0
    return v6
.end method

.method private interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V
    .locals 13
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z

    .prologue
    const/16 v12, 0xe

    const/4 v7, 0x1

    .line 896
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-nez v8, :cond_0

    .line 897
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 901
    :cond_0
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    if-eqz v8, :cond_1

    .line 902
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v9, 0xd

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 907
    :cond_1
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    .line 908
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-direct {p0, v9}, Lcom/android/server/policy/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v9

    .line 907
    invoke-virtual {v8, p2, v10, v11, v9}, Lcom/android/server/policy/ImmersiveModeConfirmation;->onPowerKeyDown(ZJZ)Z

    move-result v5

    .line 909
    .local v5, "panic":Z
    if-eqz v5, :cond_2

    .line 910
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mHiddenNavPanic:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 914
    :cond_2
    if-eqz p2, :cond_3

    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-eqz v8, :cond_7

    .line 922
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v6

    .line 923
    .local v6, "telecomManager":Landroid/telecom/TelecomManager;
    const/4 v2, 0x0

    .line 924
    .local v2, "hungUp":Z
    if-eqz v6, :cond_4

    .line 925
    invoke-virtual {v6}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 928
    invoke-virtual {v6}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 939
    .end local v2    # "hungUp":Z
    :cond_4
    :goto_1
    const-class v8, Lcom/android/server/GestureLauncherService;

    .line 938
    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/GestureLauncherService;

    .line 940
    .local v0, "gestureService":Lcom/android/server/GestureLauncherService;
    const/4 v1, 0x0

    .line 941
    .local v1, "gesturedServiceIntercepted":Z
    if-eqz v0, :cond_5

    .line 942
    invoke-virtual {v0, p1, p2}, Lcom/android/server/GestureLauncherService;->interceptPowerKeyDown(Landroid/view/KeyEvent;Z)Z

    move-result v1

    .line 947
    .end local v1    # "gesturedServiceIntercepted":Z
    :cond_5
    if-nez v2, :cond_9

    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-nez v8, :cond_9

    .line 948
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    .line 947
    if-nez v8, :cond_9

    :goto_2
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 949
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v8, :cond_6

    .line 950
    if-eqz p2, :cond_a

    .line 953
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 954
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 955
    .local v4, "msg":Landroid/os/Message;
    invoke-virtual {v4, v7}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 956
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 957
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v8

    .line 956
    invoke-virtual {v7, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 894
    .end local v4    # "msg":Landroid/os/Message;
    :cond_6
    :goto_3
    return-void

    .line 915
    .end local v0    # "gestureService":Lcom/android/server/GestureLauncherService;
    .end local v6    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v8

    and-int/lit16 v8, v8, 0x400

    if-nez v8, :cond_3

    .line 916
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    .line 917
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    .line 918
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord()V

    goto :goto_0

    .line 929
    .restart local v2    # "hungUp":Z
    .restart local v6    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_8
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_4

    .line 931
    invoke-virtual {v6}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v8

    .line 929
    if-eqz v8, :cond_4

    if-eqz p2, :cond_4

    .line 934
    invoke-virtual {v6}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v2

    .local v2, "hungUp":Z
    goto :goto_1

    .end local v2    # "hungUp":Z
    .restart local v0    # "gestureService":Lcom/android/server/GestureLauncherService;
    :cond_9
    move v1, v7

    .line 947
    goto :goto_2

    .line 960
    :cond_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    .line 962
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    if-eqz v8, :cond_b

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 963
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 964
    .restart local v4    # "msg":Landroid/os/Message;
    invoke-virtual {v4, v7}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 965
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 966
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v10

    .line 965
    invoke-virtual {v8, v4, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 967
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    goto :goto_3

    .line 969
    .end local v4    # "msg":Landroid/os/Message;
    :cond_b
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result v3

    .line 971
    .local v3, "maxCount":I
    if-gt v3, v7, :cond_c

    .line 972
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    goto :goto_3

    .line 974
    :cond_c
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    goto :goto_3
.end method

.method private interceptPowerKeyUp(Landroid/view/KeyEvent;ZZ)V
    .locals 11
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "interactive"    # Z
    .param p3, "canceled"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 982
    if-nez p3, :cond_1

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 983
    :goto_0
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    .line 984
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    .line 985
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 987
    if-nez v2, :cond_3

    .line 989
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    .line 991
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result v3

    .line 992
    .local v3, "maxCount":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v0

    .line 993
    .local v0, "eventTime":J
    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    if-ge v7, v3, :cond_2

    .line 996
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 997
    if-eqz p2, :cond_0

    move v5, v6

    :cond_0
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 996
    const/16 v10, 0xd

    invoke-virtual {v7, v10, v5, v8, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 998
    .local v4, "msg":Landroid/os/Message;
    invoke-virtual {v4, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 999
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1000
    return-void

    .line 982
    .end local v0    # "eventTime":J
    .end local v3    # "maxCount":I
    .end local v4    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v2, 0x1

    .local v2, "handled":Z
    goto :goto_0

    .line 1004
    .end local v2    # "handled":Z
    .restart local v0    # "eventTime":J
    .restart local v3    # "maxCount":I
    :cond_2
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    invoke-direct {p0, v0, v1, p2, v5}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JZI)V

    .line 1008
    .end local v0    # "eventTime":J
    .end local v3    # "maxCount":I
    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    .line 981
    return-void
.end method

.method private interceptScreenshotChord()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x96

    .line 1162
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v2, :cond_0

    .line 1163
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    .line 1162
    if-eqz v2, :cond_0

    .line 1163
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    .line 1162
    if-eqz v2, :cond_0

    .line 1164
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    if-eqz v2, :cond_1

    .line 1161
    :cond_0
    :goto_0
    return-void

    .line 1165
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1166
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1167
    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 1169
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 1170
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 1172
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getScreenshotChordLongPressDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private isAnyPortrait(I)Z
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    const/4 v0, 0x1

    .line 6011
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGlobalAccessibilityGestureEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6520
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 6521
    const-string/jumbo v3, "enable_accessibility_global_gesture_enabled"

    .line 6520
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isHidden(I)Z
    .locals 3
    .param p1, "accessibilityMode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2034
    packed-switch p1, :pswitch_data_0

    .line 2040
    return v1

    .line 2036
    :pswitch_0
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 2038
    :pswitch_1
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-ne v2, v0, :cond_1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 2034
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isImmersiveMode(I)Z
    .locals 3
    .param p1, "vis"    # I

    .prologue
    const/4 v1, 0x0

    .line 6773
    const/16 v0, 0x1800

    .line 6774
    .local v0, "flags":I
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_0

    .line 6775
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_0

    .line 6776
    and-int/lit16 v2, p1, 0x1800

    if-eqz v2, :cond_0

    .line 6777
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v1

    .line 6774
    :cond_0
    return v1
.end method

.method private isKeyguardShowingAndNotOccluded()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 5740
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v1, :cond_0

    return v0

    .line 5741
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isLandscapeOrSeascape(I)Z
    .locals 2
    .param p1, "rotation"    # I

    .prologue
    const/4 v0, 0x1

    .line 6007
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRoundWindow()Z
    .locals 1

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v0

    return v0
.end method

.method private isStatusBarKeyguard()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 4704
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    .line 4705
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 4704
    :cond_0
    return v0
.end method

.method private isTheaterModeEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 6515
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 6516
    const-string/jumbo v3, "theater_mode_on"

    .line 6515
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static isValidGlobalKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 5197
    sparse-switch p0, :sswitch_data_0

    .line 5203
    const/4 v0, 0x1

    return v0

    .line 5201
    :sswitch_0
    const/4 v0, 0x0

    return v0

    .line 5197
    nop

    :sswitch_data_0
    .sparse-switch
        0x1a -> :sswitch_0
        0xdf -> :sswitch_0
        0xe0 -> :sswitch_0
    .end sparse-switch
.end method

.method private isWakeKeyWhenScreenOff(I)Z
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5215
    sparse-switch p1, :sswitch_data_0

    .line 5238
    return v0

    .line 5220
    :sswitch_0
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 5236
    :sswitch_1
    return v1

    .line 5215
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_1
        0x4f -> :sswitch_1
        0x55 -> :sswitch_1
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x5b -> :sswitch_1
        0x7e -> :sswitch_1
        0x7f -> :sswitch_1
        0x82 -> :sswitch_1
        0xa4 -> :sswitch_0
        0xde -> :sswitch_1
    .end sparse-switch
.end method

.method private launchAssistAction(Ljava/lang/String;I)V
    .locals 7
    .param p1, "hint"    # Ljava/lang/String;
    .param p2, "deviceId"    # I

    .prologue
    const/4 v6, 0x0

    .line 3143
    const-string/jumbo v4, "assist"

    invoke-virtual {p0, v4}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3144
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3146
    return-void

    .line 3148
    :cond_0
    const/4 v0, 0x0

    .line 3149
    .local v0, "args":Landroid/os/Bundle;
    const/high16 v4, -0x80000000

    if-le p2, v4, :cond_1

    .line 3150
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "args":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3151
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3153
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0xf

    .line 3154
    const/4 v5, 0x4

    .line 3153
    if-ne v4, v5, :cond_3

    .line 3156
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "search"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchManager;

    .line 3157
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 3156
    invoke-virtual {v4, p1, v5, v0}, Landroid/app/SearchManager;->launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 3142
    :cond_2
    :goto_0
    return-void

    .line 3160
    :cond_3
    if-eqz p1, :cond_5

    .line 3161
    if-nez v0, :cond_4

    .line 3162
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, "args":Landroid/os/Bundle;
    move-object v0, v1

    .line 3164
    .end local v1    # "args":Landroid/os/Bundle;
    :cond_4
    const/4 v4, 0x1

    invoke-virtual {v0, p1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3166
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v3

    .line 3167
    .local v3, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v3, :cond_2

    .line 3168
    invoke-interface {v3, v0}, Lcom/android/internal/statusbar/IStatusBarService;->startAssist(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3170
    .end local v3    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v2

    .line 3171
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v5, "RemoteException when starting assist"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3173
    iput-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private launchAssistLongPressAction()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3123
    invoke-virtual {p0, v4, v3, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 3124
    const-string/jumbo v3, "assist"

    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3127
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3128
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3132
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v2

    .line 3133
    .local v2, "searchManager":Landroid/app/SearchManager;
    if-eqz v2, :cond_0

    .line 3134
    invoke-virtual {v2}, Landroid/app/SearchManager;->stopSearch()V

    .line 3136
    :cond_0
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3122
    .end local v2    # "searchManager":Landroid/app/SearchManager;
    :goto_0
    return-void

    .line 3137
    :catch_0
    move-exception v0

    .line 3138
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v3, "WindowManager"

    const-string/jumbo v4, "No activity to handle assist long press action."

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 4323
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4324
    .local v0, "top":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 4325
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    if-le v1, v0, :cond_0

    .line 4326
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    .line 4328
    :cond_0
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    if-le v1, v0, :cond_1

    .line 4329
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    .line 4331
    :cond_1
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 4332
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 4333
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    if-le v1, v0, :cond_2

    .line 4334
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    .line 4322
    :cond_2
    return-void
.end method

.method private offsetVoiceInputWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 4342
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4343
    .local v0, "top":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    .line 4344
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    if-le v1, v0, :cond_0

    .line 4345
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    .line 4341
    :cond_0
    return-void
.end method

.method private performAuditoryFeedbackForAccessibilityIfNeed()V
    .locals 4

    .prologue
    .line 6500
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isGlobalAccessibilityGestureEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 6501
    return-void

    .line 6503
    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 6504
    const-string/jumbo v3, "audio"

    .line 6503
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 6505
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSilentMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6506
    return-void

    .line 6508
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 6509
    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 6508
    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v1

    .line 6510
    .local v1, "ringTone":Landroid/media/Ringtone;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 6511
    invoke-virtual {v1}, Landroid/media/Ringtone;->play()V

    .line 6499
    return-void
.end method

.method private powerLongPress()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1112
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result v0

    .line 1113
    .local v0, "behavior":I
    packed-switch v0, :pswitch_data_0

    .line 1111
    :goto_0
    :pswitch_0
    return-void

    .line 1117
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1118
    invoke-virtual {p0, v3, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1119
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->performAuditoryFeedbackForAccessibilityIfNeed()V

    .line 1121
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    goto :goto_0

    .line 1125
    :pswitch_2
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 1126
    invoke-virtual {p0, v3, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 1127
    const-string/jumbo v3, "globalactions"

    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1128
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    :goto_1
    invoke-interface {v3, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 1113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private powerMultiPressAction(JZI)V
    .locals 5
    .param p1, "eventTime"    # J
    .param p3, "interactive"    # Z
    .param p4, "behavior"    # I

    .prologue
    const/4 v3, 0x0

    .line 1064
    packed-switch p4, :pswitch_data_0

    .line 1063
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1068
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1069
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Ignoring toggling theater mode - device not setup."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1073
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1074
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Toggling theater mode off."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1076
    const-string/jumbo v1, "theater_mode_on"

    .line 1075
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1077
    if-nez p3, :cond_0

    .line 1078
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    goto :goto_0

    .line 1081
    :cond_2
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Toggling theater mode on."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1083
    const-string/jumbo v1, "theater_mode_on"

    const/4 v2, 0x1

    .line 1082
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1085
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1087
    const/4 v1, 0x4

    .line 1086
    invoke-virtual {v0, p1, p2, v1, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto :goto_0

    .line 1092
    :pswitch_2
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Starting brightness boost."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    if-nez p3, :cond_3

    .line 1094
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    .line 1096
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager;->boostScreenBrightness(J)V

    goto :goto_0

    .line 1064
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private powerPress(JZI)V
    .locals 5
    .param p1, "eventTime"    # J
    .param p3, "interactive"    # Z
    .param p4, "count"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    const/4 v1, 0x1

    .line 1027
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    if-eqz v0, :cond_2

    .line 1033
    :cond_0
    const/4 v0, 0x2

    if-ne p4, v0, :cond_3

    .line 1034
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    .line 1026
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 1028
    :cond_2
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Suppressed redundant power key press while already in the process of turning the screen on."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    return-void

    .line 1035
    :cond_3
    const/4 v0, 0x3

    if-ne p4, v0, :cond_4

    .line 1036
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    goto :goto_0

    .line 1037
    :cond_4
    if-eqz p3, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    if-nez v0, :cond_1

    .line 1038
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1042
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2, v2, v3}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto :goto_0

    .line 1046
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto :goto_0

    .line 1051
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 1054
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_0

    .line 1057
    :pswitch_4
    invoke-virtual {p0, v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    goto :goto_0

    .line 1038
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private preloadRecentApps()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3194
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3196
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 3197
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 3198
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->preloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3193
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 3200
    :catch_0
    move-exception v0

    .line 3201
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "RemoteException when preloading recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3203
    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private readCameraLensCoverState()V
    .locals 1

    .prologue
    .line 2030
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getCameraLensCoverState()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 2029
    return-void
.end method

.method private readConfigurationDependentBehaviors()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1579
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1580
    const v1, 0x10e005b

    .line 1579
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1581
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-ltz v0, :cond_0

    .line 1582
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 1583
    :cond_0
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    .line 1586
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1587
    const v1, 0x10e005c

    .line 1586
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 1588
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-ltz v0, :cond_2

    .line 1589
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 1590
    :cond_2
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    .line 1578
    :cond_3
    return-void
.end method

.method private readRotation(I)I
    .locals 3
    .param p1, "resID"    # I

    .prologue
    .line 1842
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1843
    .local v1, "rotation":I
    sparse-switch v1, :sswitch_data_0

    .line 1856
    .end local v1    # "rotation":I
    :goto_0
    const/4 v2, -0x1

    return v2

    .line 1845
    .restart local v1    # "rotation":I
    :sswitch_0
    const/4 v2, 0x0

    return v2

    .line 1847
    :sswitch_1
    const/4 v2, 0x1

    return v2

    .line 1849
    :sswitch_2
    const/4 v2, 0x2

    return v2

    .line 1851
    :sswitch_3
    const/4 v2, 0x3

    return v2

    .line 1853
    .end local v1    # "rotation":I
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    goto :goto_0

    .line 1843
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 4
    .param p1, "swipeTarget"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 5467
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 5468
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    .line 5470
    return-void

    .line 5472
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v2}, Lcom/android/server/policy/StatusBarController;->checkShowTransientBarLw()Z

    move-result v1

    .line 5473
    .local v1, "sb":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->checkShowTransientBarLw()Z

    move-result v0

    .line 5474
    .local v0, "nb":Z
    if-nez v1, :cond_1

    if-eqz v0, :cond_5

    .line 5476
    :cond_1
    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v2, :cond_2

    monitor-exit v3

    .line 5478
    return-void

    .line 5480
    :cond_2
    if-eqz v1, :cond_3

    :try_start_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v2}, Lcom/android/server/policy/StatusBarController;->showTransient()V

    .line 5481
    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->showTransient()V

    .line 5482
    :cond_4
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-virtual {v2}, Lcom/android/server/policy/ImmersiveModeConfirmation;->confirmCurrentPrompt()V

    .line 5483
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    monitor-exit v3

    .line 5466
    return-void

    .line 5467
    .end local v0    # "nb":Z
    .end local v1    # "sb":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private setKeyguardOccludedLw(Z)Z
    .locals 6
    .param p1, "isOccluded"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 4684
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 4685
    .local v1, "wasOccluded":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    .line 4686
    .local v0, "showing":Z
    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    .line 4692
    :cond_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    if-eqz v0, :cond_2

    .line 4693
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 4694
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2, v5}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    .line 4695
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, -0x401

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4696
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x100001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4697
    return v5

    .line 4686
    :cond_1
    if-eqz v0, :cond_0

    .line 4687
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    .line 4688
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(Z)V

    .line 4689
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 4690
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x100000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4691
    return v5

    .line 4699
    :cond_2
    return v3
.end method

.method private shouldDispatchInputWhenNonInteractive()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 5269
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    if-eqz v2, :cond_0

    .line 5270
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getState()I

    move-result v2

    if-eq v2, v3, :cond_0

    .line 5271
    return v3

    .line 5276
    :cond_0
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    .line 5279
    .local v0, "dreamManager":Landroid/service/dreams/IDreamManager;
    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 5280
    return v3

    .line 5282
    :catch_0
    move-exception v1

    .line 5283
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "RemoteException when checking if dreaming"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5288
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private shouldEnableWakeGestureLp()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1799
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    .line 1800
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-eqz v1, :cond_0

    .line 1801
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->isSupported()Z

    move-result v0

    goto :goto_0
.end method

.method private shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z
    .locals 4
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "fl"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3479
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-eq v2, v3, :cond_0

    const v2, 0x2000400

    and-int/2addr v2, p2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private showRecentApps(Z)V
    .locals 5
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    const/4 v4, 0x0

    .line 3244
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3246
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 3247
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 3248
    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->showRecentApps(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3243
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 3250
    :catch_0
    move-exception v0

    .line 3251
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "RemoteException when showing recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3253
    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private sleepPress(J)V
    .locals 2
    .param p1, "eventTime"    # J

    .prologue
    const/4 v1, 0x1

    .line 1134
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    if-ne v0, v1, :cond_0

    .line 1135
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    .line 1133
    :cond_0
    return-void
.end method

.method private sleepRelease(J)V
    .locals 3
    .param p1, "eventTime"    # J

    .prologue
    .line 1140
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    packed-switch v0, :pswitch_data_0

    .line 1139
    :goto_0
    return-void

    .line 1143
    :pswitch_0
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "sleepRelease() calling goToSleep(GO_TO_SLEEP_REASON_SLEEP_BUTTON)"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1145
    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 1144
    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/os/PowerManager;->goToSleep(JII)V

    goto :goto_0

    .line 1140
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "handle"    # Landroid/os/UserHandle;

    .prologue
    .line 3179
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3180
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3178
    :goto_0
    return-void

    .line 3182
    :cond_0
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not starting activity because user setup is in progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private takeScreenshot()V
    .locals 8

    .prologue
    .line 4833
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4834
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v4

    .line 4835
    return-void

    .line 4837
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.systemui"

    .line 4838
    const-string/jumbo v5, "com.android.systemui.screenshot.TakeScreenshotService"

    .line 4837
    invoke-direct {v0, v3, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4839
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 4840
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4841
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$18;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$18;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 4878
    .local v1, "conn":Landroid/content/ServiceConnection;
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 4879
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v6, 0x1

    .line 4878
    invoke-virtual {v3, v2, v1, v6, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4880
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 4881
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotTimeout:Ljava/lang/Runnable;

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v4

    .line 4832
    return-void

    .line 4833
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v1    # "conn":Landroid/content/ServiceConnection;
    .end local v2    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private toggleRecentApps()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3224
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    .line 3226
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 3227
    .local v1, "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_0

    .line 3228
    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3223
    .end local v1    # "statusbar":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_0
    :goto_0
    return-void

    .line 3230
    :catch_0
    move-exception v0

    .line 3231
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "WindowManager"

    const-string/jumbo v3, "RemoteException when toggling recent apps"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3233
    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    goto :goto_0
.end method

.method private updateDreamingSleepToken(Z)V
    .locals 2
    .param p1, "acquire"    # Z

    .prologue
    const/4 v1, 0x0

    .line 6272
    if-eqz p1, :cond_1

    .line 6273
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-nez v0, :cond_0

    .line 6274
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-string/jumbo v1, "Dream"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->acquireSleepToken(Ljava/lang/String;)Landroid/app/ActivityManagerInternal$SleepToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    .line 6271
    :cond_0
    :goto_0
    return-void

    .line 6277
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-eqz v0, :cond_0

    .line 6278
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    .line 6279
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    goto :goto_0
.end method

.method private updateLightStatusBarLw(I)I
    .locals 3
    .param p1, "vis"    # I

    .prologue
    const/4 v2, 0x0

    .line 6647
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v1, :cond_2

    .line 6649
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 6651
    .local v0, "statusColorWin":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    if-eqz v0, :cond_1

    .line 6652
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, v1, :cond_3

    .line 6655
    and-int/lit16 p1, p1, -0x2001

    .line 6656
    invoke-static {v0, v2}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    and-int/lit16 v1, v1, 0x2000

    or-int/2addr p1, v1

    .line 6663
    :cond_1
    :goto_1
    return p1

    .line 6648
    .end local v0    # "statusColorWin":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .restart local v0    # "statusColorWin":Landroid/view/WindowManagerPolicy$WindowState;
    goto :goto_0

    .line 6658
    :cond_3
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isDimming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6660
    and-int/lit16 p1, p1, -0x2001

    goto :goto_1
.end method

.method private updateLockScreenTimeout()V
    .locals 6

    .prologue
    .line 6255
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v2

    .line 6256
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v1, :cond_1

    .line 6257
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v0

    .line 6258
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v1, v0, :cond_0

    .line 6259
    if-eqz v0, :cond_2

    .line 6261
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6266
    :goto_1
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 6254
    return-void

    .line 6256
    :cond_1
    const/4 v0, 0x0

    .local v0, "enable":Z
    goto :goto_0

    .line 6264
    .end local v0    # "enable":Z
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 6255
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private updateScreenOffSleepToken(Z)V
    .locals 2
    .param p1, "acquire"    # Z

    .prologue
    const/4 v1, 0x0

    .line 6285
    if-eqz p1, :cond_1

    .line 6286
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-nez v0, :cond_0

    .line 6287
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-string/jumbo v1, "ScreenOff"

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->acquireSleepToken(Ljava/lang/String;)Landroid/app/ActivityManagerInternal$SleepToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    .line 6284
    :cond_0
    :goto_0
    return-void

    .line 6290
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-eqz v0, :cond_0

    .line 6291
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    .line 6292
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    goto :goto_0
.end method

.method private updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I
    .locals 28
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I

    .prologue
    .line 6668
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v24

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    move/from16 v24, v0

    if-eqz v24, :cond_a

    .line 6670
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v20, v0

    .line 6671
    .local v20, "transWin":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, p3

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/StatusBarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result p3

    .line 6672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, p3

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/BarController;->applyTranslucentFlagLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result p3

    .line 6675
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v23, v0

    .line 6676
    .local v23, "type":I
    const/16 v24, 0x7d0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    const/16 v19, 0x1

    .line 6677
    .local v19, "statusBarHasFocus":Z
    :goto_1
    if-eqz v19, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v24

    if-eqz v24, :cond_c

    .line 6689
    :cond_1
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v24

    if-nez v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_2

    .line 6690
    const v24, 0x3fff7fff

    and-int p3, p3, v24

    .line 6696
    :cond_2
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x1000

    move/from16 v24, v0

    if-eqz v24, :cond_e

    const/4 v11, 0x1

    .line 6698
    .local v11, "immersiveSticky":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v24, v0

    if-eqz v24, :cond_10

    .line 6699
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v24

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x400

    move/from16 v24, v0

    if-eqz v24, :cond_f

    const/4 v9, 0x1

    .line 6702
    .local v9, "hideStatusBarWM":Z
    :goto_4
    and-int/lit8 v24, p3, 0x4

    if-eqz v24, :cond_11

    const/4 v8, 0x1

    .line 6704
    .local v8, "hideStatusBarSysui":Z
    :goto_5
    and-int/lit8 v24, p3, 0x2

    if-eqz v24, :cond_12

    const/4 v7, 0x1

    .line 6707
    .local v7, "hideNavBarSysui":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v24, v0

    if-eqz v24, :cond_14

    .line 6708
    if-nez v9, :cond_13

    .line 6709
    if-eqz v8, :cond_3

    .line 6708
    if-nez v11, :cond_13

    .line 6710
    :cond_3
    move/from16 v22, v19

    .line 6713
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v24, v0

    if-eqz v24, :cond_15

    if-eqz v7, :cond_15

    .line 6714
    move/from16 v21, v11

    .line 6716
    :goto_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 6717
    .local v14, "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-eqz v24, :cond_17

    .line 6718
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    move-wide/from16 v24, v0

    sub-long v24, v14, v24

    const-wide/16 v26, 0x7530

    cmp-long v24, v24, v26

    if-gtz v24, :cond_16

    const/16 v17, 0x1

    .line 6719
    .local v17, "pendingPanic":Z
    :goto_9
    if-eqz v17, :cond_4

    if-eqz v7, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v24

    if-eqz v24, :cond_18

    .line 6727
    :cond_4
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/policy/StatusBarController;->isTransientShowRequested()Z

    move-result v24

    if-eqz v24, :cond_5

    .line 6728
    if-eqz v22, :cond_19

    .line 6727
    :cond_5
    const/4 v5, 0x0

    .line 6729
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/policy/BarController;->isTransientShowRequested()Z

    move-result v24

    if-eqz v24, :cond_1b

    .line 6730
    if-eqz v21, :cond_1a

    const/4 v4, 0x0

    .line 6731
    .local v4, "denyTransientNav":Z
    :goto_c
    if-nez v5, :cond_6

    if-eqz v4, :cond_7

    .line 6733
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->clearClearableFlagsLw()V

    .line 6734
    and-int/lit8 p3, p3, -0x8

    .line 6737
    :cond_7
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x800

    move/from16 v24, v0

    if-eqz v24, :cond_1c

    const/4 v10, 0x1

    .line 6738
    .local v10, "immersive":Z
    :goto_d
    move/from16 v0, p3

    and-int/lit16 v0, v0, 0x1000

    move/from16 v24, v0

    if-eqz v24, :cond_1d

    const/4 v11, 0x1

    .line 6739
    :goto_e
    if-nez v10, :cond_1e

    move v12, v11

    .line 6741
    :goto_f
    if-eqz v7, :cond_8

    if-eqz v12, :cond_1f

    .line 6748
    :cond_8
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/StatusBarController;->updateVisibilityLw(ZII)I

    move-result p3

    .line 6751
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v16

    .line 6752
    .local v16, "oldImmersiveMode":Z
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v13

    .line 6753
    .local v13, "newImmersiveMode":Z
    if-eqz p1, :cond_9

    move/from16 v0, v16

    if-eq v0, v13, :cond_9

    .line 6754
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v18

    .line 6755
    .local v18, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    move-object/from16 v24, v0

    .line 6756
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v25

    .line 6755
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move/from16 v2, v25

    invoke-virtual {v0, v1, v13, v2}, Lcom/android/server/policy/ImmersiveModeConfirmation;->immersiveModeChanged(Ljava/lang/String;ZZ)V

    .line 6759
    .end local v18    # "pkg":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v21

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/BarController;->updateVisibilityLw(ZII)I

    move-result p3

    .line 6761
    return p3

    .line 6669
    .end local v4    # "denyTransientNav":Z
    .end local v7    # "hideNavBarSysui":Z
    .end local v8    # "hideStatusBarSysui":Z
    .end local v9    # "hideStatusBarWM":Z
    .end local v10    # "immersive":Z
    .end local v11    # "immersiveSticky":Z
    .end local v13    # "newImmersiveMode":Z
    .end local v14    # "now":J
    .end local v16    # "oldImmersiveMode":Z
    .end local v17    # "pendingPanic":Z
    .end local v19    # "statusBarHasFocus":Z
    .end local v20    # "transWin":Landroid/view/WindowManagerPolicy$WindowState;
    .end local v23    # "type":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v20, v0

    .restart local v20    # "transWin":Landroid/view/WindowManagerPolicy$WindowState;
    goto/16 :goto_0

    .line 6676
    .restart local v23    # "type":I
    :cond_b
    const/16 v19, 0x0

    .restart local v19    # "statusBarHasFocus":Z
    goto/16 :goto_1

    .line 6678
    :cond_c
    const/16 v6, 0x3806

    .line 6683
    .local v6, "flags":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    move/from16 v24, v0

    if-eqz v24, :cond_d

    .line 6684
    const v6, -0x3fffc7fa

    .line 6686
    :cond_d
    not-int v0, v6

    move/from16 v24, v0

    and-int v24, v24, p3

    and-int v25, p2, v6

    or-int p3, v24, v25

    goto/16 :goto_2

    .line 6696
    .end local v6    # "flags":I
    :cond_e
    const/4 v11, 0x0

    .restart local v11    # "immersiveSticky":Z
    goto/16 :goto_3

    .line 6699
    :cond_f
    const/4 v9, 0x0

    .restart local v9    # "hideStatusBarWM":Z
    goto/16 :goto_4

    .line 6698
    .end local v9    # "hideStatusBarWM":Z
    :cond_10
    const/4 v9, 0x0

    .restart local v9    # "hideStatusBarWM":Z
    goto/16 :goto_4

    .line 6702
    :cond_11
    const/4 v8, 0x0

    .restart local v8    # "hideStatusBarSysui":Z
    goto/16 :goto_5

    .line 6704
    :cond_12
    const/4 v7, 0x0

    .restart local v7    # "hideNavBarSysui":Z
    goto/16 :goto_6

    .line 6707
    :cond_13
    const/16 v22, 0x1

    .local v22, "transientStatusBarAllowed":Z
    goto/16 :goto_7

    .end local v22    # "transientStatusBarAllowed":Z
    :cond_14
    const/16 v22, 0x0

    .restart local v22    # "transientStatusBarAllowed":Z
    goto/16 :goto_7

    .line 6713
    .end local v22    # "transientStatusBarAllowed":Z
    :cond_15
    const/16 v21, 0x0

    .local v21, "transientNavBarAllowed":Z
    goto/16 :goto_8

    .line 6718
    .end local v21    # "transientNavBarAllowed":Z
    .restart local v14    # "now":J
    :cond_16
    const/16 v17, 0x0

    .restart local v17    # "pendingPanic":Z
    goto/16 :goto_9

    .line 6717
    .end local v17    # "pendingPanic":Z
    :cond_17
    const/16 v17, 0x0

    .restart local v17    # "pendingPanic":Z
    goto/16 :goto_9

    .line 6719
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 6722
    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    .line 6723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/policy/StatusBarController;->showTransient()V

    .line 6724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/policy/BarController;->showTransient()V

    goto/16 :goto_a

    .line 6728
    :cond_19
    move v5, v8

    .local v5, "denyTransientStatus":Z
    goto/16 :goto_b

    .line 6730
    .end local v5    # "denyTransientStatus":Z
    :cond_1a
    const/4 v4, 0x1

    .restart local v4    # "denyTransientNav":Z
    goto/16 :goto_c

    .line 6729
    .end local v4    # "denyTransientNav":Z
    :cond_1b
    const/4 v4, 0x0

    .restart local v4    # "denyTransientNav":Z
    goto/16 :goto_c

    .line 6737
    :cond_1c
    const/4 v10, 0x0

    .restart local v10    # "immersive":Z
    goto/16 :goto_d

    .line 6738
    :cond_1d
    const/4 v11, 0x0

    goto/16 :goto_e

    .line 6739
    :cond_1e
    const/4 v12, 0x1

    .local v12, "navAllowedHidden":Z
    goto/16 :goto_f

    .line 6741
    .end local v12    # "navAllowedHidden":Z
    :cond_1f
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v24

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v24

    .line 6742
    const/16 v25, 0x7e6

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v25

    .line 6741
    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_8

    .line 6745
    and-int/lit8 p3, p3, -0x3

    goto/16 :goto_10
.end method

.method private updateSystemUiVisibilityLw()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 6596
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 6598
    .local v4, "win":Landroid/view/WindowManagerPolicy$WindowState;
    :goto_0
    if-nez v4, :cond_1

    .line 6599
    return v7

    .line 6597
    .end local v4    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    :cond_0
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .restart local v4    # "win":Landroid/view/WindowManagerPolicy$WindowState;
    goto :goto_0

    .line 6601
    :cond_1
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v5, :cond_2

    .line 6608
    return v7

    .line 6611
    :cond_2

    invoke-static/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector;->setFlymeStatusBarTheme(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-static {v4, v6}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v5

    .line 6612
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    not-int v6, v6

    .line 6611
    and-int/2addr v5, v6

    .line 6613
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    not-int v6, v6

    .line 6611
    and-int v2, v5, v6

    .line 6614
    .local v2, "tmpVisibility":I
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    if-eqz v5, :cond_3

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v5

    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    if-ge v5, v6, :cond_3

    .line 6615
    const/4 v5, 0x7

    invoke-static {v4, v5}, Lcom/android/server/policy/PolicyControl;->adjustClearableFlags(Landroid/view/WindowManagerPolicy$WindowState;I)I

    move-result v5

    not-int v5, v5

    and-int/2addr v2, v5

    .line 6617
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->updateLightStatusBarLw(I)I

    move-result v2

    .line 6618
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-direct {p0, v4, v5, v2}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result v3

    .line 6619
    .local v3, "visibility":I
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    xor-int v0, v3, v5

    .line 6620
    .local v0, "diff":I
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4, v5}, Landroid/view/WindowManagerPolicy$WindowState;->getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v1

    .line 6621
    .local v1, "needsMenu":Z
    if-nez v0, :cond_4

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-ne v5, v1, :cond_4

    .line 6622
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v6

    if-ne v5, v6, :cond_4

    .line 6623
    return v7

    .line 6625
    :cond_4
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    .line 6626
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    .line 6627
    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    .line 6628
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/policy/PhoneWindowManager$23;

    invoke-direct {v6, p0, v3, v4, v1}, Lcom/android/server/policy/PhoneWindowManager$23;-><init>(Lcom/android/server/policy/PhoneWindowManager;ILandroid/view/WindowManagerPolicy$WindowState;Z)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6643
    return v0
.end method

.method private updateWakeGestureListenerLp()V
    .locals 1

    .prologue
    .line 1791
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1792
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->requestWakeUpTrigger()V

    .line 1790
    :goto_0
    return-void

    .line 1794
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->cancelWakeUpTrigger()V

    goto :goto_0
.end method

.method private wakeUp(JZLjava/lang/String;)Z
    .locals 5
    .param p1, "wakeTime"    # J
    .param p3, "wakeInTheaterMode"    # Z
    .param p4, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 5551
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v0

    .line 5552
    .local v0, "theaterModeEnabled":Z
    if-nez p3, :cond_0

    if-eqz v0, :cond_0

    .line 5553
    return v3

    .line 5556
    :cond_0
    if-eqz v0, :cond_1

    .line 5557
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 5558
    const-string/jumbo v2, "theater_mode_on"

    .line 5557
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5561
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1, p1, p2, p4}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    .line 5562
    const/4 v1, 0x1

    return v1
.end method

.method private wakeUpFromPowerKey(J)V
    .locals 3
    .param p1, "eventTime"    # J

    .prologue
    .line 5547
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromPowerKey:Z

    const-string/jumbo v1, "android.policy:POWER"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    .line 5546
    return-void
.end method


# virtual methods
.method public addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIII)Landroid/view/View;
    .locals 15
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "theme"    # I
    .param p4, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p5, "nonLocalizedLabel"    # Ljava/lang/CharSequence;
    .param p6, "labelRes"    # I
    .param p7, "icon"    # I
    .param p8, "logo"    # I
    .param p9, "windowFlags"    # I

    .prologue
    .line 2270
    if-nez p2, :cond_0

    .line 2271
    const/4 v12, 0x0

    return-object v12

    .line 2274
    :cond_0
    const/4 v11, 0x0

    .line 2275
    .local v11, "wm":Landroid/view/WindowManager;
    const/4 v9, 0x0

    .line 2278
    .local v9, "view":Landroid/view/View;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2282
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getThemeResId()I
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v12

    move/from16 v0, p3

    if-ne v0, v12, :cond_1

    if-eqz p6, :cond_2

    .line 2284
    :cond_1
    const/4 v12, 0x0

    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 2285
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/content/Context;->setTheme(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2291
    :cond_2
    :goto_0
    :try_start_2
    new-instance v10, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v10, v2}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 2292
    .local v10, "win":Lcom/android/internal/policy/PhoneWindow;
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lcom/android/internal/policy/PhoneWindow;->setIsStartingWindow(Z)V

    .line 2293
    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v8

    .line 2295
    .local v8, "ta":Landroid/content/res/TypedArray;
    const/16 v12, 0xc

    const/4 v13, 0x0

    .line 2294
    invoke-virtual {v8, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    if-nez v12, :cond_3

    .line 2297
    const/16 v12, 0xe

    const/4 v13, 0x0

    .line 2296
    invoke-virtual {v8, v12, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 2294
    if-eqz v12, :cond_4

    .line 2298
    :cond_3
    const/4 v12, 0x0

    return-object v12

    .line 2301
    :cond_4
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 2302
    .local v7, "r":Landroid/content/res/Resources;
    move/from16 v0, p6

    move-object/from16 v1, p5

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;)V

    .line 2305
    const/4 v12, 0x3

    .line 2304
    invoke-virtual {v10, v12}, Lcom/android/internal/policy/PhoneWindow;->setType(I)V

    .line 2307
    iget-object v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2311
    :try_start_3
    iget-boolean v13, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v13, :cond_5

    .line 2312
    const/high16 v13, 0x80000

    or-int p9, p9, v13

    :cond_5
    :try_start_4
    monitor-exit v12

    .line 2321
    or-int/lit8 v12, p9, 0x10

    or-int/lit8 v12, v12, 0x8

    .line 2324
    const/high16 v13, 0x20000

    .line 2321
    or-int/2addr v12, v13

    .line 2325
    or-int/lit8 v13, p9, 0x10

    or-int/lit8 v13, v13, 0x8

    .line 2328
    const/high16 v14, 0x20000

    .line 2325
    or-int/2addr v13, v14

    .line 2320
    invoke-virtual {v10, v12, v13}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V

    .line 2330
    move/from16 v0, p7

    invoke-virtual {v10, v0}, Lcom/android/internal/policy/PhoneWindow;->setDefaultIcon(I)V

    .line 2331
    move/from16 v0, p8

    invoke-virtual {v10, v0}, Lcom/android/internal/policy/PhoneWindow;->setDefaultLogo(I)V

    .line 2333
    const/4 v12, -0x1

    .line 2334
    const/4 v13, -0x1

    .line 2333
    invoke-virtual {v10, v12, v13}, Lcom/android/internal/policy/PhoneWindow;->setLayout(II)V

    .line 2336
    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    .line 2337
    .local v6, "params":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p1

    iput-object v0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 2338
    move-object/from16 v0, p2

    iput-object v0, v6, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 2339
    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v12

    .line 2340
    const/16 v13, 0x8

    const/4 v14, 0x0

    .line 2339
    invoke-virtual {v12, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2341
    iget v12, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v12, v12, 0x1

    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2343
    iget v12, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v12, v12, 0x10

    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2345
    invoke-virtual/range {p4 .. p4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v12

    if-nez v12, :cond_6

    .line 2346
    iget v12, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v12, v12, 0x80

    iput v12, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2349
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Starting "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2351
    const-string/jumbo v12, "window"

    invoke-virtual {v2, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Landroid/view/WindowManager;

    move-object v11, v0

    .line 2352
    .local v11, "wm":Landroid/view/WindowManager;
    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v9

    .line 2354
    .local v9, "view":Landroid/view/View;
    invoke-virtual {v10}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z
    :try_end_4
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v12

    if-eqz v12, :cond_9

    .line 2361
    const/4 v12, 0x0

    .line 2384
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_7

    .line 2385
    const-string/jumbo v13, "WindowManager"

    const-string/jumbo v14, "view not successfully added to wm, removing view"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    invoke-interface {v11, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2361
    :cond_7
    return-object v12

    .line 2307
    .end local v6    # "params":Landroid/view/WindowManager$LayoutParams;
    .local v9, "view":Landroid/view/View;
    .local v11, "wm":Landroid/view/WindowManager;
    :catchall_0
    move-exception v13

    :try_start_5
    monitor-exit v12

    throw v13
    :try_end_5
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2374
    .end local v2    # "context":Landroid/content/Context;
    .end local v7    # "r":Landroid/content/res/Resources;
    .end local v8    # "ta":Landroid/content/res/TypedArray;
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "win":Lcom/android/internal/policy/PhoneWindow;
    .end local v11    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v4

    .line 2376
    .local v4, "e":Landroid/view/WindowManager$BadTokenException;
    :try_start_6
    const-string/jumbo v12, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " already running, starting window not displayed. "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 2377
    invoke-virtual {v4}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object v14

    .line 2376
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2384
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-nez v12, :cond_8

    .line 2385
    const-string/jumbo v12, "WindowManager"

    const-string/jumbo v13, "view not successfully added to wm, removing view"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    invoke-interface {v11, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2390
    .end local v4    # "e":Landroid/view/WindowManager$BadTokenException;
    :cond_8
    :goto_1
    const/4 v12, 0x0

    return-object v12

    .line 2369
    .restart local v2    # "context":Landroid/content/Context;
    .restart local v6    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v7    # "r":Landroid/content/res/Resources;
    .restart local v8    # "ta":Landroid/content/res/TypedArray;
    .local v9, "view":Landroid/view/View;
    .restart local v10    # "win":Lcom/android/internal/policy/PhoneWindow;
    .local v11, "wm":Landroid/view/WindowManager;
    :cond_9
    :try_start_7
    invoke-interface {v11, v9, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2373
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_7
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v12

    if-eqz v12, :cond_b

    move-object v12, v9

    .line 2384
    :goto_2
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_a

    .line 2385
    const-string/jumbo v13, "WindowManager"

    const-string/jumbo v14, "view not successfully added to wm, removing view"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    invoke-interface {v11, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2373
    :cond_a
    return-object v12

    :cond_b
    const/4 v12, 0x0

    goto :goto_2

    .line 2378
    .end local v2    # "context":Landroid/content/Context;
    .end local v6    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v7    # "r":Landroid/content/res/Resources;
    .end local v8    # "ta":Landroid/content/res/TypedArray;
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "win":Lcom/android/internal/policy/PhoneWindow;
    .end local v11    # "wm":Landroid/view/WindowManager;
    :catch_1
    move-exception v5

    .line 2382
    .local v5, "e":Ljava/lang/RuntimeException;
    :try_start_8
    const-string/jumbo v12, "WindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " failed creating starting window"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2384
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    if-nez v12, :cond_8

    .line 2385
    const-string/jumbo v12, "WindowManager"

    const-string/jumbo v13, "view not successfully added to wm, removing view"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    invoke-interface {v11, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_1

    .line 2383
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v12

    .line 2384
    if-eqz v9, :cond_c

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_c

    .line 2385
    const-string/jumbo v13, "WindowManager"

    const-string/jumbo v14, "view not successfully added to wm, removing view"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    invoke-interface {v11, v9}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 2383
    :cond_c
    throw v12

    .line 2286
    .restart local v2    # "context":Landroid/content/Context;
    .local v9, "view":Landroid/view/View;
    .local v11, "wm":Landroid/view/WindowManager;
    :catch_2
    move-exception v3

    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_0
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;II)V
    .locals 4
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "keyboardPresence"    # I
    .param p3, "navigationPresence"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 2048
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    .line 2050
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    .line 2051
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    .line 2052
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    .line 2054
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v0, v1, :cond_1

    .line 2055
    if-ne p2, v1, :cond_2

    .line 2056
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    .line 2054
    if-eqz v0, :cond_2

    .line 2057
    :cond_1
    iput v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    .line 2058
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-nez v0, :cond_2

    .line 2059
    iput v3, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 2063
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v0, v1, :cond_3

    .line 2064
    if-ne p3, v1, :cond_4

    .line 2065
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    .line 2063
    if-eqz v0, :cond_4

    .line 2066
    :cond_3
    iput v3, p1, Landroid/content/res/Configuration;->navigationHidden:I

    .line 2047
    :cond_4
    return-void
.end method

.method public adjustSystemUiVisibilityLw(I)I
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v0, 0x0

    .line 3403
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/policy/StatusBarController;->adjustSystemUiVisibilityLw(II)V

    .line 3404
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/policy/BarController;->adjustSystemUiVisibilityLw(II)V

    .line 3405
    and-int/lit16 v1, p1, 0x4000

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    .line 3409
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 3412
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    not-int v0, v0

    and-int/2addr v0, p1

    .line 3413
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    not-int v1, v1

    .line 3412
    and-int/2addr v0, v1

    return v0
.end method

.method public adjustWindowParamsLw(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1992
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 2013
    :cond_0
    :goto_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    .line 2015
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 2018
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2019
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 2020
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/lit16 v0, v0, 0x600

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 1991
    :cond_2
    return-void

    .line 1996
    :sswitch_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x18

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1998
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 2006
    :sswitch_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    if-eqz v0, :cond_0

    .line 2007
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2008
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_0

    .line 1992
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_1
        0x7d6 -> :sswitch_0
        0x7df -> :sswitch_0
    .end sparse-switch
.end method

.method public allowAppAnimationsLw()Z
    .locals 1

    .prologue
    .line 4710
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    if-eqz v0, :cond_1

    .line 4712
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 4714
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public applyPostLayoutPolicyLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 11
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/16 v10, 0x7d0

    const/4 v9, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 4385
    invoke-static {p1, p2}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v3

    .line 4386
    .local v3, "fl":I
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_0

    .line 4387
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    .line 4386
    if-eqz v5, :cond_0

    .line 4387
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7db

    if-ne v5, v8, :cond_0

    .line 4388
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    .line 4389
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v5

    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    .line 4391
    :cond_0
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v5, v10, :cond_2

    .line 4392
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_1

    .line 4393
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 4394
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    .line 4396
    :cond_1
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v5, v5, 0x1000

    if-eqz v5, :cond_2

    .line 4397
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    .line 4401
    :cond_2
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-lt v5, v6, :cond_7

    .line 4402
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ge v5, v10, :cond_6

    const/4 v1, 0x1

    .line 4403
    .local v1, "appWindow":Z
    :goto_0
    const/high16 v5, 0x80000

    and-int/2addr v5, v3

    if-eqz v5, :cond_8

    const/4 v4, 0x1

    .line 4404
    .local v4, "showWhenLocked":Z
    :goto_1
    const/high16 v5, 0x400000

    and-int/2addr v5, v3

    if-eqz v5, :cond_9

    const/4 v2, 0x1

    .line 4406
    .local v2, "dismissKeyguard":Z
    :goto_2
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_3

    .line 4407
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v5

    .line 4406
    if-eqz v5, :cond_3

    .line 4407
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 4490
    :cond_3
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_4

    .line 4495
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    if-eqz v5, :cond_4

    .line 4496
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    .line 4497
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4500
    :cond_4
    :goto_3
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_5

    .line 4501
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v5

    .line 4500
    if-eqz v5, :cond_5

    .line 4501
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isGoneForLayoutLw()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 4382
    :cond_5
    :goto_4
    return-void

    .line 4402
    .end local v1    # "appWindow":Z
    .end local v2    # "dismissKeyguard":Z
    .end local v4    # "showWhenLocked":Z
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "appWindow":Z
    goto :goto_0

    .line 4401
    .end local v1    # "appWindow":Z
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "appWindow":Z
    goto :goto_0

    .line 4403
    :cond_8
    const/4 v4, 0x0

    .restart local v4    # "showWhenLocked":Z
    goto :goto_1

    .line 4404
    :cond_9
    const/4 v2, 0x0

    .restart local v2    # "dismissKeyguard":Z
    goto :goto_2

    .line 4408
    :cond_a
    and-int/lit16 v5, v3, 0x800

    if-eqz v5, :cond_b

    .line 4409
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_14

    .line 4410
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 4415
    :cond_b
    :goto_5
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7e7

    if-ne v5, v8, :cond_d

    .line 4418
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v5, :cond_c

    .line 4419
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasDrawnLw()Z

    move-result v5

    .line 4418
    if-eqz v5, :cond_d

    .line 4420
    :cond_c
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    .line 4421
    const/4 v1, 0x1

    .line 4425
    :cond_d
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    .line 4430
    .local v0, "appToken":Landroid/view/IApplicationToken;
    if-eqz v1, :cond_4

    if-nez p3, :cond_4

    .line 4431
    if-eqz v4, :cond_16

    .line 4433
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 4434
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 4435
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 4436
    if-eqz v2, :cond_e

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    if-eqz v5, :cond_15

    .line 4438
    :cond_e
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 4439
    :cond_f
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4440
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    .line 4441
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 4454
    :cond_10
    :goto_6
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v5, :cond_13

    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v5, :cond_13

    .line 4455
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v5, v9, :cond_13

    .line 4456
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v5, v9, :cond_13

    .line 4458
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4459
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-nez v5, :cond_11

    .line 4460
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4462
    :cond_11
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1b

    .line 4463
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    if-nez v5, :cond_1b

    .line 4466
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v5, p1, :cond_19

    .line 4467
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mSecureDismissingKeyguard:Z

    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    if-ne v5, v8, :cond_19

    .line 4468
    const/4 v5, 0x2

    .line 4466
    :goto_7
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    .line 4469
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4470
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mSecureDismissingKeyguard:Z

    .line 4471
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    if-eqz v5, :cond_1a

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    :goto_8
    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 4479
    :cond_12
    :goto_9
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_13

    .line 4480
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 4484
    :cond_13

    invoke-static/range {p0 .. p2}, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector;->setHideLockScreen(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_4

    .line 4485
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v5

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v6

    if-eq v5, v6, :cond_4

    .line 4486
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-nez v5, :cond_4

    .line 4487
    invoke-interface {p1, v7}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto/16 :goto_3

    .line 4412
    .end local v0    # "appToken":Landroid/view/IApplicationToken;
    :cond_14
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    goto/16 :goto_5

    .line 4437
    .restart local v0    # "appToken":Landroid/view/IApplicationToken;
    :cond_15
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 4444
    :cond_16
    if-eqz v2, :cond_18

    .line 4445
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    if-eqz v5, :cond_17

    .line 4446
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4450
    :goto_a
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 4448
    :cond_17
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_a

    .line 4452
    :cond_18
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_19
    move v5, v6

    .line 4468
    goto :goto_7

    :cond_1a
    move v5, v7

    .line 4471
    goto :goto_8

    .line 4472
    :cond_1b
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_12

    if-eqz v4, :cond_12

    .line 4473
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDrawnLw()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v5

    .line 4472
    if-eqz v5, :cond_12

    .line 4476
    :cond_1c
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    .line 4477
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    goto :goto_9

    .line 4502
    .end local v0    # "appToken":Landroid/view/IApplicationToken;
    :cond_1d
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDimming()Z

    move-result v5

    .line 4500
    if-eqz v5, :cond_5

    .line 4503
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    goto/16 :goto_4
.end method

.method public beginLayoutLw(ZIII)V
    .locals 33
    .param p1, "isDefaultDisplay"    # Z
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "displayRotation"    # I

    .prologue
    .line 3487
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDisplayRotation:I

    .line 3489
    if-eqz p1, :cond_c

    .line 3490
    packed-switch p4, :pswitch_data_0

    .line 3510
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v22, v0

    .line 3511
    .local v22, "overscanLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    move/from16 v24, v0

    .line 3512
    .local v24, "overscanTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    move/from16 v23, v0

    .line 3513
    .local v23, "overscanRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v21, v0

    .line 3522
    .local v21, "overscanBottom":I
    :goto_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    .line 3523
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    .line 3524
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    .line 3525
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    .line 3526
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    .line 3527
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    .line 3528
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    .line 3529
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    .line 3530
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    .line 3531
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    .line 3532
    sub-int v2, p2, v22

    sub-int v2, v2, v23

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    .line 3533
    sub-int v2, p3, v24

    sub-int v2, v2, v21

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    .line 3534
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    .line 3535
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    .line 3536
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    iput v2, v3, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 3537
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    iput v2, v3, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 3539
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    .line 3538
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    .line 3541
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    .line 3540
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    .line 3543
    sub-int v2, p2, v23

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    .line 3542
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    .line 3545
    sub-int v2, p3, v21

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    .line 3544
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    .line 3546
    const/high16 v2, 0x10000000

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    .line 3547
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    .line 3550
    sget-object v25, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 3551
    .local v25, "pf":Landroid/graphics/Rect;
    sget-object v11, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 3552
    .local v11, "df":Landroid/graphics/Rect;
    sget-object v19, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 3553
    .local v19, "of":Landroid/graphics/Rect;
    sget-object v32, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 3554
    .local v32, "vf":Landroid/graphics/Rect;
    sget-object v8, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 3555
    .local v8, "dcf":Landroid/graphics/Rect;
    sget-object v20, Lcom/android/server/policy/PhoneWindowManager;->mTmpOutsetFrame:Landroid/graphics/Rect;

    .line 3556
    .local v20, "osf":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, v32

    iput v2, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 3557
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, v32

    iput v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 3558
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, v32

    iput v2, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 3559
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, v32

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 3560
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    .line 3562
    if-eqz p1, :cond_b

    .line 3565
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    move/from16 v28, v0

    .line 3566
    .local v28, "sysui":I
    and-int/lit8 v2, v28, 0x2

    if-nez v2, :cond_d

    const/16 v18, 0x1

    .line 3568
    .local v18, "navVisible":Z
    :goto_1
    const v2, -0x7fff8000

    .line 3567
    and-int v2, v2, v28

    if-eqz v2, :cond_e

    const/16 v17, 0x1

    .line 3569
    .local v17, "navTranslucent":Z
    :goto_2
    move/from16 v0, v28

    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_f

    const/4 v12, 0x1

    .line 3570
    .local v12, "immersive":Z
    :goto_3
    move/from16 v0, v28

    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_10

    const/4 v13, 0x1

    .line 3571
    .local v13, "immersiveSticky":Z
    :goto_4
    if-nez v12, :cond_11

    move/from16 v16, v13

    .line 3572
    :goto_5
    if-eqz v13, :cond_12

    const/4 v2, 0x0

    :goto_6
    and-int v17, v17, v2

    .line 3573
    .local v17, "navTranslucent":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v2, :cond_13

    :cond_0
    const/4 v14, 0x0

    .line 3574
    .local v14, "isKeyguardShowing":Z
    :goto_7
    if-nez v14, :cond_1

    .line 3575
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v2

    and-int v17, v17, v2

    .line 3582
    :cond_1
    if-nez v18, :cond_2

    if-eqz v16, :cond_14

    .line 3583
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    if-eqz v2, :cond_3

    .line 3584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$InputConsumer;->dismiss()V

    .line 3585
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    .line 3595
    :cond_3
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x0

    :goto_9
    or-int v18, v18, v2

    .line 3597
    .local v18, "navVisible":Z
    const/16 v31, 0x0

    .line 3598
    .local v31, "updateSysUiVisibility":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_6

    .line 3599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->isTransientShowing()Z

    move-result v30

    .line 3604
    .local v30, "transientNavBarShowing":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v2, :cond_4

    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_16

    :cond_4
    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    .line 3605
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v2, :cond_1a

    .line 3607
    sub-int v2, p3, v21

    .line 3608
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v3, v3, p4

    .line 3607
    sub-int v29, v2, v3

    .line 3609
    .local v29, "top":I
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sub-int v3, p3, v21

    const/4 v4, 0x0

    move/from16 v0, v29

    move/from16 v1, p2

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 3610
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    .line 3611
    if-eqz v30, :cond_17

    .line 3612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 3622
    :goto_b
    if-eqz v18, :cond_5

    if-eqz v17, :cond_19

    .line 3658
    .end local v29    # "top":I
    :cond_5
    :goto_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    .line 3659
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    .line 3660
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    .line 3661
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    .line 3662
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    .line 3664
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    sget-object v3, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    .line 3665
    sget-object v5, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v6, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v7, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    .line 3666
    sget-object v9, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v10, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    .line 3664
    invoke-interface/range {v2 .. v10}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3668
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->checkHiddenLw()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3669
    const/16 v31, 0x1

    .line 3676
    .end local v30    # "transientNavBarShowing":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_a

    .line 3678
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 3679
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 3680
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    add-int/2addr v2, v3

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 3681
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    .line 3682
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    .line 3681
    add-int/2addr v2, v3

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v25

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 3683
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, v32

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 3684
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, v32

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 3685
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, v32

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 3686
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    move-object/from16 v0, v32

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 3688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    .line 3691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v3, v25

    move-object v4, v11

    move-object/from16 v5, v32

    move-object/from16 v6, v32

    move-object/from16 v7, v32

    move-object/from16 v9, v32

    move-object/from16 v10, v32

    invoke-interface/range {v2 .. v10}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3696
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    .line 3698
    const/high16 v2, 0x4000000

    and-int v2, v2, v28

    if-eqz v2, :cond_1d

    const/16 v26, 0x1

    .line 3700
    .local v26, "statusBarTransient":Z
    :goto_d
    const v2, 0x40008000    # 2.0078125f

    .line 3699
    and-int v2, v2, v28

    if-eqz v2, :cond_1e

    const/16 v27, 0x1

    .line 3701
    .local v27, "statusBarTranslucent":Z
    :goto_e
    if-nez v14, :cond_7

    .line 3702
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v2

    and-int v27, v27, v2

    .line 3707
    .end local v27    # "statusBarTranslucent":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v26, :cond_1f

    .line 3725
    :cond_8
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 3733
    :cond_9
    :goto_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v2}, Lcom/android/server/policy/StatusBarController;->checkHiddenLw()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3734
    const/16 v31, 0x1

    .line 3737
    .end local v26    # "statusBarTransient":Z
    :cond_a
    if-eqz v31, :cond_b

    .line 3738
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    .line 3486
    .end local v12    # "immersive":Z
    .end local v13    # "immersiveSticky":Z
    .end local v14    # "isKeyguardShowing":Z
    .end local v17    # "navTranslucent":Z
    .end local v18    # "navVisible":Z
    .end local v28    # "sysui":I
    .end local v31    # "updateSysUiVisibility":Z
    :cond_b
    return-void

    .line 3492
    .end local v8    # "dcf":Landroid/graphics/Rect;
    .end local v11    # "df":Landroid/graphics/Rect;
    .end local v19    # "of":Landroid/graphics/Rect;
    .end local v20    # "osf":Landroid/graphics/Rect;
    .end local v21    # "overscanBottom":I
    .end local v22    # "overscanLeft":I
    .end local v23    # "overscanRight":I
    .end local v24    # "overscanTop":I
    .end local v25    # "pf":Landroid/graphics/Rect;
    .end local v32    # "vf":Landroid/graphics/Rect;
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    move/from16 v22, v0

    .line 3493
    .restart local v22    # "overscanLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    move/from16 v24, v0

    .line 3494
    .restart local v24    # "overscanTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v23, v0

    .line 3495
    .restart local v23    # "overscanRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v21, v0

    .restart local v21    # "overscanBottom":I
    goto/16 :goto_0

    .line 3498
    .end local v21    # "overscanBottom":I
    .end local v22    # "overscanLeft":I
    .end local v23    # "overscanRight":I
    .end local v24    # "overscanTop":I
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    move/from16 v22, v0

    .line 3499
    .restart local v22    # "overscanLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v24, v0

    .line 3500
    .restart local v24    # "overscanTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v23, v0

    .line 3501
    .restart local v23    # "overscanRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    move/from16 v21, v0

    .restart local v21    # "overscanBottom":I
    goto/16 :goto_0

    .line 3504
    .end local v21    # "overscanBottom":I
    .end local v22    # "overscanLeft":I
    .end local v23    # "overscanRight":I
    .end local v24    # "overscanTop":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    move/from16 v22, v0

    .line 3505
    .restart local v22    # "overscanLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    move/from16 v24, v0

    .line 3506
    .restart local v24    # "overscanTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    move/from16 v23, v0

    .line 3507
    .restart local v23    # "overscanRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    move/from16 v21, v0

    .restart local v21    # "overscanBottom":I
    goto/16 :goto_0

    .line 3517
    .end local v21    # "overscanBottom":I
    .end local v22    # "overscanLeft":I
    .end local v23    # "overscanRight":I
    .end local v24    # "overscanTop":I
    :cond_c
    const/16 v22, 0x0

    .line 3518
    .restart local v22    # "overscanLeft":I
    const/16 v24, 0x0

    .line 3519
    .restart local v24    # "overscanTop":I
    const/16 v23, 0x0

    .line 3520
    .restart local v23    # "overscanRight":I
    const/16 v21, 0x0

    .restart local v21    # "overscanBottom":I
    goto/16 :goto_0

    .line 3566
    .restart local v8    # "dcf":Landroid/graphics/Rect;
    .restart local v11    # "df":Landroid/graphics/Rect;
    .restart local v19    # "of":Landroid/graphics/Rect;
    .restart local v20    # "osf":Landroid/graphics/Rect;
    .restart local v25    # "pf":Landroid/graphics/Rect;
    .restart local v28    # "sysui":I
    .restart local v32    # "vf":Landroid/graphics/Rect;
    :cond_d
    const/16 v18, 0x0

    .local v18, "navVisible":Z
    goto/16 :goto_1

    .line 3567
    :cond_e
    const/16 v17, 0x0

    .local v17, "navTranslucent":Z
    goto/16 :goto_2

    .line 3569
    :cond_f
    const/4 v12, 0x0

    .restart local v12    # "immersive":Z
    goto/16 :goto_3

    .line 3570
    :cond_10
    const/4 v13, 0x0

    .restart local v13    # "immersiveSticky":Z
    goto/16 :goto_4

    .line 3571
    :cond_11
    const/16 v16, 0x1

    .local v16, "navAllowedHidden":Z
    goto/16 :goto_5

    .line 3572
    .end local v16    # "navAllowedHidden":Z
    :cond_12
    const/4 v2, 0x1

    goto/16 :goto_6

    .line 3573
    .local v17, "navTranslucent":Z
    :cond_13
    const/4 v14, 0x1

    .restart local v14    # "isKeyguardShowing":Z
    goto/16 :goto_7

    .line 3587
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    if-nez v2, :cond_3

    .line 3588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 3589
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideNavInputEventReceiverFactory:Landroid/view/InputEventReceiver$Factory;

    .line 3588
    invoke-interface {v2, v3, v4}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->addInputConsumer(Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;)Landroid/view/WindowManagerPolicy$InputConsumer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Landroid/view/WindowManagerPolicy$InputConsumer;

    goto/16 :goto_8

    .line 3595
    :cond_15
    const/4 v2, 0x1

    goto/16 :goto_9

    .line 3604
    .local v18, "navVisible":Z
    .restart local v30    # "transientNavBarShowing":Z
    .restart local v31    # "updateSysUiVisibility":Z
    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_a

    .line 3613
    .restart local v29    # "top":I
    :cond_17
    if-eqz v18, :cond_18

    .line 3614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 3615
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    .line 3616
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 3617
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    goto/16 :goto_b

    .line 3620
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    goto/16 :goto_b

    .line 3622
    :cond_19
    if-nez v16, :cond_5

    .line 3623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3624
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3628
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    goto/16 :goto_c

    .line 3632
    .end local v29    # "top":I
    :cond_1a
    sub-int v2, p2, v23

    .line 3633
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    aget v3, v3, p4

    .line 3632
    sub-int v15, v2, v3

    .line 3634
    .local v15, "left":I
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sub-int v3, p2, v23

    const/4 v4, 0x0

    move/from16 v0, p3

    invoke-virtual {v2, v15, v4, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 3635
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    .line 3636
    if-eqz v30, :cond_1b

    .line 3637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 3647
    :goto_11
    if-eqz v18, :cond_5

    if-nez v17, :cond_5

    if-nez v16, :cond_5

    .line 3648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3653
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    goto/16 :goto_c

    .line 3638
    :cond_1b
    if-eqz v18, :cond_1c

    .line 3639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    .line 3640
    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    .line 3641
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 3642
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    goto :goto_11

    .line 3645
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    goto :goto_11

    .line 3698
    .end local v15    # "left":I
    .end local v30    # "transientNavBarShowing":Z
    :cond_1d
    const/16 v26, 0x0

    .restart local v26    # "statusBarTransient":Z
    goto/16 :goto_d

    .line 3699
    :cond_1e
    const/16 v27, 0x0

    .restart local v27    # "statusBarTranslucent":Z
    goto/16 :goto_e

    .line 3711
    .end local v27    # "statusBarTranslucent":Z
    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    .line 3713
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    .line 3714
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    .line 3715
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    .line 3716
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    goto/16 :goto_f

    .line 3726
    :cond_20
    if-nez v26, :cond_9

    if-nez v27, :cond_9

    .line 3727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v2}, Lcom/android/server/policy/StatusBarController;->wasRecentlyTranslucent()Z

    move-result v2

    if-nez v2, :cond_9

    .line 3731
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    goto/16 :goto_10

    .line 3490
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public beginPostLayoutPolicyLw(II)V
    .locals 3
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 4358
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4359
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4360
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsToBeHidden:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 4361
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppsThatDismissKeyguard:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 4362
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    .line 4363
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    .line 4364
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    .line 4365
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    .line 4366
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    .line 4368
    #iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    .line 4369
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    .line 4370
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    .line 4371
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    .line 4372
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    .line 4373
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4374
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    .line 4375
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    if-eqz v1, :cond_0

    .line 4376
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    .line 4375
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecureIncludingHidden:Z

    .line 4357
    return-void
.end method

.method public canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v0, 0x0

    .line 2243
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v1, :sswitch_data_0

    .line 2252
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBaseType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v1

    .line 2253
    const/16 v2, 0x7d0

    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v2

    .line 2252
    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 2249
    :sswitch_0
    return v0

    .line 2243
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7dd -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7e7 -> :sswitch_0
        0x7ed -> :sswitch_0
    .end sparse-switch
.end method

.method public canMagnifyWindow(I)Z
    .locals 1
    .param p1, "windowType"    # I

    .prologue
    .line 6827
    sparse-switch p1, :sswitch_data_0

    .line 6835
    const/4 v0, 0x1

    return v0

    .line 6832
    :sswitch_0
    const/4 v0, 0x0

    return v0

    .line 6827
    nop

    :sswitch_data_0
    .sparse-switch
        0x7db -> :sswitch_0
        0x7dc -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7eb -> :sswitch_0
    .end sparse-switch
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I
    .locals 10
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "outAppOp"    # [I

    .prologue
    const/16 v9, 0xbb7

    const/16 v6, 0x7d0

    const/16 v5, 0x3e8

    const/4 v8, -0x8

    const/4 v7, 0x0

    .line 1862
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1864
    .local v3, "type":I
    const/4 v4, -0x1

    aput v4, p2, v7

    .line 1866
    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    const/16 v4, 0x63

    if-le v3, v4, :cond_3

    .line 1867
    :cond_0
    if-lt v3, v5, :cond_1

    const/16 v4, 0x7cf

    if-le v3, v4, :cond_3

    .line 1868
    :cond_1
    if-lt v3, v6, :cond_2

    if-le v3, v9, :cond_3

    .line 1869
    :cond_2
    const/16 v4, -0xa

    return v4

    .line 1872
    :cond_3
    if-lt v3, v6, :cond_4

    if-le v3, v9, :cond_5

    .line 1874
    :cond_4
    return v7

    .line 1876
    :cond_5
    const/4 v2, 0x0

    .line 1877
    .local v2, "permission":Ljava/lang/String;
    sparse-switch v3, :sswitch_data_0

    .line 1901
    const-string/jumbo v2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 1903
    .end local v2    # "permission":Ljava/lang/String;
    :goto_0
    :sswitch_0
    invoke-static {p1, p2, v2}, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector;->checkAddPermission(Landroid/view/WindowManager$LayoutParams;[ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1904
    const-string/jumbo v4, "android.permission.SYSTEM_ALERT_WINDOW"

    if-ne v2, v4, :cond_8

    .line 1905
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1907
    .local v0, "callingUid":I
    if-ne v0, v5, :cond_6

    .line 1908
    return v7

    .line 1882
    .end local v0    # "callingUid":I
    .restart local v2    # "permission":Ljava/lang/String;
    :sswitch_1
    const/16 v4, 0x2d

    aput v4, p2, v7

    goto :goto_0

    .line 1897
    :sswitch_2
    const-string/jumbo v2, "android.permission.SYSTEM_ALERT_WINDOW"

    .line 1898
    .local v2, "permission":Ljava/lang/String;
    const/16 v4, 0x18

    aput v4, p2, v7

    goto :goto_0

    .line 1913
    .end local v2    # "permission":Ljava/lang/String;
    .restart local v0    # "callingUid":I
    :cond_6
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    aget v5, p2, v7

    .line 1914
    iget-object v6, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1913
    invoke-virtual {v4, v5, v0, v6}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v1

    .line 1915
    .local v1, "mode":I
    packed-switch v1, :pswitch_data_0

    .line 1926
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_7

    .line 1928
    return v8

    .line 1920
    :pswitch_0
    return v7

    .line 1922
    :pswitch_1
    return v8

    .line 1930
    :cond_7
    return v7

    .line 1935
    .end local v0    # "callingUid":I
    .end local v1    # "mode":I
    :cond_8
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_9

    .line 1937
    return v8

    .line 1940
    :cond_9
    return v7

    .line 1877
    nop

    :sswitch_data_0
    .sparse-switch
        0x7d2 -> :sswitch_2
        0x7d3 -> :sswitch_2
        0x7d5 -> :sswitch_1
        0x7d6 -> :sswitch_2
        0x7d7 -> :sswitch_2
        0x7da -> :sswitch_2
        0x7db -> :sswitch_0
        0x7dd -> :sswitch_0
        0x7e7 -> :sswitch_0
        0x7ee -> :sswitch_0
        0x7ef -> :sswitch_0
        0x7f0 -> :sswitch_0
    .end sparse-switch

    .line 1915
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 4
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue

    invoke-static/range {p1 .. p1}, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector;->getManifestPermission(Landroid/view/WindowManager$LayoutParams;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_flyme_0

    invoke-static {p0, v0}, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector;->checkShowToOwnerOnly(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_flyme_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1948
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v2, :sswitch_data_0

    .line 1955
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_0

    .line 1956
    return v0

    .line 1985
    :cond_0
    :sswitch_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1986
    const-string/jumbo v3, "android.permission.INTERNAL_SYSTEM_WINDOW"

    .line 1985
    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 1948
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x7d0 -> :sswitch_0
        0x7d1 -> :sswitch_0
        0x7d2 -> :sswitch_0
        0x7d7 -> :sswitch_0
        0x7d8 -> :sswitch_0
        0x7d9 -> :sswitch_0
        0x7de -> :sswitch_0
        0x7e1 -> :sswitch_0
        0x7e2 -> :sswitch_0
        0x7e3 -> :sswitch_0
        0x7e4 -> :sswitch_0
        0x7e5 -> :sswitch_0
        0x7e6 -> :sswitch_0
        0x7e8 -> :sswitch_0
        0x7ea -> :sswitch_0
        0x7eb -> :sswitch_0
        0x7ed -> :sswitch_0
        0x7ee -> :sswitch_0
    .end sparse-switch
.end method

.method public createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;
    .locals 5
    .param p1, "onWallpaper"    # Z
    .param p2, "goingToNotificationShade"    # Z

    .prologue

    if-nez p2, :cond_flyme_0

    invoke-static/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector;->getSlideAnimation(Lcom/android/server/policy/PhoneWindowManager;)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0

    :cond_flyme_0

    .line 2586
    if-eqz p2, :cond_0

    .line 2587
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v4, 0x10a0033

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    .line 2590
    :cond_0
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    .line 2591
    const v3, 0x10a0034

    .line 2590
    :goto_0
    invoke-static {v4, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    check-cast v2, Landroid/view/animation/AnimationSet;

    .line 2595
    .local v2, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    .line 2596
    .local v0, "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 2597
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2596
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2592
    .end local v0    # "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    .end local v1    # "i":I
    .end local v2    # "set":Landroid/view/animation/AnimationSet;
    :cond_1
    const v3, 0x10a0032

    goto :goto_0

    .line 2600
    .restart local v0    # "animations":Ljava/util/List;, "Ljava/util/List<Landroid/view/animation/Animation;>;"
    .restart local v1    # "i":I
    .restart local v2    # "set":Landroid/view/animation/AnimationSet;
    :cond_2
    return-object v2
.end method

.method public createForceHideWallpaperExitAnimation(Z)Landroid/view/animation/Animation;
    .locals 2
    .param p1, "goingToNotificationShade"    # Z

    .prologue

    if-nez p1, :cond_flyme_0

    invoke-static/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector;->getForceHideWallpaperExitAnimation(Lcom/android/server/policy/PhoneWindowManager;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_flyme_0

    .line 2606
    if-eqz p1, :cond_0

    .line 2607
    const/4 v0, 0x0

    return-object v0

    .line 2609
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v1, 0x10a0037

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method createHomeDockIntent()Landroid/content/Intent;
    .locals 8

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x0

    .line 6360
    const/4 v2, 0x0

    .line 6365
    .local v2, "intent":Landroid/content/Intent;
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    if-ne v4, v6, :cond_0

    .line 6367
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .local v2, "intent":Landroid/content/Intent;
    move-object v3, v2

    .line 6381
    .end local v2    # "intent":Landroid/content/Intent;
    .local v3, "intent":Landroid/content/Intent;
    :goto_0
    if-nez v3, :cond_5

    .line 6382
    return-object v7

    .line 6369
    .end local v3    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    :cond_0
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    move-object v3, v2

    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 6373
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_4

    .line 6374
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    .line 6375
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 6378
    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .local v2, "intent":Landroid/content/Intent;
    move-object v3, v2

    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 6376
    .end local v3    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    :cond_3
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-eq v4, v6, :cond_2

    :cond_4
    move-object v3, v2

    .restart local v3    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 6385
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    const/4 v0, 0x0

    .line 6386
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 6389
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 6388
    const v6, 0x10080

    .line 6386
    invoke-virtual {v4, v3, v6, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 6390
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_6

    .line 6391
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 6393
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_6
    if-eqz v0, :cond_7

    .line 6394
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_7

    .line 6395
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "android.dock_home"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 6393
    if-eqz v4, :cond_7

    .line 6396
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 6397
    .end local v3    # "intent":Landroid/content/Intent;
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6398
    return-object v2

    .line 6401
    .end local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_7
    return-object v7
.end method

.method public dismissKeyguardLw()V
    .locals 2

    .prologue
    .line 5772
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5774
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$19;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$19;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5771
    :cond_0
    return-void
.end method

.method dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 5361
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 5364
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    or-int/lit16 v1, v1, 0x80

    const/4 v4, 0x1

    .line 5363
    invoke-static {p1, v2, v3, v4, v1}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v0

    .line 5369
    .local v0, "repeatEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 5370
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5360
    return-void
.end method

.method dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5335
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    if-eqz v1, :cond_0

    .line 5340
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 5341
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 5342
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5345
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    .line 5347
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    .line 5348
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 5349
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    .line 5351
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5353
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5354
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5330
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 5356
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 5374
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5375
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 5373
    :cond_0
    return-void
.end method

.method public dispatchUnhandledKey(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 23
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 3056
    const/16 v18, 0x0

    .line 3057
    .local v18, "fallbackEvent":Landroid/view/KeyEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_1

    .line 3058
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v20

    .line 3059
    .local v20, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v21

    .line 3060
    .local v21, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v22

    .line 3061
    .local v22, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_3

    .line 3062
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_2

    const/16 v19, 0x1

    .line 3066
    .local v19, "initialDown":Z
    :goto_0
    if-eqz v19, :cond_4

    .line 3067
    invoke-virtual/range {v20 .. v22}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v17

    .line 3072
    .local v17, "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    :goto_1
    if-eqz v17, :cond_1

    .line 3078
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    or-int/lit16 v14, v4, 0x400

    .line 3080
    .local v14, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v6

    .line 3081
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    move-object/from16 v0, v17

    iget v9, v0, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    .line 3082
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    move-object/from16 v0, v17

    iget v11, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    .line 3083
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v13

    .line 3084
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v15

    const/16 v16, 0x0

    .line 3079
    invoke-static/range {v4 .. v16}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v18

    .line 3086
    .local v18, "fallbackEvent":Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->interceptFallback(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3087
    invoke-virtual/range {v18 .. v18}, Landroid/view/KeyEvent;->recycle()V

    .line 3088
    const/16 v18, 0x0

    .line 3091
    .end local v18    # "fallbackEvent":Landroid/view/KeyEvent;
    :cond_0
    if-eqz v19, :cond_5

    .line 3092
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3107
    .end local v14    # "flags":I
    .end local v17    # "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    .end local v19    # "initialDown":Z
    .end local v20    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v21    # "keyCode":I
    .end local v22    # "metaState":I
    :cond_1
    :goto_2
    return-object v18

    .line 3062
    .local v18, "fallbackEvent":Landroid/view/KeyEvent;
    .restart local v20    # "kcm":Landroid/view/KeyCharacterMap;
    .restart local v21    # "keyCode":I
    .restart local v22    # "metaState":I
    :cond_2
    const/16 v19, 0x0

    .restart local v19    # "initialDown":Z
    goto :goto_0

    .line 3061
    .end local v19    # "initialDown":Z
    :cond_3
    const/16 v19, 0x0

    .restart local v19    # "initialDown":Z
    goto :goto_0

    .line 3069
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/KeyCharacterMap$FallbackAction;

    .restart local v17    # "fallbackAction":Landroid/view/KeyCharacterMap$FallbackAction;
    goto :goto_1

    .line 3093
    .end local v18    # "fallbackEvent":Landroid/view/KeyEvent;
    .restart local v14    # "flags":I
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 3094
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 3095
    invoke-virtual/range {v17 .. v17}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    goto :goto_2
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 6849
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSafeMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6850
    const-string/jumbo v0, " mSystemReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6851
    const-string/jumbo v0, " mSystemBooted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6852
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLidState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6853
    const-string/jumbo v0, " mLidOpenRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6854
    const-string/jumbo v0, " mCameraLensCoverState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6855
    const-string/jumbo v0, " mHdmiPlugged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6856
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-eqz v0, :cond_13

    .line 6858
    :cond_0
    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6859
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6860
    const-string/jumbo v0, " mResettingSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6861
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6862
    const-string/jumbo v0, " mForceClearedSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6863
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6865
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-eqz v0, :cond_2

    .line 6866
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastFocusNeedsMenu="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6867
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6869
    :cond_2
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWakeGestureEnabledSetting="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6870
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6872
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSupportAutoRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6873
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUiMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6874
    const-string/jumbo v0, " mDockMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6875
    const-string/jumbo v0, " mCarDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6876
    const-string/jumbo v0, " mDeskDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6877
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUserRotationMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6878
    const-string/jumbo v0, " mUserRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6879
    const-string/jumbo v0, " mAllowAllRotations="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6880
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCurrentAppOrientation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6881
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCarDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6882
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6883
    const-string/jumbo v0, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6884
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6885
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLidKeyboardAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6886
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6887
    const-string/jumbo v0, " mLidNavigationAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6888
    const-string/jumbo v0, " mLidControlsSleep="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6889
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6890
    const-string/jumbo v0, "mShortPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6891
    const-string/jumbo v0, " mLongPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6892
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6893
    const-string/jumbo v0, "mDoublePressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6894
    const-string/jumbo v0, " mTriplePressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6895
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHasSoftInput="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6896
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAwake="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6897
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mScreenOnEarly="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6898
    const-string/jumbo v0, " mScreenOnFully="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6899
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mKeyguardDrawComplete="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6900
    const-string/jumbo v0, " mWindowManagerDrawComplete="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6901
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mOrientationSensorEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6902
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6903
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mOverscanScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6904
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6905
    const-string/jumbo v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6906
    const-string/jumbo v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6907
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    if-eqz v0, :cond_14

    .line 6909
    :cond_3
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mOverscan left="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6910
    const-string/jumbo v0, " top="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6911
    const-string/jumbo v0, " right="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6912
    const-string/jumbo v0, " bottom="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6914
    :cond_4
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRestrictedOverscanScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6915
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6916
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6917
    const-string/jumbo v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6918
    const-string/jumbo v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6919
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUnrestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6920
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6921
    const-string/jumbo v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6922
    const-string/jumbo v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6923
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRestrictedScreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6924
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6925
    const-string/jumbo v0, ") "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6926
    const-string/jumbo v0, "x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6927
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStableFullscreen=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6928
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6929
    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6930
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6931
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStable=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6932
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6933
    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6934
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6935
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSystem=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6936
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6937
    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6938
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6939
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCur=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6940
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6941
    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6942
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6943
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContent=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6944
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6945
    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6946
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6947
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVoiceContent=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6948
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6949
    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6950
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6951
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDock=("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6952
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6953
    const-string/jumbo v0, ")-("

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6954
    const-string/jumbo v0, ","

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, ")"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6955
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDockLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6956
    const-string/jumbo v0, " mStatusBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6957
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShowingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6958
    const-string/jumbo v0, " mShowingDream="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6959
    const-string/jumbo v0, " mDreamingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 6960
    const-string/jumbo v0, " mDreamingSleepToken="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6961
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_5

    .line 6962
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastInputMethodWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6963
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6965
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_6

    .line 6966
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastInputMethodTargetWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6967
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6969
    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_7

    .line 6970
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6971
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v0, " isStatusBarKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6972
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 6974
    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_8

    .line 6975
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNavigationBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6976
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6978
    :cond_8
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_9

    .line 6979
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFocusedWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6980
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6982
    :cond_9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_a

    .line 6983
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFocusedApp="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6984
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6986
    :cond_a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_b

    .line 6987
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWinDismissingKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6988
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6990
    :cond_b
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_c

    .line 6991
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6992
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6994
    :cond_c
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_d

    .line 6995
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTopFullscreenOpaqueOrDimmingWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6996
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6998
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    if-eqz v0, :cond_e

    .line 6999
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mForcingShowNavBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7000
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "mForcingShowNavBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7001
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7003
    :cond_e
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTopIsFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7004
    const-string/jumbo v0, " mHideLockScreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7005
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mForceStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7006
    const-string/jumbo v0, " mForceStatusBarFromKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7007
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7008
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDismissKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7009
    const-string/jumbo v0, " mWinDismissingKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 7010
    const-string/jumbo v0, " mHomePressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7011
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAllowLockscreenWhenOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 7012
    const-string/jumbo v0, " mLockScreenTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7013
    const-string/jumbo v0, " mLockScreenTimerActive="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7014
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mEndcallBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7015
    const-string/jumbo v0, " mIncallPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7016
    const-string/jumbo v0, " mLongPressOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7017
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLandscapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7018
    const-string/jumbo v0, " mSeascapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7019
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPortraitRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7020
    const-string/jumbo v0, " mUpsideDownRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7021
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDemoHdmiRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 7022
    const-string/jumbo v0, " mDemoHdmiRotationLock="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 7023
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUndockedHdmiRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 7025
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/GlobalKeyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 7026
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/StatusBarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7027
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/BarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7028
    invoke-static {p1, p2}, Lcom/android/server/policy/PolicyControl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 7030
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    if-eqz v0, :cond_f

    .line 7031
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7033
    :cond_f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    if-eqz v0, :cond_10

    .line 7034
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 7036
    :cond_10
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    if-eqz v0, :cond_11

    .line 7037
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/BurnInProtectionHelper;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 7039
    :cond_11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_12

    .line 7040
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 6848
    :cond_12
    return-void

    .line 6857
    :cond_13
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 6908
    :cond_14
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    if-eqz v0, :cond_4

    goto/16 :goto_1
.end method

.method public enableKeyguard(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 5726
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 5727
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setKeyguardEnabled(Z)V

    .line 5725
    :cond_0
    return-void
.end method

.method public enableScreenAfterBoot()V
    .locals 1

    .prologue
    .line 6300
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    .line 6301
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    .line 6302
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 6299
    return-void
.end method

.method public exitKeyguardSecurely(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 1
    .param p1, "callback"    # Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;

    .prologue
    .line 5734
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 5735
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 5733
    :cond_0
    return-void
.end method

.method public finishLayoutLw()V
    .locals 0

    .prologue
    .line 4352
    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 12

    .prologue
    const/16 v11, 0xf

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4510
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_0

    .line 4511
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v6

    if-eq v5, v6, :cond_0

    .line 4512
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v5

    .line 4510
    if-eqz v5, :cond_0

    .line 4516
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x100000

    or-int/2addr v6, v7

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4517
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5, v8}, Landroid/view/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    .line 4518
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4521
    :cond_0
    const/4 v0, 0x0

    .line 4522
    .local v0, "changes":I
    const/4 v4, 0x0

    .line 4524
    .local v4, "topIsFullscreen":Z
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_c

    .line 4525
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 4532
    :goto_0
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    if-nez v5, :cond_d

    .line 4533
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingLockscreen:Z

    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    .line 4534
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    if-eqz v5, :cond_1

    .line 4535
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    .line 4536
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v11, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 4545
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_6

    .line 4549
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    if-eqz v5, :cond_2

    .line 4550
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    if-eqz v5, :cond_e

    .line 4549
    :cond_2
    const/4 v3, 0x0

    .line 4552
    .local v3, "shouldBeTransparent":Z
    :goto_2
    if-nez v3, :cond_10

    .line 4553
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v5, v8}, Lcom/android/server/policy/StatusBarController;->setShowTransparent(Z)V

    .line 4557
    :cond_3
    :goto_3
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    if-eqz v5, :cond_12

    .line 4559
    :cond_4
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v5, v9}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4560
    const/4 v0, 0x1

    .line 4563
    :cond_5
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v4

    .line 4565
    .end local v4    # "topIsFullscreen":Z
    :goto_4
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v5}, Lcom/android/server/policy/StatusBarController;->isTransientShowing()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4566
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    .line 4567
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    .line 4566
    invoke-virtual {v5, v8, v6, v7}, Lcom/android/server/policy/StatusBarController;->updateVisibilityLw(ZII)I

    .line 4603
    .end local v3    # "shouldBeTransparent":Z
    :cond_6
    :goto_5
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eq v5, v4, :cond_8

    .line 4604
    if-nez v4, :cond_7

    .line 4606
    or-int/lit8 v0, v0, 0x1

    .line 4608
    :cond_7
    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    .line 4613
    :cond_8
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_a

    .line 4616
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardSecure:Z

    if-eqz v5, :cond_17

    .line 4631
    :cond_9
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    if-eqz v5, :cond_19

    .line 4632
    iput-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    .line 4633
    iput-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4634
    invoke-direct {p0, v9}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(Z)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 4635
    or-int/lit8 v0, v0, 0x7

    .line 4667
    :cond_a
    :goto_6
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v5

    const v6, -0x3fff7ffa

    and-int/2addr v5, v6

    if-eqz v5, :cond_b

    .line 4670
    or-int/lit8 v0, v0, 0x1

    .line 4674
    :cond_b
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    .line 4675
    return v0

    .line 4526
    .restart local v4    # "topIsFullscreen":Z
    :cond_c
    const/4 v2, 0x0

    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    goto/16 :goto_0

    .line 4539
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_d
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    if-nez v5, :cond_1

    .line 4540
    iput-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    .line 4541
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v11, v9, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 4551
    :cond_e
    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-eqz v5, :cond_f

    const/4 v3, 0x0

    .restart local v3    # "shouldBeTransparent":Z
    goto/16 :goto_2

    .end local v3    # "shouldBeTransparent":Z
    :cond_f
    const/4 v3, 0x1

    .restart local v3    # "shouldBeTransparent":Z
    goto/16 :goto_2

    .line 4554
    :cond_10
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-nez v5, :cond_3

    .line 4555
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v5, v9}, Lcom/android/server/policy/StatusBarController;->setShowTransparent(Z)V

    goto/16 :goto_3

    .line 4563
    :cond_11
    const/4 v4, 0x0

    goto :goto_4

    .line 4569
    :cond_12
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_6

    .line 4570
    invoke-static {v10, v2}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    .line 4577
    .local v1, "fl":I
    and-int/lit16 v5, v1, 0x400

    if-nez v5, :cond_13

    .line 4578
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_14

    const/4 v4, 0x1

    .line 4583
    :goto_7
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v5}, Lcom/android/server/policy/StatusBarController;->isTransientShowing()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 4584
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v5, v9}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4585
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 4577
    :cond_13
    const/4 v4, 0x1

    goto :goto_7

    .line 4578
    :cond_14
    const/4 v4, 0x0

    goto :goto_7

    .line 4587
    :cond_15
    if-eqz v4, :cond_16

    .line 4589
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v5, v8}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4590
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 4596
    :cond_16
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v5, v9}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4597
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 4617
    .end local v1    # "fl":I
    .end local v3    # "shouldBeTransparent":Z
    .end local v4    # "topIsFullscreen":Z
    :cond_17
    iput-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    .line 4618
    invoke-direct {p0, v9}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(Z)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 4619
    or-int/lit8 v0, v0, 0x7

    .line 4623
    :cond_18
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v5}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 4624
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/policy/PhoneWindowManager$16;

    invoke-direct {v6, p0}, Lcom/android/server/policy/PhoneWindowManager$16;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 4639
    :cond_19
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    if-eqz v5, :cond_1b

    .line 4640
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    .line 4641
    invoke-direct {p0, v8}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(Z)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 4642
    or-int/lit8 v0, v0, 0x7

    .line 4646
    :cond_1a
    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissKeyguard:I

    if-ne v5, v9, :cond_a

    .line 4648
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/server/policy/PhoneWindowManager$17;

    invoke-direct {v6, p0}, Lcom/android/server/policy/PhoneWindowManager$17;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 4656
    :cond_1b
    iput-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinDismissingKeyguard:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4657
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mSecureDismissingKeyguard:Z

    .line 4658
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardHidden:Z

    .line 4659
    invoke-direct {p0, v8}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(Z)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 4660
    or-int/lit8 v0, v0, 0x7

    goto/16 :goto_6
.end method

.method public finishedGoingToSleep(I)V
    .locals 3
    .param p1, "why"    # I

    .prologue
    const/4 v1, 0x0

    .line 5500
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 5502
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "screen_timeout"

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    div-int/lit16 v2, v2, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 5506
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5507
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    .line 5508
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 5509
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 5510
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 5512
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 5513
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onFinishedGoingToSleep(I)V

    .line 5499
    :cond_0
    return-void

    .line 5506
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public finishedWakingUp()V
    .locals 0

    .prologue
    .line 5542
    return-void
.end method

.method public focusChangedLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)I
    .locals 3
    .param p1, "lastFocus"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "newFocus"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v2, 0x0

    .line 4719
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 4720
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    const v1, -0x3fff7ffa

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 4723
    const/4 v0, 0x1

    return v0

    .line 4725
    :cond_0
    return v2
.end method

.method public getConfigDisplayHeight(III)I
    .locals 2
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 2225
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->getNonDecorDisplayHeight(III)I

    move-result v0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getConfigDisplayWidth(III)I
    .locals 1
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 2216
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->getNonDecorDisplayWidth(III)I

    move-result v0

    return v0
.end method

.method public getContentRectLw(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 3759
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 3758
    return-void
.end method

.method public getInputMethodWindowVisibleHeightLw()I
    .locals 2

    .prologue
    .line 6806
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getInsetHintLw(Landroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 12
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "displayRotation"    # I
    .param p3, "outContentInsets"    # Landroid/graphics/Rect;
    .param p4, "outStableInsets"    # Landroid/graphics/Rect;
    .param p5, "outOutsets"    # Landroid/graphics/Rect;

    .prologue
    .line 3419
    const/4 v8, 0x0

    invoke-static {v8, p1}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v3

    .line 3420
    .local v3, "fl":I
    const/4 v8, 0x0

    invoke-static {v8, p1}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v6

    .line 3421
    .local v6, "sysuiVis":I
    iget v8, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v5, v6, v8

    .line 3423
    .local v5, "systemUiVisibility":I
    if-eqz p5, :cond_1

    invoke-direct {p0, p1, v3}, Lcom/android/server/policy/PhoneWindowManager;->shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z

    move-result v7

    .line 3424
    :goto_0
    if-eqz v7, :cond_0

    .line 3425
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/util/ScreenShapeHelper;->getWindowOutsetBottomPx(Landroid/content/res/Resources;)I

    move-result v4

    .line 3426
    .local v4, "outset":I
    if-lez v4, :cond_0

    .line 3427
    if-nez p2, :cond_2

    .line 3428
    move-object/from16 v0, p5

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v4

    move-object/from16 v0, p5

    iput v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 3439
    .end local v4    # "outset":I
    :cond_0
    :goto_1
    const v8, 0x10100

    and-int/2addr v8, v3

    .line 3440
    const v9, 0x10100

    .line 3439
    if-ne v8, v9, :cond_b

    .line 3442
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 3443
    and-int/lit16 v8, v5, 0x200

    if-eqz v8, :cond_5

    .line 3444
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int v2, v8, v9

    .line 3445
    .local v2, "availRight":I
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int v1, v8, v9

    .line 3450
    .local v1, "availBottom":I
    :goto_2
    and-int/lit16 v8, v5, 0x100

    if-eqz v8, :cond_7

    .line 3451
    and-int/lit16 v8, v3, 0x400

    if-eqz v8, :cond_6

    .line 3452
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenLeft:I

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenTop:I

    .line 3453
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenRight:I

    sub-int v10, v2, v10

    .line 3454
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableFullscreenBottom:I

    sub-int v11, v1, v11

    .line 3452
    invoke-virtual {p3, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 3470
    :goto_3
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    .line 3471
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    sub-int v10, v2, v10

    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    sub-int v11, v1, v11

    .line 3470
    move-object/from16 v0, p4

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 3472
    return-void

    .line 3423
    .end local v1    # "availBottom":I
    .end local v2    # "availRight":I
    :cond_1
    const/4 v7, 0x0

    .local v7, "useOutsets":Z
    goto :goto_0

    .line 3429
    .end local v7    # "useOutsets":Z
    .restart local v4    # "outset":I
    :cond_2
    const/4 v8, 0x1

    if-ne p2, v8, :cond_3

    .line 3430
    move-object/from16 v0, p5

    iget v8, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v4

    move-object/from16 v0, p5

    iput v8, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 3431
    :cond_3
    const/4 v8, 0x2

    if-ne p2, v8, :cond_4

    .line 3432
    move-object/from16 v0, p5

    iget v8, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v4

    move-object/from16 v0, p5

    iput v8, v0, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 3433
    :cond_4
    const/4 v8, 0x3

    if-ne p2, v8, :cond_0

    .line 3434
    move-object/from16 v0, p5

    iget v8, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v4

    move-object/from16 v0, p5

    iput v8, v0, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 3447
    .end local v4    # "outset":I
    :cond_5
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int v2, v8, v9

    .line 3448
    .restart local v2    # "availRight":I
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int v1, v8, v9

    .restart local v1    # "availBottom":I
    goto :goto_2

    .line 3456
    :cond_6
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    .line 3457
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    sub-int v10, v2, v10

    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    sub-int v11, v1, v11

    .line 3456
    invoke-virtual {p3, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 3459
    :cond_7
    and-int/lit16 v8, v3, 0x400

    if-nez v8, :cond_8

    const/high16 v8, 0x2000000

    and-int/2addr v8, v3

    if-eqz v8, :cond_9

    .line 3460
    :cond_8
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_3

    .line 3461
    :cond_9
    and-int/lit16 v8, v5, 0x404

    if-nez v8, :cond_a

    .line 3463
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    .line 3464
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    sub-int v10, v2, v10

    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    sub-int v11, v1, v11

    .line 3463
    invoke-virtual {p3, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_3

    .line 3466
    :cond_a
    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    .line 3467
    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    sub-int v10, v2, v10

    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    sub-int v11, v1, v11

    .line 3466
    invoke-virtual {p3, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_3

    .line 3474
    .end local v1    # "availBottom":I
    .end local v2    # "availRight":I
    :cond_b
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 3475
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->setEmpty()V

    .line 3418
    return-void
.end method

.method public getMaxWallpaperLayer()I
    .locals 1

    .prologue
    .line 2187
    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->windowTypeToLayerLw(I)I

    move-result v0

    return v0
.end method

.method public getNonDecorDisplayHeight(III)I
    .locals 1
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 2204
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_1

    .line 2207
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_0

    if-ge p1, p2, :cond_1

    .line 2208
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    aget v0, v0, p3

    sub-int v0, p2, v0

    return v0

    .line 2211
    :cond_1
    return p2
.end method

.method public getNonDecorDisplayWidth(III)I
    .locals 1
    .param p1, "fullWidth"    # I
    .param p2, "fullHeight"    # I
    .param p3, "rotation"    # I

    .prologue
    .line 2192
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    .line 2195
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_0

    if-le p1, p2, :cond_0

    .line 2196
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    aget v0, v0, p3

    sub-int v0, p1, v0

    return v0

    .line 2199
    :cond_0
    return p1
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    .prologue
    .line 802
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 803
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 805
    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 804
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 802
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getSystemDecorLayerLw()I
    .locals 1

    .prologue
    .line 3746
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3747
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    return v0

    .line 3750
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3751
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    return v0

    .line 3754
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method getTelecommService()Landroid/telecom/TelecomManager;
    .locals 2

    .prologue
    .line 2630
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public getUserRotationMode()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 6016
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 6017
    const-string/jumbo v2, "accelerometer_rotation"

    const/4 v3, -0x2

    .line 6016
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    .line 6019
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getWinShowWhenLockedLw()Landroid/view/WindowManagerPolicy$WindowState;
    .locals 1

    .prologue
    .line 2259
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;

    return-object v0
.end method

.method goHome()Z
    .locals 19

    .prologue
    .line 6438
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6439
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "Not going home because user setup is in progress."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6440
    const/4 v1, 0x0

    return v1

    .line 6454
    :cond_0
    :try_start_0
    const-string/jumbo v1, "persist.sys.uts-test-mode"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 6456
    const-string/jumbo v1, "WindowManager"

    const-string/jumbo v2, "UTS-TEST-MODE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6473
    :cond_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 6474
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 6475
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v9

    .line 6474
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 6476
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 6477
    const/4 v13, 0x1

    .line 6478
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x2

    .line 6473
    invoke-interface/range {v5 .. v16}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v18

    .line 6479
    .local v18, "result":I
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_3

    .line 6480
    const/4 v1, 0x0

    return v1

    .line 6458
    .end local v18    # "result":I
    :cond_2
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopAppSwitches()V

    .line 6459
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows()V

    .line 6460
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v4

    .line 6461
    .local v4, "dock":Landroid/content/Intent;
    if-eqz v4, :cond_1

    .line 6462
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 6464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    .line 6463
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 6465
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 6466
    const/4 v9, 0x1

    .line 6467
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x2

    .line 6462
    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    .line 6468
    .restart local v18    # "result":I
    const/4 v1, 0x1

    move/from16 v0, v18

    if-ne v0, v1, :cond_1

    .line 6469
    const/4 v1, 0x0

    return v1

    .line 6482
    .end local v4    # "dock":Landroid/content/Intent;
    .end local v18    # "result":I
    :catch_0
    move-exception v17

    .line 6486
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public hasNavigationBar()Z
    .locals 1

    .prologue
    .line 6795
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    return v0
.end method

.method public hideBootMessages()V
    .locals 2

    .prologue

    invoke-static/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector;->hideBootMessages(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_flyme_0

    return-void

    :cond_flyme_0

    .line 6194
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6193
    return-void
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .locals 1

    .prologue
    .line 5766
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 5767
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Landroid/view/IWindowManager;
    .param p3, "windowManagerFuncs"    # Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .prologue
    .line 1331
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 1332
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    .line 1333
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 1334
    const-class v1, Landroid/view/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    .line 1335
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1336
    const-class v1, Landroid/service/dreams/DreamManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/dreams/DreamManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    .line 1337
    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 1338
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1339
    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 1342
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1343
    const v2, 0x11200a1

    .line 1342
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    .line 1346
    .local v9, "burnInProtectionEnabled":Z
    const-string/jumbo v1, "persist.debug.force_burn_in"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 1347
    .local v8, "burnInProtectionDevMode":Z
    if-nez v9, :cond_0

    if-eqz v8, :cond_1

    .line 1353
    :cond_0
    if-eqz v8, :cond_5

    .line 1354
    const/4 v3, -0x8

    .line 1355
    .local v3, "minHorizontal":I
    const/16 v4, 0x8

    .line 1356
    .local v4, "maxHorizontal":I
    const/4 v5, -0x8

    .line 1357
    .local v5, "minVertical":I
    const/4 v6, -0x4

    .line 1358
    .local v6, "maxVertical":I
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isRoundWindow()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v7, 0x6

    .line 1372
    .local v7, "maxRadius":I
    :goto_0
    new-instance v1, Lcom/android/server/policy/BurnInProtectionHelper;

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/policy/BurnInProtectionHelper;-><init>(Landroid/content/Context;IIIII)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    .line 1376
    .end local v3    # "minHorizontal":I
    .end local v4    # "maxHorizontal":I
    .end local v5    # "minVertical":I
    .end local v6    # "maxVertical":I
    .end local v7    # "maxRadius":I
    :cond_1
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    .line 1377
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v14, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v14}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    .line 1378
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v14, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v14}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    .line 1380
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindowManager;->getRotation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1382
    :goto_1
    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    .line 1383
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;->observe()V

    .line 1384
    new-instance v1, Lcom/android/server/policy/ShortcutManager;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lcom/android/server/policy/ShortcutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    .line 1385
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1386
    const v2, 0x10e0048

    .line 1385
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    .line 1387
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    const/4 v14, 0x0

    invoke-direct {v1, v2, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .line 1388
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1389
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1391
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    const/4 v14, 0x0

    invoke-direct {v1, v2, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    .line 1392
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.category.CAR_DOCK"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1393
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1395
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    const/4 v14, 0x0

    invoke-direct {v1, v2, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    .line 1396
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.category.DESK_DOCK"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1397
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1400
    const-string/jumbo v1, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1401
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1402
    const-string/jumbo v2, "PhoneWindowManager.mBroadcastWakeLock"

    .line 1401
    const/4 v14, 0x1

    invoke-virtual {v1, v14, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1403
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    .line 1404
    const-string/jumbo v2, "PhoneWindowManager.mPowerKeyWakeLock"

    .line 1403
    const/4 v14, 0x1

    invoke-virtual {v1, v14, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1405
    const-string/jumbo v1, "1"

    const-string/jumbo v2, "ro.debuggable"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    .line 1406
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1407
    const v2, 0x1120039

    .line 1406
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    .line 1409
    const v1, 0x10e0040

    .line 1408
    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    .line 1411
    const v1, 0x10e0045

    .line 1410
    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    .line 1413
    const v1, 0x10e0043

    .line 1412
    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    .line 1415
    const v1, 0x10e0047

    .line 1414
    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    .line 1416
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1417
    const v2, 0x112003e

    .line 1416
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    .line 1418
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1419
    const v2, 0x112003d

    .line 1418
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    .line 1420
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1421
    const v2, 0x10e0041

    .line 1420
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    .line 1422
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1423
    const v2, 0x10e0042

    .line 1422
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    .line 1424
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1425
    const v2, 0x112003c

    .line 1424
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    .line 1426
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1427
    const v2, 0x1120047

    .line 1426
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    .line 1429
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1430
    const v2, 0x1120031

    .line 1429
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    .line 1431
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    if-nez v1, :cond_6

    .line 1432
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1433
    const v2, 0x1120030

    .line 1432
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 1431
    :goto_2
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromPowerKey:Z

    .line 1434
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1435
    const v2, 0x1120032

    .line 1434
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotion:Z

    .line 1436
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1437
    const v2, 0x1120033

    .line 1436
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

    .line 1438
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1439
    const v2, 0x112002f

    .line 1438
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromCameraLens:Z

    .line 1440
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1441
    const v2, 0x1120034

    .line 1440
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    .line 1442
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1443
    const v2, 0x112002e

    .line 1442
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z

    .line 1445
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1446
    const v2, 0x1120037

    .line 1445
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    .line 1448
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1449
    const v2, 0x1120038

    .line 1448
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    .line 1451
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1452
    const v2, 0x10e004b

    .line 1451
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    .line 1453
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1454
    const v2, 0x10e004a

    .line 1453
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    .line 1455
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1456
    const v2, 0x10e004c

    .line 1455
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    .line 1457
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1458
    const v2, 0x10e004d

    .line 1457
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    .line 1459
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1460
    const v2, 0x10e004e

    .line 1459
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    .line 1462
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    .line 1464
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    .line 1467
    const-string/jumbo v1, "accessibility"

    .line 1466
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1470
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 1471
    .local v11, "filter":Landroid/content/IntentFilter;
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1472
    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1473
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1474
    sget-object v1, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1475
    const-string/jumbo v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1476
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v12

    .line 1477
    .local v12, "intent":Landroid/content/Intent;
    if-eqz v12, :cond_2

    .line 1479
    const-string/jumbo v1, "android.intent.extra.DOCK_STATE"

    .line 1480
    const/4 v2, 0x0

    .line 1479
    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    .line 1484
    :cond_2
    new-instance v11, Landroid/content/IntentFilter;

    .end local v11    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 1485
    .restart local v11    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1486
    const-string/jumbo v1, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v11, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1487
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1490
    new-instance v11, Landroid/content/IntentFilter;

    .end local v11    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v11, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1491
    .restart local v11    # "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1494
    new-instance v1, Lcom/android/server/policy/SystemGesturesPointerEventListener;

    .line 1495
    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$14;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$14;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    .line 1494
    move-object/from16 v0, p1

    invoke-direct {v1, v0, v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    .line 1534
    new-instance v1, Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/policy/ImmersiveModeConfirmation;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    .line 1535
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-interface {v1, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicy$PointerEventListener;)V

    .line 1537
    const-string/jumbo v1, "vibrator"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    .line 1538
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1539
    const v2, 0x107001c

    .line 1538
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 1540
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1541
    const v2, 0x107001d

    .line 1540
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .line 1542
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1543
    const v2, 0x107001e

    .line 1542
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .line 1544
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1545
    const v2, 0x107001f

    .line 1544
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mClockTickVibePattern:[J

    .line 1546
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1547
    const v2, 0x1070020

    .line 1546
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCalendarDateVibePattern:[J

    .line 1548
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1549
    const v2, 0x1070021

    .line 1548
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .line 1550
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1551
    const v2, 0x1070022

    .line 1550
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .line 1552
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1553
    const v2, 0x1070024

    .line 1552
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContextClickVibePattern:[J

    .line 1555
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1556
    const v2, 0x112002c

    .line 1555
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    .line 1558
    new-instance v1, Lcom/android/server/policy/GlobalKeyManager;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/policy/GlobalKeyManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    .line 1561
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->initializeHdmiState()V

    .line 1564
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1565
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startedGoingToSleep(I)V

    .line 1566
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->finishedGoingToSleep(I)V

    .line 1569
    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Landroid/view/WindowManagerInternal;

    .line 1570
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v2}, Lcom/android/server/policy/StatusBarController;->getAppTransitionListener()Landroid/view/WindowManagerInternal$AppTransitionListener;

    move-result-object v2

    .line 1569
    invoke-virtual {v1, v2}, Landroid/view/WindowManagerInternal;->registerAppTransitionListener(Landroid/view/WindowManagerInternal$AppTransitionListener;)V

    invoke-static/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector;->initFlymeExtraFields(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V

    .line 1330
    return-void

    .line 1358
    .end local v11    # "filter":Landroid/content/IntentFilter;
    .end local v12    # "intent":Landroid/content/Intent;
    .restart local v3    # "minHorizontal":I
    .restart local v4    # "maxHorizontal":I
    .restart local v5    # "minVertical":I
    .restart local v6    # "maxVertical":I
    :cond_4
    const/4 v7, -0x1

    .restart local v7    # "maxRadius":I
    goto/16 :goto_0

    .line 1360
    .end local v3    # "minHorizontal":I
    .end local v4    # "maxHorizontal":I
    .end local v5    # "minVertical":I
    .end local v6    # "maxVertical":I
    .end local v7    # "maxRadius":I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 1362
    .local v13, "resources":Landroid/content/res/Resources;
    const v1, 0x10e0095

    .line 1361
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1364
    .restart local v3    # "minHorizontal":I
    const v1, 0x10e0096

    .line 1363
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 1366
    .restart local v4    # "maxHorizontal":I
    const v1, 0x10e0097

    .line 1365
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 1368
    .restart local v5    # "minVertical":I
    const v1, 0x10e0098

    .line 1367
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 1370
    .restart local v6    # "maxVertical":I
    const v1, 0x10e0094

    .line 1369
    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .restart local v7    # "maxRadius":I
    goto/16 :goto_0

    .line 1431
    .end local v3    # "minHorizontal":I
    .end local v4    # "maxHorizontal":I
    .end local v5    # "minVertical":I
    .end local v6    # "maxVertical":I
    .end local v7    # "maxRadius":I
    .end local v13    # "resources":Landroid/content/res/Resources;
    :cond_6
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 1462
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 1381
    :catch_0
    move-exception v10

    .local v10, "ex":Landroid/os/RemoteException;
    goto/16 :goto_1
.end method

.method initializeHdmiState()V
    .locals 13

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 4784
    const/4 v5, 0x0

    .line 4786
    .local v5, "plugged":Z
    new-instance v8, Ljava/io/File;

    const-string/jumbo v11, "/sys/devices/virtual/switch/hdmi/state"

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4787
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string/jumbo v11, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {v8, v11}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 4789
    const-string/jumbo v3, "/sys/class/switch/hdmi/state"

    .line 4790
    .local v3, "filename":Ljava/lang/String;
    const/4 v6, 0x0

    .line 4792
    .local v6, "reader":Ljava/io/FileReader;
    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    const-string/jumbo v8, "/sys/class/switch/hdmi/state"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4793
    .end local v6    # "reader":Ljava/io/FileReader;
    .local v7, "reader":Ljava/io/FileReader;
    const/16 v8, 0xf

    :try_start_1
    new-array v0, v8, [C

    .line 4794
    .local v0, "buf":[C
    invoke-virtual {v7, v0}, Ljava/io/FileReader;->read([C)I

    move-result v4

    .line 4795
    .local v4, "n":I
    if-le v4, v10, :cond_0

    .line 4796
    new-instance v8, Ljava/lang/String;

    add-int/lit8 v11, v4, -0x1

    const/4 v12, 0x0

    invoke-direct {v8, v0, v12, v11}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v8

    if-eqz v8, :cond_2

    const/4 v5, 0x1

    .line 4803
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 4805
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4813
    .end local v0    # "buf":[C
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "n":I
    .end local v7    # "reader":Ljava/io/FileReader;
    :cond_1
    :goto_1
    if-eqz v5, :cond_4

    move v8, v9

    :goto_2
    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    .line 4814
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v8, :cond_5

    :goto_3
    invoke-virtual {p0, v9}, Lcom/android/server/policy/PhoneWindowManager;->setHdmiPlugged(Z)V

    .line 4783
    return-void

    .line 4796
    .restart local v0    # "buf":[C
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v4    # "n":I
    .restart local v7    # "reader":Ljava/io/FileReader;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 4806
    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/io/IOException;
    goto :goto_1

    .line 4800
    .end local v0    # "buf":[C
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v4    # "n":I
    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_1
    move-exception v2

    .line 4801
    .end local v6    # "reader":Ljava/io/FileReader;
    .local v2, "ex":Ljava/lang/NumberFormatException;
    :goto_4
    :try_start_3
    const-string/jumbo v8, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4803
    if-eqz v6, :cond_1

    .line 4805
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 4806
    :catch_2
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    goto :goto_1

    .line 4798
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v2    # "ex":Ljava/lang/NumberFormatException;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_3
    move-exception v1

    .line 4799
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v1    # "ex":Ljava/io/IOException;
    :goto_5
    :try_start_5
    const-string/jumbo v8, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4803
    if-eqz v6, :cond_1

    .line 4805
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 4806
    :catch_4
    move-exception v1

    goto :goto_1

    .line 4802
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 4803
    :goto_6
    if-eqz v6, :cond_3

    .line 4805
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 4802
    :cond_3
    :goto_7
    throw v8

    .line 4806
    :catch_5
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    goto :goto_7

    .end local v1    # "ex":Ljava/io/IOException;
    .end local v3    # "filename":Ljava/lang/String;
    :cond_4
    move v8, v10

    .line 4813
    goto :goto_2

    :cond_5
    move v9, v10

    .line 4814
    goto :goto_3

    .line 4802
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/FileReader;
    .local v6, "reader":Ljava/io/FileReader;
    goto :goto_6

    .line 4798
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v7    # "reader":Ljava/io/FileReader;
    :catch_6
    move-exception v1

    .restart local v1    # "ex":Ljava/io/IOException;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    goto :goto_5

    .line 4800
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v7    # "reader":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    .restart local v2    # "ex":Ljava/lang/NumberFormatException;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    goto :goto_4
.end method

.method public interceptKeyBeforeDispatching(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 45
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 2654
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v28

    .line 2655
    .local v28, "keyguardOn":Z
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v27

    .line 2656
    .local v27, "keyCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v34

    .line 2657
    .local v34, "repeatCount":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v30

    .line 2658
    .local v30, "metaState":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v24

    .line 2659
    .local v24, "flags":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_2

    const/16 v21, 0x1

    .line 2660
    .local v21, "down":Z
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v16

    .line 2671
    .local v16, "canceled":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v4, :cond_4

    move/from16 v0, v24

    and-int/lit16 v4, v0, 0x400

    if-nez v4, :cond_4

    .line 2672
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-eqz v4, :cond_3

    .line 2680
    :cond_0
    const/16 v4, 0x19

    move/from16 v0, v27

    if-ne v0, v4, :cond_4

    .line 2681
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 2680
    if-eqz v4, :cond_4

    .line 2682
    if-nez v21, :cond_1

    .line 2683
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 2685
    :cond_1
    const-wide/16 v6, -0x1

    return-wide v6

    .line 2659
    .end local v16    # "canceled":Z
    .end local v21    # "down":Z
    :cond_2
    const/16 v21, 0x0

    .restart local v21    # "down":Z
    goto :goto_0

    .line 2673
    .restart local v16    # "canceled":Z
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v32

    .line 2674
    .local v32, "now":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    .line 2675
    const-wide/16 v8, 0x96

    .line 2674
    add-long v40, v6, v8

    .line 2676
    .local v40, "timeoutTime":J
    cmp-long v4, v32, v40

    if-gez v4, :cond_0

    .line 2677
    sub-long v6, v40, v32

    return-wide v6

    .line 2691
    .end local v32    # "now":J
    .end local v40    # "timeoutTime":J
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v4, :cond_5

    invoke-static/range {v27 .. v27}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2699
    :cond_5
    :goto_1
    const/4 v4, 0x3

    move/from16 v0, v27

    if-ne v0, v4, :cond_15

    .line 2703
    if-nez v21, :cond_b

    .line 2704
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    .line 2706
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    .line 2707
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    if-eqz v4, :cond_7

    .line 2708
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    .line 2709
    const-wide/16 v6, -0x1

    return-wide v6

    .line 2692
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    goto :goto_1

    .line 2712
    :cond_7
    if-eqz v16, :cond_8

    .line 2713
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v6, "Ignoring HOME; event canceled."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    const-wide/16 v6, -0x1

    return-wide v6

    .line 2720
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v39

    .line 2721
    .local v39, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v39, :cond_9

    invoke-virtual/range {v39 .. v39}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2722
    const-string/jumbo v4, "WindowManager"

    const-string/jumbo v6, "Ignoring HOME; there\'s a ringing incoming call."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    const-wide/16 v6, -0x1

    return-wide v6

    .line 2727
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-eqz v4, :cond_a

    .line 2728
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2729
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 2730
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    .line 2731
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v7

    int-to-long v8, v7

    .line 2730
    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2732
    const-wide/16 v6, -0x1

    return-wide v6

    .line 2735
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome()V

    .line 2736
    const-wide/16 v6, -0x1

    return-wide v6

    .line 2741
    .end local v39    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_b
    if-eqz p1, :cond_d

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    .line 2742
    :goto_2
    if-eqz v13, :cond_10

    .line 2743
    iget v0, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v42, v0

    .line 2744
    .local v42, "type":I
    const/16 v4, 0x7ed

    move/from16 v0, v42

    if-eq v0, v4, :cond_c

    .line 2745
    const/16 v4, 0x7d9

    move/from16 v0, v42

    if-ne v0, v4, :cond_e

    .line 2748
    :cond_c
    const-wide/16 v6, 0x0

    return-wide v6

    .line 2741
    .end local v42    # "type":I
    :cond_d
    const/4 v13, 0x0

    .local v13, "attrs":Landroid/view/WindowManager$LayoutParams;
    goto :goto_2

    .line 2746
    .end local v13    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v42    # "type":I
    :cond_e
    iget v4, v13, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_c

    .line 2750
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v0, v4

    move/from16 v43, v0

    .line 2751
    .local v43, "typeCount":I
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_3
    move/from16 v0, v25

    move/from16 v1, v43

    if-ge v0, v1, :cond_10

    .line 2752
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v4, v4, v25

    move/from16 v0, v42

    if-ne v0, v4, :cond_f

    .line 2754
    const-wide/16 v6, -0x1

    return-wide v6

    .line 2751
    :cond_f
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 2760
    .end local v25    # "i":I
    .end local v42    # "type":I
    .end local v43    # "typeCount":I
    :cond_10
    if-nez v34, :cond_14

    .line 2761
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    .line 2762
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapPending:Z

    if-eqz v4, :cond_12

    .line 2763
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapPending:Z

    .line 2764
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2765
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->handleDoubleTapOnHome()V

    .line 2775
    :cond_11
    :goto_4
    const-wide/16 v6, -0x1

    return-wide v6

    .line 2766
    :cond_12
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v6, 0x1

    if-eq v4, v6, :cond_13

    .line 2767
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_11

    .line 2768
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    goto :goto_4

    .line 2770
    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_11

    .line 2771
    if-nez v28, :cond_11

    .line 2772
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->handleLongPressOnHome(I)V

    goto :goto_4

    .line 2776
    :cond_15
    const/16 v4, 0x52

    move/from16 v0, v27

    if-ne v0, v4, :cond_16

    .line 2778
    const/16 v18, 0x1

    .line 2780
    .local v18, "chordBug":I
    if-eqz v21, :cond_1d

    if-nez v34, :cond_1d

    .line 2781
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    if-eqz v4, :cond_1d

    and-int/lit8 v4, v30, 0x1

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1d

    .line 2782
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.BUG_REPORT"

    invoke-direct {v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2783
    .local v5, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 2784
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 2783
    invoke-virtual/range {v4 .. v12}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2785
    const-wide/16 v6, -0x1

    return-wide v6

    .line 2803
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v18    # "chordBug":I
    :cond_16
    const/16 v4, 0x54

    move/from16 v0, v27

    if-ne v0, v4, :cond_19

    .line 2804
    if-eqz v21, :cond_18

    .line 2805
    if-nez v34, :cond_17

    .line 2806
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 2807
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 2816
    :cond_17
    const-wide/16 v6, 0x0

    return-wide v6

    .line 2810
    :cond_18
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 2811
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    if-eqz v4, :cond_17

    .line 2812
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 2813
    const-wide/16 v6, -0x1

    return-wide v6

    .line 2817
    :cond_19
    const/16 v4, 0xbb

    move/from16 v0, v27

    if-ne v0, v4, :cond_1c

    .line 2818
    if-nez v28, :cond_1a

    .line 2819
    if-eqz v21, :cond_1b

    if-nez v34, :cond_1b

    .line 2820
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    .line 2825
    :cond_1a
    :goto_5
    const-wide/16 v6, -0x1

    return-wide v6

    .line 2821
    :cond_1b
    if-nez v21, :cond_1a

    .line 2822
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    goto :goto_5

    .line 2826
    :cond_1c
    const/16 v4, 0x2a

    move/from16 v0, v27

    if-ne v0, v4, :cond_1f

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 2827
    if-eqz v21, :cond_1d

    .line 2828
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v35

    .line 2829
    .local v35, "service":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v35, :cond_1d

    .line 2831
    :try_start_0
    invoke-interface/range {v35 .. v35}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2932
    .end local v35    # "service":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1d
    :goto_6

    invoke-static/range {p0 .. p2}, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector;->handleLongPressOnHeadSetIfNeeded(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_flyme_0

    const-wide/16 v4, -0x1

    return-wide v4

    :cond_flyme_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    if-eqz v4, :cond_33

    .line 2933
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v26

    .line 2934
    .local v26, "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v26 .. v27}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 2935
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    .line 2936
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    .line 2937
    if-eqz v21, :cond_1e

    if-nez v34, :cond_1e

    if-eqz v28, :cond_31

    .line 2953
    :cond_1e
    :goto_7
    const-wide/16 v6, -0x1

    return-wide v6

    .line 2832
    .end local v26    # "kcm":Landroid/view/KeyCharacterMap;
    .restart local v35    # "service":Lcom/android/internal/statusbar/IStatusBarService;
    :catch_0
    move-exception v22

    .local v22, "e":Landroid/os/RemoteException;
    goto :goto_6

    .line 2837
    .end local v22    # "e":Landroid/os/RemoteException;
    .end local v35    # "service":Lcom/android/internal/statusbar/IStatusBarService;
    :cond_1f
    const/16 v4, 0xdb

    move/from16 v0, v27

    if-ne v0, v4, :cond_24

    .line 2838
    if-eqz v21, :cond_22

    .line 2839
    if-nez v34, :cond_21

    .line 2840
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistKeyLongPressed:Z

    .line 2856
    :cond_20
    :goto_8
    const-wide/16 v6, -0x1

    return-wide v6

    .line 2841
    :cond_21
    const/4 v4, 0x1

    move/from16 v0, v34

    if-ne v0, v4, :cond_20

    .line 2842
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistKeyLongPressed:Z

    .line 2843
    if-nez v28, :cond_20

    .line 2844
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistLongPressAction()V

    goto :goto_8

    .line 2848
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistKeyLongPressed:Z

    if-eqz v4, :cond_23

    .line 2849
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mAssistKeyLongPressed:Z

    goto :goto_8

    .line 2851
    :cond_23
    if-nez v28, :cond_20

    .line 2852
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    goto :goto_8

    .line 2857
    :cond_24
    const/16 v4, 0xe7

    move/from16 v0, v27

    if-ne v0, v4, :cond_27

    .line 2858
    if-nez v21, :cond_1d

    .line 2860
    if-nez v28, :cond_25

    .line 2861
    new-instance v44, Landroid/content/Intent;

    const-string/jumbo v4, "android.speech.action.WEB_SEARCH"

    move-object/from16 v0, v44

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2874
    .local v44, "voiceIntent":Landroid/content/Intent;
    :goto_9
    sget-object v4, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_6

    .line 2864
    .end local v44    # "voiceIntent":Landroid/content/Intent;
    :cond_25
    const-string/jumbo v4, "deviceidle"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 2863
    invoke-static {v4}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v19

    .line 2865
    .local v19, "dic":Landroid/os/IDeviceIdleController;
    if-eqz v19, :cond_26

    .line 2867
    :try_start_1
    const-string/jumbo v4, "voice-search"

    move-object/from16 v0, v19

    invoke-interface {v0, v4}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    .line 2871
    :cond_26
    :goto_a
    new-instance v44, Landroid/content/Intent;

    const-string/jumbo v4, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    move-object/from16 v0, v44

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2872
    .restart local v44    # "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.speech.extras.EXTRA_SECURE"

    const/4 v6, 0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_9

    .line 2876
    .end local v19    # "dic":Landroid/os/IDeviceIdleController;
    .end local v44    # "voiceIntent":Landroid/content/Intent;
    :cond_27
    const/16 v4, 0x78

    move/from16 v0, v27

    if-ne v0, v4, :cond_29

    .line 2877
    if-eqz v21, :cond_28

    if-nez v34, :cond_28

    .line 2878
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2880
    :cond_28
    const-wide/16 v6, -0x1

    return-wide v6

    .line 2881
    :cond_29
    const/16 v4, 0xdd

    move/from16 v0, v27

    if-eq v0, v4, :cond_2a

    .line 2882
    const/16 v4, 0xdc

    move/from16 v0, v27

    if-ne v0, v4, :cond_2e

    .line 2883
    :cond_2a
    if-eqz v21, :cond_2c

    .line 2884
    const/16 v4, 0xdd

    move/from16 v0, v27

    if-ne v0, v4, :cond_2d

    const/16 v20, 0x1

    .line 2888
    .local v20, "direction":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2889
    const-string/jumbo v6, "screen_brightness_mode"

    .line 2890
    const/4 v7, 0x0

    .line 2891
    const/4 v8, -0x3

    .line 2887
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    .line 2892
    .local v14, "auto":I
    if-eqz v14, :cond_2b

    .line 2893
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2894
    const-string/jumbo v6, "screen_brightness_mode"

    .line 2895
    const/4 v7, 0x0

    .line 2896
    const/4 v8, -0x3

    .line 2893
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2899
    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v31

    .line 2900
    .local v31, "min":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v29

    .line 2901
    .local v29, "max":I
    sub-int v4, v29, v31

    add-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0xa

    mul-int v38, v4, v20

    .line 2902
    .local v38, "step":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2903
    const-string/jumbo v6, "screen_brightness"

    .line 2904
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v7}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v7

    .line 2905
    const/4 v8, -0x3

    .line 2902
    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v15

    .line 2906
    .local v15, "brightness":I
    add-int v15, v15, v38

    .line 2908
    move/from16 v0, v29

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 2909
    move/from16 v0, v31

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 2911
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2912
    const-string/jumbo v6, "screen_brightness"

    .line 2913
    const/4 v7, -0x3

    .line 2911
    invoke-static {v4, v6, v15, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2914
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.SHOW_BRIGHTNESS_DIALOG"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2915
    sget-object v6, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 2914
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2917
    .end local v14    # "auto":I
    .end local v15    # "brightness":I
    .end local v20    # "direction":I
    .end local v29    # "max":I
    .end local v31    # "min":I
    .end local v38    # "step":I
    :cond_2c
    const-wide/16 v6, -0x1

    return-wide v6

    .line 2884
    :cond_2d
    const/16 v20, -0x1

    .restart local v20    # "direction":I
    goto/16 :goto_b

    .line 2918
    .end local v20    # "direction":I
    :cond_2e
    invoke-static/range {v27 .. v27}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 2919
    if-eqz v21, :cond_30

    .line 2920
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    .line 2924
    :cond_2f
    :goto_c
    const-wide/16 v6, -0x1

    return-wide v6

    .line 2921
    :cond_30
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v4, :cond_2f

    .line 2922
    const-string/jumbo v4, "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    goto :goto_c

    .line 2938
    .restart local v26    # "kcm":Landroid/view/KeyCharacterMap;
    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v30

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/policy/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v37

    .line 2939
    .local v37, "shortcutIntent":Landroid/content/Intent;
    if-eqz v37, :cond_32

    .line 2940
    const/high16 v4, 0x10000000

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2942
    :try_start_2
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_7

    .line 2943
    :catch_1
    move-exception v23

    .line 2944
    .local v23, "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Dropping shortcut key combination because the activity to which it is registered was not found: SEARCH+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2946
    invoke-static/range {v27 .. v27}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v7

    .line 2944
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 2949
    .end local v23    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_32
    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Dropping unregistered shortcut key combination: SEARCH+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2950
    invoke-static/range {v27 .. v27}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v7

    .line 2949
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 2958
    .end local v26    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v37    # "shortcutIntent":Landroid/content/Intent;
    :cond_33
    if-eqz v21, :cond_34

    if-nez v34, :cond_34

    if-eqz v28, :cond_38

    .line 2980
    :cond_34
    if-eqz v21, :cond_35

    if-nez v34, :cond_35

    if-eqz v28, :cond_39

    .line 2997
    :cond_35
    if-eqz v21, :cond_3b

    if-nez v34, :cond_3b

    const/16 v4, 0x3d

    move/from16 v0, v27

    if-ne v0, v4, :cond_3b

    .line 2998
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    if-nez v4, :cond_36

    if-eqz v28, :cond_3a

    .line 3013
    :cond_36
    :goto_d
    if-eqz v21, :cond_3d

    if-nez v34, :cond_3d

    .line 3014
    const/16 v4, 0xcc

    move/from16 v0, v27

    if-eq v0, v4, :cond_37

    .line 3015
    const/16 v4, 0x3e

    move/from16 v0, v27

    if-ne v0, v4, :cond_3d

    .line 3016
    move/from16 v0, v30

    and-int/lit16 v4, v0, 0x7000

    if-eqz v4, :cond_3d

    .line 3017
    :cond_37
    move/from16 v0, v30

    and-int/lit16 v4, v0, 0xc1

    if-eqz v4, :cond_3c

    const/16 v20, -0x1

    .line 3018
    .restart local v20    # "direction":I
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    move/from16 v0, v20

    invoke-interface {v4, v6, v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->switchKeyboardLayout(II)V

    .line 3019
    const-wide/16 v6, -0x1

    return-wide v6

    .line 2959
    .end local v20    # "direction":I
    :cond_38
    const/high16 v4, 0x10000

    and-int v4, v4, v30

    if-eqz v4, :cond_34

    .line 2960
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v26

    .line 2961
    .restart local v26    # "kcm":Landroid/view/KeyCharacterMap;
    invoke-virtual/range {v26 .. v27}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 2962
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    .line 2963
    const v6, -0x70001

    and-int v6, v6, v30

    .line 2962
    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v4, v0, v1, v6}, Lcom/android/server/policy/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v37

    .line 2965
    .restart local v37    # "shortcutIntent":Landroid/content/Intent;
    if-eqz v37, :cond_34

    .line 2966
    const/high16 v4, 0x10000000

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2968
    :try_start_3
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 2974
    :goto_f
    const-wide/16 v6, -0x1

    return-wide v6

    .line 2969
    :catch_2
    move-exception v23

    .line 2970
    .restart local v23    # "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Dropping shortcut key combination because the activity to which it is registered was not found: META+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2972
    invoke-static/range {v27 .. v27}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v7

    .line 2970
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 2981
    .end local v23    # "ex":Landroid/content/ActivityNotFoundException;
    .end local v26    # "kcm":Landroid/view/KeyCharacterMap;
    .end local v37    # "shortcutIntent":Landroid/content/Intent;
    :cond_39
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 2982
    .local v17, "category":Ljava/lang/String;
    if-eqz v17, :cond_35

    .line 2983
    const-string/jumbo v4, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 2984
    .restart local v5    # "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2986
    :try_start_4
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v4}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2992
    :goto_10
    const-wide/16 v6, -0x1

    return-wide v6

    .line 2987
    :catch_3
    move-exception v23

    .line 2988
    .restart local v23    # "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2990
    const-string/jumbo v7, ", category="

    .line 2988
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10

    .line 2998
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v17    # "category":Ljava/lang/String;
    .end local v23    # "ex":Landroid/content/ActivityNotFoundException;
    :cond_3a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 2999
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v4

    and-int/lit16 v0, v4, -0xc2

    move/from16 v36, v0

    .line 3000
    .local v36, "shiftlessModifiers":I
    const/4 v4, 0x2

    move/from16 v0, v36

    invoke-static {v0, v4}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 3001
    move/from16 v0, v36

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 3002
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    .line 3003
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3006
    .end local v36    # "shiftlessModifiers":I
    :cond_3b
    if-nez v21, :cond_36

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    if-eqz v4, :cond_36

    .line 3007
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    and-int v4, v4, v30

    if-nez v4, :cond_36

    .line 3008
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    .line 3009
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    goto/16 :goto_d

    .line 3017
    :cond_3c
    const/16 v20, 0x1

    .restart local v20    # "direction":I
    goto/16 :goto_e

    .line 3021
    .end local v20    # "direction":I
    :cond_3d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    if-eqz v4, :cond_3e

    if-eqz v21, :cond_3f

    .line 3028
    :cond_3e
    invoke-static/range {v27 .. v27}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 3029
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v4, v6, v0, v1}, Lcom/android/server/policy/GlobalKeyManager;->handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    move-result v4

    .line 3028
    if-eqz v4, :cond_41

    .line 3030
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3022
    :cond_3f
    const/16 v4, 0xcc

    move/from16 v0, v27

    if-eq v0, v4, :cond_40

    .line 3023
    const/16 v4, 0x3e

    move/from16 v0, v27

    if-ne v0, v4, :cond_3e

    .line 3024
    :cond_40
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    .line 3025
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3034
    :cond_41
    const/high16 v4, 0x10000

    and-int v4, v4, v30

    if-eqz v4, :cond_42

    .line 3035
    const-wide/16 v6, -0x1

    return-wide v6

    .line 3039
    :cond_42
    const-wide/16 v6, 0x0

    return-wide v6

    .line 2868
    .restart local v19    # "dic":Landroid/os/IDeviceIdleController;
    :catch_4
    move-exception v22

    .restart local v22    # "e":Landroid/os/RemoteException;
    goto/16 :goto_a
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 23
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 4889
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 4891
    const/16 v18, 0x0

    return v18

    .line 4894
    :cond_0
    const/high16 v18, 0x20000000

    and-int v18, v18, p2

    if-eqz v18, :cond_4

    const/4 v9, 0x1

    .line 4895
    .local v9, "interactive":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v18

    if-nez v18, :cond_5

    const/4 v7, 0x1

    .line 4896
    .local v7, "down":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    .line 4897
    .local v6, "canceled":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v12

    .line 4899
    .local v12, "keyCode":I
    const/high16 v18, 0x1000000

    and-int v18, v18, p2

    if-eqz v18, :cond_6

    const/4 v10, 0x1

    .line 4905
    .local v10, "isInjected":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    move-object/from16 v18, v0

    if-nez v18, :cond_7

    const/4 v13, 0x0

    .line 4918
    :goto_3
    and-int/lit8 v18, p2, 0x1

    if-nez v18, :cond_9

    .line 4919
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isWakeKey()Z

    move-result v11

    .line 4920
    :goto_4
    if-nez v9, :cond_a

    if-eqz v10, :cond_1

    if-eqz v11, :cond_a

    .line 4925
    :cond_1
    if-nez v9, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 4930
    const/4 v15, 0x1

    .line 4942
    .local v15, "result":I
    :cond_2
    :goto_5
    invoke-static {v12}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 4943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v12, v1}, Lcom/android/server/policy/GlobalKeyManager;->shouldHandleGlobalKey(ILandroid/view/KeyEvent;)Z

    move-result v18

    .line 4942
    if-eqz v18, :cond_d

    .line 4944
    if-eqz v11, :cond_3

    .line 4945
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    move/from16 v20, v0

    const-string/jumbo v21, "android.policy:KEY"

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    .line 4947
    :cond_3
    return v15

    .line 4894
    .end local v6    # "canceled":Z
    .end local v7    # "down":Z
    .end local v9    # "interactive":Z
    .end local v10    # "isInjected":Z
    .end local v12    # "keyCode":I
    .end local v15    # "result":I
    :cond_4
    const/4 v9, 0x0

    .restart local v9    # "interactive":Z
    goto :goto_0

    .line 4895
    :cond_5
    const/4 v7, 0x0

    .restart local v7    # "down":Z
    goto :goto_1

    .line 4899
    .restart local v6    # "canceled":Z
    .restart local v12    # "keyCode":I
    :cond_6
    const/4 v10, 0x0

    .restart local v10    # "isInjected":Z
    goto :goto_2

    .line 4906
    :cond_7
    if-eqz v9, :cond_8

    .line 4907
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v13

    .local v13, "keyguardActive":Z
    goto :goto_3

    .line 4908
    .end local v13    # "keyguardActive":Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v13

    .restart local v13    # "keyguardActive":Z
    goto :goto_3

    .line 4918
    .end local v13    # "keyguardActive":Z
    :cond_9
    const/4 v11, 0x1

    .local v11, "isWakeKey":Z
    goto :goto_4

    .line 4923
    .end local v11    # "isWakeKey":Z
    :cond_a
    const/4 v15, 0x1

    .line 4924
    .restart local v15    # "result":I
    const/4 v11, 0x0

    .line 4920
    .restart local v11    # "isWakeKey":Z
    goto :goto_5

    .line 4934
    .end local v11    # "isWakeKey":Z
    .end local v15    # "result":I
    :cond_b
    const/4 v15, 0x0

    .line 4935
    .restart local v15    # "result":I
    if-eqz v11, :cond_2

    if-eqz v7, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/policy/PhoneWindowManager;->isWakeKeyWhenScreenOff(I)Z

    move-result v18

    if-nez v18, :cond_2

    .line 4936
    :cond_c
    const/4 v11, 0x0

    .restart local v11    # "isWakeKey":Z
    goto :goto_5

    .line 4950
    .end local v11    # "isWakeKey":Z
    :cond_d
    if-eqz v7, :cond_12

    .line 4951
    and-int/lit8 v18, p2, 0x2

    if-eqz v18, :cond_12

    .line 4952
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v18

    if-nez v18, :cond_11

    const/16 v17, 0x1

    .line 4955
    .local v17, "useHapticFeedback":Z
    :goto_6
    sparse-switch v12, :sswitch_data_0

    .line 5180
    :cond_e
    :goto_7
    if-eqz v17, :cond_f

    .line 5181
    const/16 v18, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 5184
    :cond_f
    if-eqz v11, :cond_10

    .line 5185
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    move/from16 v20, v0

    const-string/jumbo v21, "android.policy:KEY"

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    .line 5188
    :cond_10
    return v15

    .line 4952
    .end local v17    # "useHapticFeedback":Z
    :cond_11
    const/16 v17, 0x0

    .restart local v17    # "useHapticFeedback":Z
    goto :goto_6

    .line 4950
    .end local v17    # "useHapticFeedback":Z
    :cond_12
    const/16 v17, 0x0

    .restart local v17    # "useHapticFeedback":Z
    goto :goto_6

    .line 4959
    :sswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    move/from16 v18, v0

    if-eqz v18, :cond_13

    .line 4961
    and-int/lit8 v15, v15, -0x2

    .line 4963
    :cond_13
    const/16 v18, 0x19

    move/from16 v0, v18

    if-ne v12, v0, :cond_17

    .line 4964
    if-eqz v7, :cond_16

    .line 4965
    if-eqz v9, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    move/from16 v18, v0

    if-eqz v18, :cond_15

    .line 4990
    :cond_14
    :goto_8
    if-eqz v7, :cond_e

    .line 4991
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v16

    .line 4992
    .local v16, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v16, :cond_1a

    .line 4993
    invoke-virtual/range {v16 .. v16}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v18

    if-eqz v18, :cond_19

    .line 5000
    const-string/jumbo v18, "WindowManager"

    const-string/jumbo v19, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5005
    invoke-virtual/range {v16 .. v16}, Landroid/telecom/TelecomManager;->silenceRinger()V

    .line 5009
    and-int/lit8 v15, v15, -0x2

    .line 5010
    goto :goto_7

    .line 4966
    .end local v16    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x400

    move/from16 v18, v0

    if-nez v18, :cond_14

    .line 4967
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    .line 4968
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    .line 4969
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    .line 4970
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 4971
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord()V

    goto :goto_8

    .line 4974
    :cond_16
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    .line 4975
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    goto :goto_8

    .line 4977
    :cond_17
    const/16 v18, 0x18

    move/from16 v0, v18

    if-ne v12, v0, :cond_14

    .line 4978
    if-eqz v7, :cond_18

    .line 4979
    if-eqz v9, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    move/from16 v18, v0

    if-nez v18, :cond_14

    .line 4980
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x400

    move/from16 v18, v0

    if-nez v18, :cond_14

    .line 4981
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    .line 4982
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    .line 4983
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    goto/16 :goto_8

    .line 4986
    :cond_18
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    .line 4987
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    goto/16 :goto_8

    .line 5012
    .restart local v16    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_19
    invoke-virtual/range {v16 .. v16}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 5013
    and-int/lit8 v18, v15, 0x1

    if-nez v18, :cond_1a

    .line 5017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v18

    .line 5018
    const/16 v19, 0x0

    .line 5017
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_7

    .line 5023
    :cond_1a
    and-int/lit8 v18, v15, 0x1

    if-nez v18, :cond_e

    .line 5024
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1b

    .line 5025
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V

    goto/16 :goto_7

    .line 5030
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v18

    .line 5031
    const/16 v19, 0x1

    .line 5030
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_7

    .line 5040
    .end local v16    # "telecomManager":Landroid/telecom/TelecomManager;
    :sswitch_1
    and-int/lit8 v15, v15, -0x2

    .line 5041
    if-eqz v7, :cond_1f

    .line 5042
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v16

    .line 5043
    .restart local v16    # "telecomManager":Landroid/telecom/TelecomManager;
    const/4 v8, 0x0

    .line 5044
    .local v8, "hungUp":Z
    if-eqz v16, :cond_1c

    .line 5045
    invoke-virtual/range {v16 .. v16}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v8

    .line 5047
    .end local v8    # "hungUp":Z
    :cond_1c
    if-eqz v9, :cond_1d

    if-eqz v8, :cond_1e

    .line 5052
    :cond_1d
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    goto/16 :goto_7

    .line 5048
    :cond_1e
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    .line 5049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    .line 5050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v20

    .line 5049
    invoke-virtual/range {v18 .. v21}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_7

    .line 5055
    .end local v16    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    move/from16 v18, v0

    if-nez v18, :cond_e

    .line 5056
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5057
    if-nez v6, :cond_e

    .line 5058
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_20

    .line 5060
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->goHome()Z

    move-result v18

    if-nez v18, :cond_e

    .line 5064
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x2

    if-eqz v18, :cond_e

    .line 5066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v20

    .line 5067
    const/16 v19, 0x4

    const/16 v22, 0x0

    .line 5066
    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    move/from16 v3, v19

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 5068
    const/4 v11, 0x0

    .restart local v11    # "isWakeKey":Z
    goto/16 :goto_7

    .line 5077
    .end local v11    # "isWakeKey":Z
    :sswitch_2
    and-int/lit8 v15, v15, -0x2

    .line 5078
    const/4 v11, 0x0

    .line 5079
    .restart local v11    # "isWakeKey":Z
    if-eqz v7, :cond_21

    .line 5080
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_7

    .line 5082
    :cond_21
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v9, v6}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyUp(Landroid/view/KeyEvent;ZZ)V

    goto/16 :goto_7

    .line 5088
    .end local v11    # "isWakeKey":Z
    :sswitch_3
    and-int/lit8 v15, v15, -0x2

    .line 5089
    const/4 v11, 0x0

    .line 5090
    .restart local v11    # "isWakeKey":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v18

    if-nez v18, :cond_22

    .line 5091
    const/16 v17, 0x0

    .line 5093
    :cond_22
    if-eqz v7, :cond_23

    .line 5094
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->sleepPress(J)V

    goto/16 :goto_7

    .line 5096
    :cond_23
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->sleepRelease(J)V

    goto/16 :goto_7

    .line 5102
    .end local v11    # "isWakeKey":Z
    :sswitch_4
    and-int/lit8 v15, v15, -0x2

    .line 5103
    const/4 v11, 0x0

    .line 5104
    .restart local v11    # "isWakeKey":Z
    if-nez v7, :cond_e

    .line 5105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManagerInternal;->setUserInactiveOverrideFromWindowManager()V

    goto/16 :goto_7

    .line 5111
    .end local v11    # "isWakeKey":Z
    :sswitch_5
    and-int/lit8 v15, v15, -0x2

    .line 5112
    const/4 v11, 0x1

    .line 5113
    .restart local v11    # "isWakeKey":Z
    goto/16 :goto_7

    .line 5128
    .end local v11    # "isWakeKey":Z
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/media/session/MediaSessionLegacyHelper;->isGlobalPriorityActive()Z

    move-result v18

    if-eqz v18, :cond_24

    .line 5131
    and-int/lit8 v15, v15, -0x2

    .line 5133
    :cond_24
    and-int/lit8 v18, v15, 0x1

    if-nez v18, :cond_flyme_0

    .line 5139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    .line 5141
    new-instance v19, Landroid/view/KeyEvent;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 5140
    const/16 v20, 0x3

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    .line 5142
    .local v14, "msg":Landroid/os/Message;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5143
    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    :cond_flyme_0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v15}, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector;->interceptFlymeKeyBeforeQueueing(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/KeyEvent;I)I

    move-result v15

    goto/16 :goto_7

    .line 5149
    .end local v14    # "msg":Landroid/os/Message;
    :sswitch_7
    if-eqz v7, :cond_e

    .line 5150
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v16

    .line 5151
    .restart local v16    # "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v16, :cond_e

    .line 5152
    invoke-virtual/range {v16 .. v16}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 5153
    const-string/jumbo v18, "WindowManager"

    const-string/jumbo v19, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5155
    invoke-virtual/range {v16 .. v16}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    .line 5159
    and-int/lit8 v15, v15, -0x2

    goto/16 :goto_7

    .line 5170
    .end local v16    # "telecomManager":Landroid/telecom/TelecomManager;
    :sswitch_8
    and-int/lit8 v18, v15, 0x1

    if-nez v18, :cond_e

    if-nez v7, :cond_e

    .line 5171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    .line 5173
    if-eqz v13, :cond_25

    const/16 v18, 0x1

    .line 5172
    :goto_9
    const/16 v20, 0xc

    .line 5173
    const/16 v21, 0x0

    .line 5172
    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v14

    .line 5174
    .restart local v14    # "msg":Landroid/os/Message;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 5175
    invoke-virtual {v14}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_7

    .line 5173
    .end local v14    # "msg":Landroid/os/Message;
    :cond_25
    const/16 v18, 0x0

    goto :goto_9

    .line 4955
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_7
        0x6 -> :sswitch_1
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_2
        0x4f -> :sswitch_6
        0x55 -> :sswitch_6
        0x56 -> :sswitch_6
        0x57 -> :sswitch_6
        0x58 -> :sswitch_6
        0x59 -> :sswitch_6
        0x5a -> :sswitch_6
        0x5b -> :sswitch_6
        0x7e -> :sswitch_6
        0x7f -> :sswitch_6
        0x82 -> :sswitch_6
        0xa4 -> :sswitch_0
        0xde -> :sswitch_6
        0xdf -> :sswitch_3
        0xe0 -> :sswitch_5
        0xe7 -> :sswitch_8
        0x114 -> :sswitch_4
    .end sparse-switch
.end method

.method public interceptMotionBeforeQueueingNonInteractive(JI)I
    .locals 9
    .param p1, "whenNanos"    # J
    .param p3, "policyFlags"    # I

    .prologue
    const-wide/32 v6, 0xf4240

    const/4 v4, 0x0

    .line 5245
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 5246
    div-long v0, p1, v6

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotion:Z

    .line 5247
    const-string/jumbo v3, "android.policy:MOTION"

    .line 5246
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5248
    return v4

    .line 5252
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5253
    const/4 v0, 0x1

    return v0

    .line 5259
    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_2

    .line 5260
    div-long v0, p1, v6

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

    .line 5261
    const-string/jumbo v3, "android.policy:MOTION"

    .line 5260
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    .line 5264
    :cond_2
    return v4
.end method

.method public isDefaultOrientationForced()Z
    .locals 1

    .prologue
    .line 1706
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    return v0
.end method

.method isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1230
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    .line 1229
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 4
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2230
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_1

    .line 2231
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2232
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v2

    .line 2230
    if-nez v2, :cond_1

    .line 2233
    :cond_0
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7ed

    if-ne v2, v3, :cond_2

    .line 2230
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 2233
    goto :goto_0
.end method

.method public isKeyguardDrawnLw()Z
    .locals 2

    .prologue
    .line 5797
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5798
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 5797
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 2238
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyguardLocked()Z
    .locals 1

    .prologue
    .line 5747
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    return v0
.end method

.method public isKeyguardSecure()Z
    .locals 1

    .prologue
    .line 5753
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 5754
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isKeyguardShowingOrOccluded()Z
    .locals 1

    .prologue
    .line 5760
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 5720
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    return v0
.end method

.method public isTopLevelWindow(I)Z
    .locals 2
    .param p1, "windowType"    # I

    .prologue
    const/4 v0, 0x1

    .line 6840
    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_1

    .line 6841
    const/16 v1, 0x7cf

    if-gt p1, v1, :cond_1

    .line 6842
    const/16 v1, 0x3eb

    if-ne p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 6844
    :cond_1
    return v0
.end method

.method isUserSetupComplete()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1234
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1235
    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, -0x2

    .line 1234
    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public keepScreenOnStartedLw()V
    .locals 0

    .prologue
    .line 6583
    return-void
.end method

.method public keepScreenOnStoppedLw()V
    .locals 4

    .prologue
    .line 6588
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6589
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 6587
    :cond_0
    return-void
.end method

.method keyguardOn()Z
    .locals 1

    .prologue
    .line 2643
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method launchHomeFromHotKey()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 3272
    invoke-virtual {p0, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    .line 3271
    return-void
.end method

.method launchHomeFromHotKey(ZZ)V
    .locals 3
    .param p1, "awakenFromDreams"    # Z
    .param p2, "respectKeyguard"    # Z

    .prologue
    const/4 v2, 0x1

    .line 3280
    if-eqz p2, :cond_1

    .line 3281
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3283
    return-void

    .line 3286
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideLockScreen:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3289
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$15;

    invoke-direct {v2, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$15;-><init>(Lcom/android/server/policy/PhoneWindowManager;Z)V

    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Landroid/view/WindowManagerPolicy$OnKeyguardExitResult;)V

    .line 3302
    return-void

    .line 3308
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3311
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    if-eqz v1, :cond_3

    .line 3313
    if-eqz p1, :cond_2

    .line 3314
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    .line 3316
    :cond_2
    const-string/jumbo v1, "homekey"

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3317
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    .line 3279
    :goto_1
    return-void

    .line 3320
    :cond_3
    const-string/jumbo v1, "homekey"

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 3321
    invoke-virtual {p0, v2, p1}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(ZZ)V

    goto :goto_1

    .line 3309
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method launchVoiceAssistWithWakeLock(Z)V
    .locals 4
    .param p1, "keyguardActive"    # Z

    .prologue
    .line 5381
    const-string/jumbo v3, "deviceidle"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 5380
    invoke-static {v3}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    .line 5382
    .local v0, "dic":Landroid/os/IDeviceIdleController;
    if-eqz v0, :cond_0

    .line 5384
    :try_start_0
    const-string/jumbo v3, "voice-search"

    invoke-interface {v0, v3}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5389
    :cond_0
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5390
    .local v2, "voiceIntent":Landroid/content/Intent;
    const-string/jumbo v3, "android.speech.extras.EXTRA_SECURE"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5391
    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5392
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 5379
    return-void

    .line 5385
    .end local v2    # "voiceIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public layoutWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 28
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 3853
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->canReceiveInput(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_2

    .line 3854
    :cond_1
    return-void

    .line 3856
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v16

    .line 3857
    .local v16, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDefaultDisplay()Z

    move-result v20

    .line 3858
    .local v20, "isDefaultDisplay":Z
    if-eqz v20, :cond_9

    .line 3859
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_8

    const/16 v21, 0x1

    .line 3860
    .local v21, "needsToOffsetInputMethodTarget":Z
    :goto_0
    if-eqz v21, :cond_3

    .line 3862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 3865
    :cond_3
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v4

    .line 3866
    .local v4, "fl":I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v24, v0

    .line 3867
    .local v24, "sim":I
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v25

    .line 3869
    .local v25, "sysUiFl":I
    sget-object v8, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    .line 3870
    .local v8, "pf":Landroid/graphics/Rect;
    sget-object v9, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 3871
    .local v9, "df":Landroid/graphics/Rect;
    sget-object v10, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    .line 3872
    .local v10, "of":Landroid/graphics/Rect;
    sget-object v11, Lcom/android/server/policy/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    .line 3873
    .local v11, "cf":Landroid/graphics/Rect;
    sget-object v12, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    .line 3874
    .local v12, "vf":Landroid/graphics/Rect;
    sget-object v13, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    .line 3875
    .local v13, "dcf":Landroid/graphics/Rect;
    sget-object v14, Lcom/android/server/policy/PhoneWindowManager;->mTmpStableFrame:Landroid/graphics/Rect;

    .line 3876
    .local v14, "sf":Landroid/graphics/Rect;
    const/4 v15, 0x0

    .line 3877
    .local v15, "osf":Landroid/graphics/Rect;
    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    .line 3879
    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v2, :cond_a

    .line 3880
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v17

    .line 3882
    :goto_1
    move/from16 v0, v24

    and-int/lit16 v5, v0, 0xf0

    .line 3884
    .local v5, "adjust":I
    if-eqz v20, :cond_b

    .line 3885
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    invoke-virtual {v14, v2, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 3890
    :goto_2
    if-nez v20, :cond_d

    .line 3891
    if-eqz p2, :cond_c

    .line 3894
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/policy/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4262
    :goto_3
    and-int/lit16 v2, v4, 0x200

    if-eqz v2, :cond_4

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7da

    if-eq v2, v3, :cond_4

    .line 4263
    const/16 v2, -0x2710

    iput v2, v9, Landroid/graphics/Rect;->top:I

    const/16 v2, -0x2710

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 4264
    const/16 v2, 0x2710

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    const/16 v2, 0x2710

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 4265
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-eq v2, v3, :cond_4

    .line 4266
    const/16 v2, -0x2710

    iput v2, v12, Landroid/graphics/Rect;->top:I

    const/16 v2, -0x2710

    iput v2, v12, Landroid/graphics/Rect;->left:I

    const/16 v2, -0x2710

    iput v2, v11, Landroid/graphics/Rect;->top:I

    const/16 v2, -0x2710

    iput v2, v11, Landroid/graphics/Rect;->left:I

    const/16 v2, -0x2710

    iput v2, v10, Landroid/graphics/Rect;->top:I

    const/16 v2, -0x2710

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 4267
    const/16 v2, 0x2710

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    const/16 v2, 0x2710

    iput v2, v12, Landroid/graphics/Rect;->right:I

    const/16 v2, 0x2710

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    const/16 v2, 0x2710

    iput v2, v11, Landroid/graphics/Rect;->right:I

    const/16 v2, 0x2710

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    const/16 v2, 0x2710

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 4275
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z

    move-result v27

    .line 4276
    .local v27, "useOutsets":Z
    if-eqz v20, :cond_5

    if-eqz v27, :cond_5

    .line 4277
    sget-object v15, Lcom/android/server/policy/PhoneWindowManager;->mTmpOutsetFrame:Landroid/graphics/Rect;

    .line 4278
    .local v15, "osf":Landroid/graphics/Rect;
    iget v2, v11, Landroid/graphics/Rect;->left:I

    iget v3, v11, Landroid/graphics/Rect;->top:I

    iget v6, v11, Landroid/graphics/Rect;->right:I

    iget v7, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v15, v2, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 4279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ScreenShapeHelper;->getWindowOutsetBottomPx(Landroid/content/res/Resources;)I

    move-result v22

    .line 4280
    .local v22, "outset":I
    if-lez v22, :cond_5

    .line 4281
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplayRotation:I

    move/from16 v23, v0

    .line 4282
    .local v23, "rotation":I
    if-nez v23, :cond_40

    .line 4283
    iget v2, v15, Landroid/graphics/Rect;->bottom:I

    add-int v2, v2, v22

    iput v2, v15, Landroid/graphics/Rect;->bottom:I

    .end local v15    # "osf":Landroid/graphics/Rect;
    .end local v22    # "outset":I
    .end local v23    # "rotation":I
    :cond_5
    :goto_4
    move-object/from16 v7, p1

    .line 4307
    invoke-interface/range {v7 .. v15}, Landroid/view/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4311
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_6

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4312
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v2

    if-eqz v2, :cond_43

    .line 4316
    :cond_6
    :goto_5
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7ef

    if-ne v2, v3, :cond_7

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleOrBehindKeyguardLw()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4317
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 3850
    :cond_7
    :goto_6
    return-void

    .line 3859
    .end local v4    # "fl":I
    .end local v5    # "adjust":I
    .end local v8    # "pf":Landroid/graphics/Rect;
    .end local v9    # "df":Landroid/graphics/Rect;
    .end local v10    # "of":Landroid/graphics/Rect;
    .end local v11    # "cf":Landroid/graphics/Rect;
    .end local v12    # "vf":Landroid/graphics/Rect;
    .end local v13    # "dcf":Landroid/graphics/Rect;
    .end local v14    # "sf":Landroid/graphics/Rect;
    .end local v21    # "needsToOffsetInputMethodTarget":Z
    .end local v24    # "sim":I
    .end local v25    # "sysUiFl":I
    .end local v27    # "useOutsets":Z
    :cond_8
    const/16 v21, 0x0

    .restart local v21    # "needsToOffsetInputMethodTarget":Z
    goto/16 :goto_0

    .line 3858
    .end local v21    # "needsToOffsetInputMethodTarget":Z
    :cond_9
    const/16 v21, 0x0

    .restart local v21    # "needsToOffsetInputMethodTarget":Z
    goto/16 :goto_0

    .line 3879
    .restart local v4    # "fl":I
    .restart local v8    # "pf":Landroid/graphics/Rect;
    .restart local v9    # "df":Landroid/graphics/Rect;
    .restart local v10    # "of":Landroid/graphics/Rect;
    .restart local v11    # "cf":Landroid/graphics/Rect;
    .restart local v12    # "vf":Landroid/graphics/Rect;
    .restart local v13    # "dcf":Landroid/graphics/Rect;
    .restart local v14    # "sf":Landroid/graphics/Rect;
    .local v15, "osf":Landroid/graphics/Rect;
    .restart local v24    # "sim":I
    .restart local v25    # "sysUiFl":I
    :cond_a
    const/16 v17, 0x0

    .local v17, "hasNavBar":Z
    goto/16 :goto_1

    .line 3887
    .end local v17    # "hasNavBar":Z
    .restart local v5    # "adjust":I
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    invoke-virtual {v14, v2, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_2

    .line 3897
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3898
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3900
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    .line 3899
    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3902
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    .line 3901
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 3904
    :cond_d
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_e

    .line 3905
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3906
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3907
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3909
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 3911
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    .line 3913
    const/16 v2, 0x50

    move-object/from16 v0, v16

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 3914
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    goto/16 :goto_3

    .line 3915
    :cond_e
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7ef

    if-ne v2, v3, :cond_f

    .line 3916
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3917
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3918
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3919
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 3920
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    .line 3922
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 3923
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 3924
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    goto/16 :goto_3

    .line 3925
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_10

    .line 3926
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3927
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3928
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3929
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 3930
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 3931
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 3932
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 3933
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    .line 3934
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 3938
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemLeft:I

    iput v2, v13, Landroid/graphics/Rect;->left:I

    .line 3939
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemTop:I

    iput v2, v13, Landroid/graphics/Rect;->top:I

    .line 3940
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemRight:I

    iput v2, v13, Landroid/graphics/Rect;->right:I

    .line 3941
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBottom:I

    iput v2, v13, Landroid/graphics/Rect;->bottom:I

    .line 3942
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_13

    const/16 v18, 0x1

    .line 3945
    .local v18, "inheritTranslucentDecor":Z
    :goto_7
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_15

    .line 3946
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x63

    if-gt v2, v3, :cond_14

    const/16 v19, 0x1

    .line 3948
    .local v19, "isAppWindow":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_11

    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_11
    const/16 v26, 0x0

    .line 3949
    .local v26, "topAtRest":Z
    :goto_9
    if-eqz v19, :cond_12

    if-eqz v18, :cond_17

    .line 3968
    :cond_12
    :goto_a
    const v2, 0x10100

    and-int/2addr v2, v4

    .line 3969
    const v3, 0x10100

    .line 3968
    if-ne v2, v3, :cond_25

    .line 3976
    if-eqz p2, :cond_19

    .line 3979
    const/4 v7, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/policy/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 3942
    .end local v18    # "inheritTranslucentDecor":Z
    .end local v19    # "isAppWindow":Z
    .end local v26    # "topAtRest":Z
    :cond_13
    const/16 v18, 0x0

    .restart local v18    # "inheritTranslucentDecor":Z
    goto :goto_7

    .line 3946
    :cond_14
    const/16 v19, 0x0

    .restart local v19    # "isAppWindow":Z
    goto :goto_8

    .line 3945
    .end local v19    # "isAppWindow":Z
    :cond_15
    const/16 v19, 0x0

    .restart local v19    # "isAppWindow":Z
    goto :goto_8

    .line 3948
    :cond_16
    const/16 v26, 0x1

    .restart local v26    # "topAtRest":Z
    goto :goto_9

    .line 3949
    :cond_17
    if-nez v26, :cond_12

    .line 3950
    and-int/lit8 v2, v25, 0x4

    if-nez v2, :cond_18

    .line 3951
    and-int/lit16 v2, v4, 0x400

    if-nez v2, :cond_18

    .line 3952
    const/high16 v2, 0x4000000

    and-int/2addr v2, v4

    if-nez v2, :cond_18

    .line 3953
    const/high16 v2, -0x80000000

    and-int/2addr v2, v4

    if-nez v2, :cond_18

    .line 3956
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    iput v2, v13, Landroid/graphics/Rect;->top:I

    .line 3958
    :cond_18
    const/high16 v2, 0x8000000

    and-int/2addr v2, v4

    if-nez v2, :cond_12

    .line 3959
    and-int/lit8 v2, v25, 0x2

    if-nez v2, :cond_12

    .line 3960
    const/high16 v2, -0x80000000

    and-int/2addr v2, v4

    if-nez v2, :cond_12

    .line 3963
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    iput v2, v13, Landroid/graphics/Rect;->bottom:I

    .line 3964
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    iput v2, v13, Landroid/graphics/Rect;->right:I

    goto :goto_a

    .line 3981
    :cond_19
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_1a

    .line 3982
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e1

    if-ne v2, v3, :cond_1e

    .line 3990
    :cond_1a
    if-eqz v17, :cond_1b

    .line 3991
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    .line 3990
    :goto_b
    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 3992
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 3993
    if-eqz v17, :cond_1c

    .line 3994
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    .line 3993
    :goto_c
    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 3996
    if-eqz v17, :cond_1d

    .line 3997
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    .line 3996
    :goto_d
    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4048
    :goto_e
    and-int/lit16 v2, v4, 0x400

    if-nez v2, :cond_23

    .line 4049
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 4050
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 4051
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 4052
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 4053
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    .line 4077
    :goto_f
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1, v4, v11}, Lcom/android/server/policy/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    .line 4078
    const/16 v2, 0x30

    if-eq v5, v2, :cond_24

    .line 4079
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    .line 4080
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    .line 4081
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    .line 4082
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 3991
    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto :goto_b

    .line 3995
    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    goto :goto_c

    .line 3998
    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    goto :goto_d

    .line 4003
    :cond_1e
    const/high16 v2, 0x2000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_1f

    .line 4004
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1f

    .line 4005
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_1f

    .line 4008
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4009
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4010
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4011
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    .line 4012
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    .line 4011
    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_e

    .line 4013
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 4014
    move/from16 v0, v25

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_20

    .line 4015
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_20

    .line 4016
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_20

    .line 4021
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4022
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4023
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4024
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4028
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 4029
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 4030
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 4031
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_e

    .line 4033
    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4034
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4035
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenLeft:I

    .line 4036
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenWidth:I

    .line 4035
    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4037
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenTop:I

    .line 4038
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedOverscanScreenHeight:I

    .line 4037
    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4042
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 4043
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 4044
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 4045
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_e

    .line 4055
    :cond_21
    const/16 v2, 0x10

    if-eq v5, v2, :cond_22

    .line 4056
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 4057
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 4058
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 4059
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f

    .line 4061
    :cond_22
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 4062
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 4063
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 4064
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f

    .line 4072
    :cond_23
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 4073
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 4074
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 4075
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f

    .line 4084
    :cond_24
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 4087
    :cond_25
    and-int/lit16 v2, v4, 0x100

    if-nez v2, :cond_26

    move/from16 v0, v25

    and-int/lit16 v2, v0, 0x600

    if-eqz v2, :cond_37

    .line 4094
    :cond_26
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_27

    .line 4095
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e1

    if-ne v2, v3, :cond_28

    .line 4097
    :cond_27
    if-eqz v17, :cond_2a

    .line 4098
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    .line 4097
    :goto_10
    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4099
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4100
    if-eqz v17, :cond_2b

    .line 4101
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    add-int/2addr v2, v3

    .line 4100
    :goto_11
    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4103
    if-eqz v17, :cond_2c

    .line 4104
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    add-int/2addr v2, v3

    .line 4103
    :goto_12
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4190
    :goto_13
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1, v4, v11}, Lcom/android/server/policy/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;)V

    .line 4192
    const/16 v2, 0x30

    if-eq v5, v2, :cond_36

    .line 4193
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    .line 4194
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    .line 4195
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    .line 4196
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 4096
    :cond_28
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e4

    if-eq v2, v3, :cond_27

    .line 4109
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e3

    if-eq v2, v3, :cond_29

    .line 4110
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e8

    if-ne v2, v3, :cond_2d

    .line 4112
    :cond_29
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4113
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4114
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    .line 4115
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    .line 4114
    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4116
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    .line 4117
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    .line 4116
    add-int/2addr v2, v3

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto :goto_13

    .line 4098
    :cond_2a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    goto/16 :goto_10

    .line 4102
    :cond_2b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    goto/16 :goto_11

    .line 4105
    :cond_2c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    goto/16 :goto_12

    .line 4121
    :cond_2d
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7df

    if-eq v2, v3, :cond_2e

    .line 4122
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e5

    if-ne v2, v3, :cond_2f

    .line 4123
    :cond_2e
    and-int/lit16 v2, v4, 0x400

    if-eqz v2, :cond_2f

    .line 4125
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4126
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4127
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    .line 4128
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    .line 4127
    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4129
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    .line 4130
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    .line 4129
    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_13

    .line 4131
    :cond_2f
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e5

    if-ne v2, v3, :cond_30

    .line 4133
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4134
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4135
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    .line 4136
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    .line 4135
    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4137
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    .line 4138
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    .line 4137
    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_13

    .line 4139
    :cond_30
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7dd

    if-ne v2, v3, :cond_31

    .line 4142
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4143
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4144
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4145
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4146
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    .line 4147
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    .line 4148
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    .line 4149
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_13

    .line 4150
    :cond_31
    const/high16 v2, 0x2000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_32

    .line 4151
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_32

    .line 4152
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-gt v2, v3, :cond_32

    .line 4155
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4156
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4158
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenLeft:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenWidth:I

    add-int/2addr v2, v3

    .line 4157
    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4160
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanScreenHeight:I

    add-int/2addr v2, v3

    .line 4159
    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_13

    .line 4161
    :cond_32
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 4162
    move/from16 v0, v25

    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_35

    .line 4163
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    if-eq v2, v3, :cond_33

    .line 4164
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d5

    if-ne v2, v3, :cond_34

    .line 4175
    :cond_33
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4176
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4177
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenLeft:I

    .line 4178
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenWidth:I

    .line 4177
    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4179
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenTop:I

    .line 4180
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mUnrestrictedScreenHeight:I

    .line 4179
    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_13

    .line 4165
    :cond_34
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7f1

    if-eq v2, v3, :cond_33

    .line 4166
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_35

    .line 4167
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7cf

    if-le v2, v3, :cond_33

    .line 4182
    :cond_35
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4183
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4184
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    .line 4185
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 4184
    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4186
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    .line 4187
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 4186
    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_13

    .line 4198
    :cond_36
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 4200
    :cond_37
    if-eqz p2, :cond_38

    .line 4205
    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/policy/PhoneWindowManager;->setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 4211
    :cond_38
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7de

    if-eq v2, v3, :cond_39

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e4

    if-ne v2, v3, :cond_3a

    .line 4216
    :cond_39
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4217
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4218
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenLeft:I

    .line 4219
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenWidth:I

    .line 4218
    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4220
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenTop:I

    .line 4221
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mRestrictedScreenHeight:I

    .line 4220
    add-int/2addr v2, v3

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 4222
    :cond_3a
    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d5

    if-eq v2, v3, :cond_3b

    move-object/from16 v0, v16

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d3

    if-ne v2, v3, :cond_3c

    .line 4224
    :cond_3b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4225
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4226
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4227
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStableBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 4229
    :cond_3c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iput v2, v8, Landroid/graphics/Rect;->left:I

    .line 4230
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iput v2, v8, Landroid/graphics/Rect;->top:I

    .line 4231
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iput v2, v8, Landroid/graphics/Rect;->right:I

    .line 4232
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v2, v8, Landroid/graphics/Rect;->bottom:I

    .line 4233
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 4234
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 4235
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 4236
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 4237
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    .line 4249
    :goto_14
    const/16 v2, 0x30

    if-eq v5, v2, :cond_3f

    .line 4250
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurLeft:I

    iput v2, v12, Landroid/graphics/Rect;->left:I

    .line 4251
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurTop:I

    iput v2, v12, Landroid/graphics/Rect;->top:I

    .line 4252
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurRight:I

    iput v2, v12, Landroid/graphics/Rect;->right:I

    .line 4253
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mCurBottom:I

    iput v2, v12, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    .line 4238
    :cond_3d
    const/16 v2, 0x10

    if-eq v5, v2, :cond_3e

    .line 4239
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 4240
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 4241
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 4242
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_14

    .line 4244
    :cond_3e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iput v2, v11, Landroid/graphics/Rect;->left:I

    iput v2, v10, Landroid/graphics/Rect;->left:I

    iput v2, v9, Landroid/graphics/Rect;->left:I

    .line 4245
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iput v2, v11, Landroid/graphics/Rect;->top:I

    iput v2, v10, Landroid/graphics/Rect;->top:I

    iput v2, v9, Landroid/graphics/Rect;->top:I

    .line 4246
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iput v2, v11, Landroid/graphics/Rect;->right:I

    iput v2, v10, Landroid/graphics/Rect;->right:I

    iput v2, v9, Landroid/graphics/Rect;->right:I

    .line 4247
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v2, v11, Landroid/graphics/Rect;->bottom:I

    iput v2, v10, Landroid/graphics/Rect;->bottom:I

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_14

    .line 4255
    :cond_3f
    invoke-virtual {v12, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_3

    .line 4284
    .end local v18    # "inheritTranslucentDecor":Z
    .end local v19    # "isAppWindow":Z
    .end local v26    # "topAtRest":Z
    .local v15, "osf":Landroid/graphics/Rect;
    .restart local v22    # "outset":I
    .restart local v23    # "rotation":I
    .restart local v27    # "useOutsets":Z
    :cond_40
    const/4 v2, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_41

    .line 4285
    iget v2, v15, Landroid/graphics/Rect;->right:I

    add-int v2, v2, v22

    iput v2, v15, Landroid/graphics/Rect;->right:I

    goto/16 :goto_4

    .line 4286
    :cond_41
    const/4 v2, 0x2

    move/from16 v0, v23

    if-ne v0, v2, :cond_42

    .line 4287
    iget v2, v15, Landroid/graphics/Rect;->top:I

    sub-int v2, v2, v22

    iput v2, v15, Landroid/graphics/Rect;->top:I

    goto/16 :goto_4

    .line 4288
    :cond_42
    const/4 v2, 0x3

    move/from16 v0, v23

    if-ne v0, v2, :cond_5

    .line 4289
    iget v2, v15, Landroid/graphics/Rect;->left:I

    sub-int v2, v2, v22

    iput v2, v15, Landroid/graphics/Rect;->left:I

    goto/16 :goto_4

    .line 4313
    .end local v15    # "osf":Landroid/graphics/Rect;
    .end local v22    # "outset":I
    .end local v23    # "rotation":I
    :cond_43
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 4314
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->offsetInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto/16 :goto_5

    .line 4318
    :cond_44
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->offsetVoiceInputWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto/16 :goto_6
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 6244
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6245
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6246
    if-eqz p1, :cond_0

    .line 6249
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->setLockOptions(Landroid/os/Bundle;)V

    .line 6251
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6243
    return-void
.end method

.method needSensorRunningLp()Z
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 817
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    if-eqz v0, :cond_2

    .line 818
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq v0, v3, :cond_0

    .line 819
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 824
    :cond_0
    return v2

    .line 820
    :cond_1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 821
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 827
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 833
    :cond_3
    return v2

    .line 828
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-eq v0, v2, :cond_3

    .line 829
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 830
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-eq v0, v3, :cond_3

    .line 835
    :cond_5
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    if-ne v0, v2, :cond_6

    .line 844
    const/4 v0, 0x0

    return v0

    .line 846
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    return v0
.end method

.method public notifyActivityDrawnForKeyguardLw()V
    .locals 2

    .prologue
    .line 5785
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 5786
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$20;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$20;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5784
    :cond_0
    return-void
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .locals 7
    .param p1, "whenNanos"    # J
    .param p3, "lensCovered"    # Z

    .prologue
    .line 4751
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    .line 4752
    .local v2, "lensCoverState":I
    :goto_0
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    if-ne v3, v2, :cond_1

    .line 4753
    return-void

    .line 4751
    .end local v2    # "lensCoverState":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "lensCoverState":I
    goto :goto_0

    .line 4755
    :cond_1
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 4756
    if-nez v2, :cond_2

    .line 4758
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v3, :cond_3

    const/4 v1, 0x0

    .line 4760
    :goto_1
    if-eqz v1, :cond_4

    .line 4761
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4765
    .local v0, "intent":Landroid/content/Intent;
    :goto_2
    const-wide/32 v4, 0xf4240

    div-long v4, p1, v4

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromCameraLens:Z

    .line 4766
    const-string/jumbo v6, "android.policy:CAMERA_COVER"

    .line 4765
    invoke-direct {p0, v4, v5, v3, v6}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    .line 4767
    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4769
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    .line 4750
    return-void

    .line 4759
    :cond_3
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    .local v1, "keyguardActive":Z
    goto :goto_1

    .line 4763
    .end local v1    # "keyguardActive":Z
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_2
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 5
    .param p1, "whenNanos"    # J
    .param p3, "lidOpen"    # Z

    .prologue
    .line 4732
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    .line 4733
    .local v0, "newLidState":I
    :goto_0
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-ne v0, v1, :cond_1

    .line 4734
    return-void

    .line 4732
    .end local v0    # "newLidState":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "newLidState":I
    goto :goto_0

    .line 4737
    :cond_1
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    .line 4738
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    .line 4739
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 4741
    if-eqz p3, :cond_3

    .line 4742
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    .line 4743
    const-string/jumbo v4, "android.policy:LID"

    .line 4742
    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    .line 4730
    :cond_2
    :goto_1
    return-void

    .line 4744
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    if-nez v1, :cond_2

    .line 4745
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto :goto_1
.end method

.method public performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z
    .locals 9
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "effectId"    # I
    .param p3, "always"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 6526
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6527
    return v7

    .line 6529
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 6530
    const-string/jumbo v5, "haptic_feedback_enabled"

    const/4 v6, -0x2

    .line 6529
    invoke-static {v1, v5, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 6531
    .local v0, "hapticsDisabled":Z
    :goto_0
    if-eqz v0, :cond_1

    if-eqz p3, :cond_3

    .line 6534
    :cond_1
    const/4 v4, 0x0

    .line 6535
    .local v4, "pattern":[J
    sparse-switch p2, :sswitch_data_0

    .line 6561
    return v7

    .line 6529
    .end local v0    # "hapticsDisabled":Z
    .end local v4    # "pattern":[J
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "hapticsDisabled":Z
    goto :goto_0

    .line 6532
    :cond_3
    return v7

    .line 6537
    .restart local v4    # "pattern":[J
    :sswitch_0
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressVibePattern:[J

    .line 6565
    .local v4, "pattern":[J
    :goto_1
    if-eqz p1, :cond_4

    .line 6566
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v2

    .line 6567
    .local v2, "owningUid":I
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    .line 6572
    .local v3, "owningPackage":Ljava/lang/String;
    :goto_2
    array-length v1, v4

    if-ne v1, v8, :cond_5

    .line 6574
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    aget-wide v4, v4, v7

    .end local v4    # "pattern":[J
    sget-object v6, Lcom/android/server/policy/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;JLandroid/media/AudioAttributes;)V

    .line 6579
    :goto_3
    return v8

    .line 6540
    .end local v2    # "owningUid":I
    .end local v3    # "owningPackage":Ljava/lang/String;
    .local v4, "pattern":[J
    :sswitch_1
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mVirtualKeyVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_1

    .line 6543
    .local v4, "pattern":[J
    :sswitch_2
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyboardTapVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_1

    .line 6546
    .local v4, "pattern":[J
    :sswitch_3
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mClockTickVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_1

    .line 6549
    .local v4, "pattern":[J
    :sswitch_4
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCalendarDateVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_1

    .line 6552
    .local v4, "pattern":[J
    :sswitch_5
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeDisabledVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_1

    .line 6555
    .local v4, "pattern":[J
    :sswitch_6
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_1

    .line 6558
    .local v4, "pattern":[J
    :sswitch_7
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContextClickVibePattern:[J

    .local v4, "pattern":[J
    goto :goto_1

    .line 6569
    :cond_4
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 6570
    .restart local v2    # "owningUid":I
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "owningPackage":Ljava/lang/String;
    goto :goto_2

    .line 6577
    :cond_5
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v6, Lcom/android/server/policy/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    const/4 v5, -0x1

    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V

    goto :goto_3

    .line 6535
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_7
        0x2710 -> :sswitch_5
        0x2711 -> :sswitch_6
    .end sparse-switch
.end method

.method public prepareAddWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 4
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v3, -0x7

    .line 2422
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 2463
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 2424
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2425
    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    .line 2426
    const-string/jumbo v2, "PhoneWindowManager"

    .line 2424
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2427
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    .line 2428
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2429
    return v3

    .line 2432
    :cond_0
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2433
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/StatusBarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0

    .line 2436
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2437
    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    .line 2438
    const-string/jumbo v2, "PhoneWindowManager"

    .line 2436
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2439
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    .line 2440
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2441
    return v3

    .line 2444
    :cond_1
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2445
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    goto :goto_0

    .line 2452
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    .line 2453
    const-string/jumbo v1, "android.permission.STATUS_BAR_SERVICE"

    .line 2454
    const-string/jumbo v2, "PhoneWindowManager"

    .line 2452
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2457
    :sswitch_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_2

    .line 2458
    return v3

    .line 2460
    :cond_2
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0

    .line 2422
    :sswitch_data_0
    .sparse-switch
        0x7d0 -> :sswitch_0
        0x7de -> :sswitch_2
        0x7e1 -> :sswitch_2
        0x7e3 -> :sswitch_1
        0x7e8 -> :sswitch_2
        0x7ed -> :sswitch_3
        0x7f1 -> :sswitch_2
    .end sparse-switch
.end method

.method readLidState()V
    .locals 1

    .prologue
    .line 2026
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getLidState()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    .line 2025
    return-void
.end method

.method public removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    .locals 3
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "window"    # Landroid/view/View;

    .prologue
    .line 2399
    if-eqz p2, :cond_0

    .line 2400
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2401
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0, p2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 2395
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_0
    return-void
.end method

.method public removeWindowLw(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 3
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v2, 0x0

    .line 2469
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_2

    .line 2470
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2471
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/StatusBarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 2472
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->showScrim()V

    .line 2476
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_1

    .line 2477
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    .line 2478
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/BarController;->setWindow(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 2468
    :cond_1
    return-void

    .line 2473
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_0

    .line 2474
    const-string/jumbo v0, "WindowManager"

    const-string/jumbo v1, "Removing keyguard scrim"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    goto :goto_0
.end method

.method public rotationForOrientationLw(II)I
    .locals 10
    .param p1, "orientation"    # I
    .param p2, "lastRotation"    # I

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 5829
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    if-eqz v2, :cond_0

    .line 5830
    return v4

    .line 5833
    :cond_0
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 5834
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v1

    .line 5835
    .local v1, "sensorRotation":I
    if-gez v1, :cond_1

    .line 5836
    move v1, p2

    .line 5840
    :cond_1
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    if-ltz v2, :cond_2

    .line 5842
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5921
    .local v0, "preferredRotation":I
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 5975
    :pswitch_0
    if-ltz v0, :cond_20

    monitor-exit v5

    .line 5976
    return v0

    .line 5843
    .end local v0    # "preferredRotation":I
    :cond_2
    :try_start_1
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-ne v2, v7, :cond_5

    .line 5844
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    if-ltz v2, :cond_5

    .line 5848
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v2, :cond_4

    .line 5849
    move v0, v1

    .restart local v0    # "preferredRotation":I
    goto :goto_0

    .end local v0    # "preferredRotation":I
    :cond_4
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    .restart local v0    # "preferredRotation":I
    goto :goto_0

    .line 5850
    .end local v0    # "preferredRotation":I
    :cond_5
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-eq v2, v3, :cond_6

    .line 5851
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v6, 0x3

    if-ne v2, v6, :cond_8

    .line 5853
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-nez v2, :cond_7

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    if-ltz v2, :cond_9

    .line 5857
    :cond_7
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v2, :cond_a

    .line 5858
    move v0, v1

    .restart local v0    # "preferredRotation":I
    goto :goto_0

    .line 5852
    .end local v0    # "preferredRotation":I
    :cond_8
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-eq v2, v8, :cond_6

    .line 5859
    :cond_9
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    if-eqz v2, :cond_b

    .line 5862
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    .restart local v0    # "preferredRotation":I
    goto :goto_0

    .line 5858
    .end local v0    # "preferredRotation":I
    :cond_a
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    .restart local v0    # "preferredRotation":I
    goto :goto_0

    .line 5863
    .end local v0    # "preferredRotation":I
    :cond_b
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v2, :cond_c

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-nez v2, :cond_c

    .line 5864
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    if-ltz v2, :cond_c

    .line 5869
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    .restart local v0    # "preferredRotation":I
    goto :goto_0

    .line 5870
    .end local v0    # "preferredRotation":I
    :cond_c
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotationLock:Z

    if-eqz v2, :cond_d

    .line 5873
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    .restart local v0    # "preferredRotation":I
    goto :goto_0

    .line 5874
    .end local v0    # "preferredRotation":I
    :cond_d
    const/16 v2, 0xe

    if-ne p1, v2, :cond_e

    .line 5876
    move v0, p2

    .restart local v0    # "preferredRotation":I
    goto :goto_0

    .line 5877
    .end local v0    # "preferredRotation":I
    :cond_e
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    if-nez v2, :cond_f

    .line 5880
    const/4 v0, -0x1

    .restart local v0    # "preferredRotation":I
    goto :goto_0

    .line 5881
    .end local v0    # "preferredRotation":I
    :cond_f
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    if-nez v2, :cond_14

    .line 5882
    if-eq p1, v7, :cond_10

    .line 5883
    const/4 v2, -0x1

    if-ne p1, v2, :cond_13

    .line 5893
    :cond_10
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    if-gez v2, :cond_11

    .line 5897
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 5898
    const v6, 0x112003a

    .line 5897
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v3

    :goto_1
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    .line 5900
    :cond_11
    if-ne v1, v7, :cond_12

    .line 5901
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    if-ne v2, v3, :cond_16

    .line 5904
    :cond_12
    move v0, v1

    .line 5903
    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    .line 5884
    .end local v0    # "preferredRotation":I
    :cond_13
    const/16 v2, 0xb

    if-eq p1, v2, :cond_10

    .line 5885
    const/16 v2, 0xc

    if-eq p1, v2, :cond_10

    .line 5886
    const/16 v2, 0xd

    if-eq p1, v2, :cond_10

    .line 5887
    :cond_14
    if-eq p1, v8, :cond_10

    .line 5888
    if-eq p1, v9, :cond_10

    .line 5889
    const/4 v2, 0x6

    if-eq p1, v2, :cond_10

    .line 5890
    const/4 v2, 0x7

    if-eq p1, v2, :cond_10

    .line 5908
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    if-ne v2, v3, :cond_17

    .line 5909
    const/4 v2, 0x5

    if-eq p1, v2, :cond_17

    .line 5914
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    .end local v0    # "preferredRotation":I
    :cond_15
    move v2, v4

    .line 5898
    goto :goto_1

    .line 5902
    :cond_16
    if-eq p1, v9, :cond_12

    .line 5903
    const/16 v2, 0xd

    if-eq p1, v2, :cond_12

    .line 5906
    move v0, p2

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    .line 5918
    .end local v0    # "preferredRotation":I
    :cond_17
    const/4 v0, -0x1

    .restart local v0    # "preferredRotation":I
    goto/16 :goto_0

    .line 5924
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_18

    monitor-exit v5

    .line 5925
    return v0

    .line 5927
    :cond_18
    :try_start_2
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    return v2

    .line 5931
    :pswitch_2
    :try_start_3
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-eqz v2, :cond_19

    monitor-exit v5

    .line 5932
    return v0

    .line 5934
    :cond_19
    :try_start_4
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v5

    return v2

    .line 5938
    :pswitch_3
    :try_start_5
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    if-eqz v2, :cond_1a

    monitor-exit v5

    .line 5939
    return v0

    .line 5941
    :cond_1a
    :try_start_6
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v5

    return v2

    .line 5945
    :pswitch_4
    :try_start_7
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v2

    if-eqz v2, :cond_1b

    monitor-exit v5

    .line 5946
    return v0

    .line 5948
    :cond_1b
    :try_start_8
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit v5

    return v2

    .line 5953
    :pswitch_5
    :try_start_9
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v2

    if-eqz v2, :cond_1c

    monitor-exit v5

    .line 5954
    return v0

    .line 5956
    :cond_1c
    :try_start_a
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v2

    if-eqz v2, :cond_1d

    monitor-exit v5

    .line 5957
    return p2

    .line 5959
    :cond_1d
    :try_start_b
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit v5

    return v2

    .line 5964
    :pswitch_6
    :try_start_c
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result v2

    if-eqz v2, :cond_1e

    monitor-exit v5

    .line 5965
    return v0

    .line 5967
    :cond_1e
    :try_start_d
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result v2

    if-eqz v2, :cond_1f

    monitor-exit v5

    .line 5968
    return p2

    .line 5970
    :cond_1f
    :try_start_e
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    monitor-exit v5

    return v2

    :cond_20
    monitor-exit v5

    .line 5978
    return v4

    .line 5833
    .end local v0    # "preferredRotation":I
    .end local v1    # "sensorRotation":I
    :catchall_0
    move-exception v2

    monitor-exit v5

    throw v2

    .line 5921
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public rotationHasCompatibleMetricsLw(II)Z
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "rotation"    # I

    .prologue
    .line 5985
    packed-switch p1, :pswitch_data_0

    .line 5997
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 5989
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v0

    return v0

    .line 5994
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v0

    return v0

    .line 5985
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public screenTurnedOff()V
    .locals 2

    .prologue
    .line 5589
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(Z)V

    .line 5590
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5591
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    .line 5592
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    .line 5593
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    .line 5594
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    .line 5595
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .line 5596
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 5598
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 5599
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 5586
    return-void

    .line 5590
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 5632
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5633
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 5634
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 5631
    return-void

    .line 5632
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V
    .locals 5
    .param p1, "screenOnListener"    # Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .prologue
    const/4 v0, 0x0

    .line 5609
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(Z)V

    .line 5610
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5611
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    .line 5612
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    .line 5613
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    .line 5614
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    .line 5615
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Landroid/view/WindowManagerPolicy$ScreenOnListener;

    .line 5617
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 5618
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5619
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5620
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurningOn(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 5606
    return-void

    .line 5624
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 5610
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public selectAnimationLw(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .locals 7
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "transit"    # I

    .prologue

    invoke-static/range {p0 .. p2}, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector;->selectStatusBarAnimation(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;I)Z

    move-result v0

    if-eqz v0, :cond_flyme_0

    invoke-static/range {p0 .. p2}, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector;->getStatusBarAnimation(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/WindowManagerPolicy$WindowState;I)I

    move-result v0

    return v0

    :cond_flyme_0

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v1, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2489
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v2, :cond_6

    .line 2490
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 2491
    .local v0, "isKeyguard":Z
    :goto_0
    if-eq p2, v3, :cond_0

    .line 2492
    const/4 v2, 0x4

    if-ne p2, v2, :cond_3

    .line 2493
    :cond_0
    if-eqz v0, :cond_2

    :goto_1
    return v1

    .line 2490
    .end local v0    # "isKeyguard":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isKeyguard":Z
    goto :goto_0

    .line 2493
    :cond_2
    const v1, 0x10a001e

    goto :goto_1

    .line 2494
    :cond_3
    if-eq p2, v5, :cond_4

    .line 2495
    if-ne p2, v6, :cond_f

    .line 2496
    :cond_4
    if-eqz v0, :cond_5

    :goto_2
    return v1

    :cond_5
    const v1, 0x10a001d

    goto :goto_2

    .line 2498
    .end local v0    # "isKeyguard":Z
    :cond_6
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-ne p1, v2, :cond_f

    .line 2499
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_7

    .line 2500
    return v4

    .line 2503
    :cond_7
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarOnBottom:Z

    if-eqz v2, :cond_b

    .line 2504
    if-eq p2, v3, :cond_8

    .line 2505
    const/4 v2, 0x4

    if-ne p2, v2, :cond_9

    .line 2506
    :cond_8
    const v1, 0x10a0018

    return v1

    .line 2507
    :cond_9
    if-eq p2, v5, :cond_a

    .line 2508
    if-ne p2, v6, :cond_f

    .line 2509
    :cond_a
    const v1, 0x10a0017

    return v1

    .line 2512
    :cond_b
    if-eq p2, v3, :cond_c

    .line 2513
    const/4 v2, 0x4

    if-ne p2, v2, :cond_d

    .line 2514
    :cond_c
    const v1, 0x10a001c

    return v1

    .line 2515
    :cond_d
    if-eq p2, v5, :cond_e

    .line 2516
    if-ne p2, v6, :cond_f

    .line 2517
    :cond_e
    const v1, 0x10a001b

    return v1

    .line 2522
    :cond_f
    const/4 v2, 0x5

    if-ne p2, v2, :cond_10

    .line 2523
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2525
    const v1, 0x10a0011

    return v1

    .line 2527
    :cond_10
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7e7

    if-ne v2, v3, :cond_11

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v2, :cond_11

    .line 2528
    if-ne p2, v5, :cond_11

    .line 2533
    return v1

    .line 2536
    :cond_11
    return v4
.end method

.method public selectRotationAnimationLw([I)V
    .locals 4
    .param p1, "anim"    # [I

    .prologue
    const v3, 0x10a004a

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2545
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v0, :cond_0

    .line 2546
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    packed-switch v0, :pswitch_data_0

    .line 2557
    aput v1, p1, v2

    aput v1, p1, v1

    .line 2540
    :goto_0
    return-void

    .line 2548
    :pswitch_0
    const v0, 0x10a004c

    aput v0, p1, v1

    .line 2549
    aput v3, p1, v2

    goto :goto_0

    .line 2552
    :pswitch_1
    const v0, 0x10a004b

    aput v0, p1, v1

    .line 2553
    aput v3, p1, v2

    goto :goto_0

    .line 2561
    :cond_0
    aput v1, p1, v2

    aput v1, p1, v1

    goto :goto_0

    .line 2546
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method sendCloseSystemWindows()V
    .locals 2

    .prologue
    .line 5811
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 5810
    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 5815
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    .line 5814
    return-void
.end method

.method setAttachedWindowFrames(Landroid/view/WindowManagerPolicy$WindowState;IILandroid/view/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "fl"    # I
    .param p3, "adjust"    # I
    .param p4, "attached"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p5, "insetDecors"    # Z
    .param p6, "pf"    # Landroid/graphics/Rect;
    .param p7, "df"    # Landroid/graphics/Rect;
    .param p8, "of"    # Landroid/graphics/Rect;
    .param p9, "cf"    # Landroid/graphics/Rect;
    .param p10, "vf"    # Landroid/graphics/Rect;

    .prologue
    .line 3764
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    if-le v0, v1, :cond_1

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_1

    .line 3772
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLeft:I

    iput v0, p10, Landroid/graphics/Rect;->left:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    iput v0, p8, Landroid/graphics/Rect;->left:I

    iput v0, p7, Landroid/graphics/Rect;->left:I

    .line 3773
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iput v0, p10, Landroid/graphics/Rect;->top:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    iput v0, p8, Landroid/graphics/Rect;->top:I

    iput v0, p7, Landroid/graphics/Rect;->top:I

    .line 3774
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockRight:I

    iput v0, p10, Landroid/graphics/Rect;->right:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    iput v0, p8, Landroid/graphics/Rect;->right:I

    iput v0, p7, Landroid/graphics/Rect;->right:I

    .line 3775
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockBottom:I

    iput v0, p10, Landroid/graphics/Rect;->bottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    iput v0, p8, Landroid/graphics/Rect;->bottom:I

    iput v0, p7, Landroid/graphics/Rect;->bottom:I

    .line 3817
    .end local p9    # "cf":Landroid/graphics/Rect;
    :goto_0
    and-int/lit16 v0, p2, 0x100

    if-nez v0, :cond_0

    .line 3818
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object p7

    .line 3817
    .end local p7    # "df":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p6, p7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3763
    return-void

    .line 3783
    .restart local p7    # "df":Landroid/graphics/Rect;
    .restart local p9    # "cf":Landroid/graphics/Rect;
    :cond_1
    const/16 v0, 0x10

    if-eq p3, v0, :cond_5

    .line 3788
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p2

    if-eqz v0, :cond_4

    .line 3789
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    .line 3788
    :goto_1
    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3810
    :cond_2
    :goto_2
    if-eqz p5, :cond_d

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    :goto_3
    invoke-virtual {p7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3811
    if-eqz p5, :cond_3

    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object p9

    .end local p9    # "cf":Landroid/graphics/Rect;
    :cond_3
    invoke-virtual {p8, p9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3812
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 3789
    .restart local p9    # "cf":Landroid/graphics/Rect;
    :cond_4
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_1

    .line 3797
    :cond_5
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3798
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3799
    iget v0, p9, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentLeft:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    .line 3800
    :cond_6
    iget v0, p9, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    if-ge v0, v1, :cond_7

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentTop:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    .line 3801
    :cond_7
    iget v0, p9, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    if-le v0, v1, :cond_8

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentRight:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    .line 3802
    :cond_8
    iget v0, p9, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVoiceContentBottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 3803
    :cond_9
    invoke-interface {p4}, Landroid/view/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    if-ge v0, v1, :cond_2

    .line 3804
    iget v0, p9, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    if-ge v0, v1, :cond_a

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentLeft:I

    iput v0, p9, Landroid/graphics/Rect;->left:I

    .line 3805
    :cond_a
    iget v0, p9, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    if-ge v0, v1, :cond_b

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentTop:I

    iput v0, p9, Landroid/graphics/Rect;->top:I

    .line 3806
    :cond_b
    iget v0, p9, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    if-le v0, v1, :cond_c

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentRight:I

    iput v0, p9, Landroid/graphics/Rect;->right:I

    .line 3807
    :cond_c
    iget v0, p9, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContentBottom:I

    iput v0, p9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :cond_d
    move-object v0, p9

    .line 3810
    goto/16 :goto_3
.end method

.method public setCurrentOrientationLw(I)V
    .locals 2
    .param p1, "newOrientation"    # I

    .prologue
    .line 6491
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6492
    :try_start_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq p1, v0, :cond_0

    .line 6493
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    .line 6494
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 6490
    return-void

    .line 6491
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setCurrentUserLw(I)V
    .locals 3
    .param p1, "newUserId"    # I

    .prologue
    const/4 v2, 0x0

    .line 6811
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    .line 6812
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_0

    .line 6813
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setCurrentUser(I)V

    .line 6815
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v1, :cond_1

    .line 6817
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBarService;->setCurrentUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6822
    :cond_1
    :goto_0
    invoke-virtual {p0, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 6810
    return-void

    .line 6818
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDisplayOverscan(Landroid/view/Display;IIII)V
    .locals 1
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1711
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    .line 1712
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanLeft:I

    .line 1713
    iput p3, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanTop:I

    .line 1714
    iput p4, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanRight:I

    .line 1715
    iput p5, p0, Lcom/android/server/policy/PhoneWindowManager;->mOverscanBottom:I

    .line 1710
    :cond_0
    return-void
.end method

.method setHdmiPlugged(Z)V
    .locals 3
    .param p1, "plugged"    # Z

    .prologue
    const/4 v2, 0x1

    .line 4773
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-eq v1, p1, :cond_0

    .line 4774
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    .line 4775
    invoke-virtual {p0, v2, v2}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(ZZ)V

    .line 4776
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4777
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4778
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4779
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4772
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public setInitialDisplaySize(Landroid/view/Display;III)V
    .locals 11
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    .prologue
    .line 1598
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    if-eqz v6, :cond_1

    .line 1599
    :cond_0
    return-void

    .line 1601
    :cond_1
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    .line 1603
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1605
    .local v3, "res":Landroid/content/res/Resources;
    if-le p2, p3, :cond_4

    .line 1606
    move v4, p3

    .line 1607
    .local v4, "shortSize":I
    move v0, p2

    .line 1608
    .local v0, "longSize":I
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    .line 1609
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    .line 1610
    const v6, 0x112003b

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1611
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    .line 1612
    const/4 v6, 0x3

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    .line 1632
    :goto_0
    const v6, 0x1050017

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1631
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    .line 1635
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    .line 1637
    const v8, 0x1050018

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1636
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    aput v8, v9, v10

    .line 1635
    aput v8, v6, v7

    .line 1638
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    .line 1640
    const v8, 0x1050019

    .line 1639
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotation:[I

    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    aput v8, v9, v10

    .line 1638
    aput v8, v6, v7

    .line 1643
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    .line 1647
    const v8, 0x105001a

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1646
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    aput v8, v9, v10

    .line 1645
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    aput v8, v9, v10

    .line 1644
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotation:[I

    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    aput v8, v9, v10

    .line 1643
    aput v8, v6, v7

    .line 1650
    mul-int/lit16 v6, v4, 0xa0

    div-int v5, v6, p4

    .line 1651
    .local v5, "shortSizeDp":I
    mul-int/lit16 v6, v0, 0xa0

    div-int v1, v6, p4

    .line 1654
    .local v1, "longSizeDp":I
    if-eq p2, p3, :cond_6

    const/16 v6, 0x258

    if-ge v5, v6, :cond_6

    const/4 v6, 0x1

    :goto_1
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    .line 1656
    const v6, 0x1120068

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    .line 1659
    const-string/jumbo v6, "qemu.hw.mainkeys"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1660
    .local v2, "navBarOverride":Ljava/lang/String;
    const-string/jumbo v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1661
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    .line 1668
    :cond_2
    :goto_2
    const-string/jumbo v6, "portrait"

    const-string/jumbo v7, "persist.demo.hdmirotation"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1669
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    .line 1673
    :goto_3
    const-string/jumbo v6, "persist.demo.hdmirotationlock"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    .line 1677
    const-string/jumbo v6, "portrait"

    const-string/jumbo v7, "persist.demo.remoterotation"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1678
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    .line 1683
    :goto_4
    const-string/jumbo v6, "persist.demo.rotationlock"

    const/4 v7, 0x0

    .line 1682
    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotationLock:Z

    .line 1687
    const/16 v6, 0x3c0

    if-lt v1, v6, :cond_b

    const/16 v6, 0x2d0

    if-lt v5, v6, :cond_b

    .line 1688
    const v6, 0x1120082

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 1687
    if-eqz v6, :cond_b

    .line 1692
    const-string/jumbo v6, "true"

    const-string/jumbo v7, "config.override_forced_orient"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x0

    .line 1687
    :goto_5
    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    .line 1595
    return-void

    .line 1614
    .end local v1    # "longSizeDp":I
    .end local v2    # "navBarOverride":Ljava/lang/String;
    .end local v5    # "shortSizeDp":I
    :cond_3
    const/4 v6, 0x3

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    .line 1615
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    goto/16 :goto_0

    .line 1618
    .end local v0    # "longSize":I
    .end local v4    # "shortSize":I
    :cond_4
    move v4, p2

    .line 1619
    .restart local v4    # "shortSize":I
    move v0, p3

    .line 1620
    .restart local v0    # "longSize":I
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    .line 1621
    const/4 v6, 0x2

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    .line 1622
    const v6, 0x112003b

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1623
    const/4 v6, 0x3

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    .line 1624
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_0

    .line 1626
    :cond_5
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    .line 1627
    const/4 v6, 0x3

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    goto/16 :goto_0

    .line 1654
    .restart local v1    # "longSizeDp":I
    .restart local v5    # "shortSizeDp":I
    :cond_6
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 1662
    .restart local v2    # "navBarOverride":Ljava/lang/String;
    :cond_7
    const-string/jumbo v6, "0"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1663
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    goto/16 :goto_2

    .line 1671
    :cond_8
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    goto/16 :goto_3

    .line 1680
    :cond_9
    iget v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    goto :goto_4

    .line 1692
    :cond_a
    const/4 v6, 0x1

    goto :goto_5

    .line 1687
    :cond_b
    const/4 v6, 0x0

    goto :goto_5
.end method

.method public setLastInputMethodWindowLw(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "ime"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "target"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 6800
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 6801
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 6799
    return-void
.end method

.method public setRotationLw(I)V
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 6003
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V

    .line 6002
    return-void
.end method

.method public setSafeMode(Z)V
    .locals 3
    .param p1, "safeMode"    # Z

    .prologue
    .line 6047
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    .line 6048
    if-eqz p1, :cond_0

    .line 6049
    const/16 v0, 0x2711

    .line 6048
    :goto_0
    const/4 v1, 0x0

    .line 6050
    const/4 v2, 0x1

    .line 6048
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Landroid/view/WindowManagerPolicy$WindowState;IZ)Z

    .line 6046
    return-void

    .line 6050
    :cond_0
    const/16 v0, 0x2710

    goto :goto_0
.end method

.method public setUserRotationMode(II)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "rot"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x2

    .line 6025
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 6028
    .local v0, "res":Landroid/content/ContentResolver;
    if-ne p1, v2, :cond_0

    .line 6030
    const-string/jumbo v1, "user_rotation"

    .line 6029
    invoke-static {v0, v1, p2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 6034
    const-string/jumbo v1, "accelerometer_rotation"

    .line 6035
    const/4 v2, 0x0

    .line 6033
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 6024
    :goto_0
    return-void

    .line 6039
    :cond_0
    const-string/jumbo v1, "accelerometer_rotation"

    .line 6038
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;
    .param p2, "always"    # Z

    .prologue

    invoke-static/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector;->showBootMessage(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_flyme_0

    return-void

    :cond_flyme_0

    .line 6130
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$22;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$22;-><init>(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6129
    return-void
.end method

.method public showGlobalActions()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 1210
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1211
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1209
    return-void
.end method

.method showGlobalActionsInternal()V
    .locals 5

    .prologue

    invoke-static/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector;->showFlymeGlobalActions(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_flyme_0

    return-void

    :cond_flyme_0

    .line 1215
    const-string/jumbo v1, "globalactions"

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    .line 1216
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    if-nez v1, :cond_0

    .line 1217
    new-instance v1, Lcom/android/server/policy/GlobalActions;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v1, v2, v3}, Lcom/android/server/policy/GlobalActions;-><init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    .line 1219
    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    .line 1220
    .local v0, "keyguardShowing":Z
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/policy/GlobalActions;->showDialog(ZZ)V

    .line 1221
    if-eqz v0, :cond_1

    .line 1224
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 1214
    :cond_1
    return-void
.end method

.method public showRecentApps()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    .line 3239
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3240
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3238
    return-void
.end method

.method startDockOrHome(ZZ)V
    .locals 4
    .param p1, "fromHomeKey"    # Z
    .param p2, "awakenFromDreams"    # Z

    .prologue
    .line 6405
    if-eqz p2, :cond_0

    .line 6406
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    .line 6409
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v0

    .line 6410
    .local v0, "dock":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 6412
    if-eqz p1, :cond_1

    .line 6413
    :try_start_0
    const-string/jumbo v3, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6415
    :cond_1
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6416
    return-void

    .line 6417
    :catch_0
    move-exception v1

    .line 6423
    :cond_2
    if-eqz p1, :cond_3

    .line 6424
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 6425
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6430
    :goto_0
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6404
    return-void

    .line 6427
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    .restart local v2    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 1
    .param p1, "startTime"    # J
    .param p3, "fadeoutDuration"    # J

    .prologue
    .line 5804
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 5806
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->startKeyguardExitAnimation(JJ)V

    .line 5803
    :cond_0
    return-void
.end method

.method public startedGoingToSleep(I)V
    .locals 1
    .param p1, "why"    # I

    .prologue
    .line 5492
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 5493
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedGoingToSleep(I)V

    .line 5490
    :cond_0
    return-void
.end method

.method public startedWakingUp()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5520
    const v0, 0x11170

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 5527
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5528
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    .line 5530
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 5531
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 5532
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 5535
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    .line 5536
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedWakingUp()V

    .line 5519
    :cond_0
    return-void

    .line 5527
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public subWindowTypeToLayerLw(I)I
    .locals 3
    .param p1, "type"    # I

    .prologue
    .line 2168
    packed-switch p1, :pswitch_data_0

    .line 2181
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown sub-window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    const/4 v0, 0x0

    return v0

    .line 2171
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 2173
    :pswitch_1
    const/4 v0, -0x2

    return v0

    .line 2175
    :pswitch_2
    const/4 v0, -0x1

    return v0

    .line 2177
    :pswitch_3
    const/4 v0, 0x2

    return v0

    .line 2179
    :pswitch_4
    const/4 v0, 0x3

    return v0

    .line 2168
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public systemBooted()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6101
    const/4 v0, 0x0

    .line 6102
    .local v0, "bindKeyguardNow":Z
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 6105
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 6106
    const/4 v0, 0x1

    :goto_0
    monitor-exit v2

    .line 6113
    if-eqz v0, :cond_0

    .line 6114
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    .line 6115
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    .line 6117
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6118
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    .line 6120
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp()V

    .line 6121
    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOn(Landroid/view/WindowManagerPolicy$ScreenOnListener;)V

    .line 6122
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOn()V

    .line 6100
    return-void

    .line 6110
    :cond_1
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferBindKeyguard:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 6102
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 6117
    :catchall_1
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public systemReady()V
    .locals 4

    .prologue
    .line 6068
    new-instance v1, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    .line 6069
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onSystemReady()V

    .line 6071
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readCameraLensCoverState()V

    .line 6072
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateUiMode()V

    .line 6074
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 6075
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 6076
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    .line 6077
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$21;

    invoke-direct {v3, p0}, Lcom/android/server/policy/PhoneWindowManager$21;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 6084
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferBindKeyguard:Z

    .line 6085
    .local v0, "bindKeyguardNow":Z
    if-eqz v0, :cond_0

    .line 6087
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeferBindKeyguard:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 6091
    if-eqz v0, :cond_1

    .line 6092
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    .line 6093
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    .line 6095
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-virtual {v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->systemReady()V

    .line 6067
    return-void

    .line 6074
    .end local v0    # "bindKeyguardNow":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method updateOrientationListenerLp()V
    .locals 2

    .prologue
    .line 860
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->canDetectOrientation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 862
    return-void

    .line 871
    :cond_0
    const/4 v0, 0x1

    .line 874
    .local v0, "disable":Z
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v1, :cond_1

    .line 875
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    .line 874
    if-eqz v1, :cond_1

    .line 875
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    .line 874
    if-eqz v1, :cond_1

    .line 876
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->needSensorRunningLp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 877
    const/4 v0, 0x0

    .line 879
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-nez v1, :cond_1

    .line 880
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->enable()V

    .line 882
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 887
    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-eqz v1, :cond_2

    .line 888
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->disable()V

    .line 890
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    .line 859
    :cond_2
    return-void
.end method

.method updateRotation(Z)V
    .locals 3
    .param p1, "alwaysSendConfiguration"    # Z

    .prologue
    .line 6331
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6328
    :goto_0
    return-void

    .line 6332
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method updateRotation(ZZ)V
    .locals 2
    .param p1, "alwaysSendConfiguration"    # Z
    .param p2, "forceRelayout"    # Z

    .prologue
    .line 6340
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, p2}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6337
    :goto_0
    return-void

    .line 6341
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public updateSettings()V
    .locals 14

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x1

    .line 1720
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1721
    .local v3, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 1722
    .local v4, "updateRotation":Z
    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1724
    :try_start_0
    const-string/jumbo v11, "end_button_behavior"

    .line 1725
    const/4 v12, 0x2

    .line 1726
    const/4 v13, -0x2

    .line 1723
    invoke-static {v3, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    iput v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    .line 1728
    const-string/jumbo v11, "incall_power_button_behavior"

    .line 1729
    const/4 v12, 0x1

    .line 1730
    const/4 v13, -0x2

    .line 1727
    invoke-static {v3, v11, v12, v13}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    iput v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    .line 1734
    const-string/jumbo v11, "wake_gesture_enabled"

    const/4 v12, 0x0

    .line 1735
    const/4 v13, -0x2

    .line 1733
    invoke-static {v3, v11, v12, v13}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    if-eqz v11, :cond_8

    const/4 v7, 0x1

    .line 1736
    .local v7, "wakeGestureEnabledSetting":Z
    :goto_0
    iget-boolean v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    if-eq v11, v7, :cond_0

    .line 1737
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    .line 1738
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    .line 1743
    :cond_0
    const-string/jumbo v11, "user_rotation"

    const/4 v12, 0x0

    .line 1744
    const/4 v13, -0x2

    .line 1742
    invoke-static {v3, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    .line 1745
    .local v5, "userRotation":I
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    if-eq v11, v5, :cond_1

    .line 1746
    iput v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    .line 1747
    const/4 v4, 0x1

    .line 1750
    :cond_1
    const-string/jumbo v11, "accelerometer_rotation"

    const/4 v12, 0x0

    const/4 v13, -0x2

    .line 1749
    invoke-static {v3, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    if-eqz v11, :cond_9

    .line 1751
    const/4 v6, 0x0

    .line 1753
    .local v6, "userRotationMode":I
    :goto_1
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    if-eq v11, v6, :cond_2

    .line 1754
    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    .line 1755
    const/4 v4, 0x1

    .line 1756
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 1759
    :cond_2
    iget-boolean v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    if-eqz v11, :cond_4

    .line 1761
    const-string/jumbo v11, "pointer_location"

    const/4 v12, 0x0

    const/4 v13, -0x2

    .line 1760
    invoke-static {v3, v11, v12, v13}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 1762
    .local v2, "pointerLocation":I
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationMode:I

    if-eq v11, v2, :cond_4

    .line 1763
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationMode:I

    .line 1764
    iget-object v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_3

    move v8, v9

    :cond_3
    invoke-virtual {v11, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1770
    .end local v2    # "pointerLocation":I
    :cond_4
    const-string/jumbo v8, "screen_off_timeout"

    const/4 v11, 0x0

    const/4 v12, -0x2

    .line 1769
    invoke-static {v3, v8, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    iput v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    .line 1772
    const-string/jumbo v8, "default_input_method"

    const/4 v11, -0x2

    .line 1771
    invoke-static {v3, v8, v11}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1773
    .local v1, "imId":Ljava/lang/String;
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_a

    const/4 v0, 0x1

    .line 1774
    .local v0, "hasSoftInput":Z
    :goto_2
    iget-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-eq v8, v0, :cond_5

    .line 1775
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    .line 1776
    const/4 v4, 0x1

    .line 1778
    :cond_5
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    if-eqz v8, :cond_6

    .line 1779
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v8, v11}, Lcom/android/server/policy/ImmersiveModeConfirmation;->loadSetting(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit v10

    .line 1782
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 1783
    :try_start_1
    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/server/policy/PolicyControl;->reloadFromSetting(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v10

    .line 1785
    if-eqz v4, :cond_7

    .line 1786
    invoke-virtual {p0, v9}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 1719
    :cond_7
    return-void

    .line 1733
    .end local v0    # "hasSoftInput":Z
    .end local v1    # "imId":Ljava/lang/String;
    .end local v5    # "userRotation":I
    .end local v6    # "userRotationMode":I
    .end local v7    # "wakeGestureEnabledSetting":Z
    :cond_8
    const/4 v7, 0x0

    .restart local v7    # "wakeGestureEnabledSetting":Z
    goto/16 :goto_0

    .line 1752
    .restart local v5    # "userRotation":I
    :cond_9
    const/4 v6, 0x1

    .restart local v6    # "userRotationMode":I
    goto :goto_1

    .line 1773
    .restart local v1    # "imId":Ljava/lang/String;
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "hasSoftInput":Z
    goto :goto_2

    .line 1722
    .end local v0    # "hasSoftInput":Z
    .end local v1    # "imId":Ljava/lang/String;
    .end local v5    # "userRotation":I
    .end local v6    # "userRotationMode":I
    .end local v7    # "wakeGestureEnabledSetting":Z
    :catchall_0
    move-exception v8

    monitor-exit v10

    throw v8

    .line 1782
    .restart local v0    # "hasSoftInput":Z
    .restart local v1    # "imId":Ljava/lang/String;
    .restart local v5    # "userRotation":I
    .restart local v6    # "userRotationMode":I
    .restart local v7    # "wakeGestureEnabledSetting":Z
    :catchall_1
    move-exception v8

    monitor-exit v10

    throw v8
.end method

.method updateUiMode()V
    .locals 2

    .prologue
    .line 6318
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    if-nez v1, :cond_0

    .line 6320
    const-string/jumbo v1, "uimode"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 6319
    invoke-static {v1}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    .line 6323
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    invoke-interface {v1}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6317
    :goto_0
    return-void

    .line 6324
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public userActivity()V
    .locals 6

    .prologue
    .line 6211
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v1

    .line 6212
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz v0, :cond_0

    .line 6214
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6215
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 6199
    return-void

    .line 6211
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public validateRotationAnimationLw(IIZ)Z
    .locals 4
    .param p1, "exitAnimId"    # I
    .param p2, "enterAnimId"    # I
    .param p3, "forceDefault"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2568
    packed-switch p1, :pswitch_data_0

    .line 2579
    return v1

    .line 2572
    :pswitch_0
    if-eqz p3, :cond_0

    .line 2573
    return v2

    .line 2575
    :cond_0
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 2576
    .local v0, "anim":[I
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->selectRotationAnimationLw([I)V

    .line 2577
    aget v3, v0, v2

    if-ne p1, v3, :cond_1

    aget v3, v0, v1

    if-ne p2, v3, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    .line 2568
    :pswitch_data_0
    .packed-switch 0x10a004b
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public windowTypeToLayerLw(I)I
    .locals 4
    .param p1, "type"    # I

    .prologue

    invoke-static/range {p1 .. p1}, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector;->windowTypeToLayerLw(I)I

    move-result v0

    if-eqz v0, :cond_flyme_0

    return v0

    :cond_flyme_0

    const/4 v3, 0x2

    .line 2073
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x63

    if-gt p1, v0, :cond_0

    .line 2074
    return v3

    .line 2076
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2161
    :pswitch_0
    const-string/jumbo v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown window type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    return v3

    .line 2078
    :pswitch_1
    return v3

    .line 2081
    :pswitch_2
    return v3

    .line 2083
    :pswitch_3
    const/4 v0, 0x3

    return v0

    .line 2086
    :pswitch_4
    const/4 v0, 0x4

    return v0

    .line 2089
    :pswitch_5
    const/4 v0, 0x5

    return v0

    .line 2091
    :pswitch_6
    const/4 v0, 0x6

    return v0

    .line 2093
    :pswitch_7
    const/4 v0, 0x7

    return v0

    .line 2096
    :pswitch_8
    const/16 v0, 0x8

    return v0

    .line 2099
    :pswitch_9
    const/16 v0, 0x9

    return v0

    .line 2102
    :pswitch_a
    const/16 v0, 0xa

    return v0

    .line 2105
    :pswitch_b
    const/16 v0, 0xb

    return v0

    .line 2108
    :pswitch_c
    const/16 v0, 0xc

    return v0

    .line 2111
    :pswitch_d
    const/16 v0, 0xd

    return v0

    .line 2114
    :pswitch_e
    const/16 v0, 0xe

    return v0

    .line 2116
    :pswitch_f
    const/16 v0, 0xf

    return v0

    .line 2118
    :pswitch_10
    const/16 v0, 0x10

    return v0

    .line 2120
    :pswitch_11
    const/16 v0, 0x11

    return v0

    .line 2122
    :pswitch_12
    const/16 v0, 0x12

    return v0

    .line 2126
    :pswitch_13
    const/16 v0, 0x13

    return v0

    .line 2130
    :pswitch_14
    const/16 v0, 0x14

    return v0

    .line 2133
    :pswitch_15
    const/16 v0, 0x15

    return v0

    .line 2136
    :pswitch_16
    const/16 v0, 0x16

    return v0

    .line 2139
    :pswitch_17
    const/16 v0, 0x17

    return v0

    .line 2142
    :pswitch_18
    const/16 v0, 0x18

    return v0

    .line 2145
    :pswitch_19
    const/16 v0, 0x19

    return v0

    .line 2149
    :pswitch_1a
    const/16 v0, 0x1a

    return v0

    .line 2152
    :pswitch_1b
    const/16 v0, 0x1b

    return v0

    .line 2154
    :pswitch_1c
    const/16 v0, 0x1c

    return v0

    .line 2156
    :pswitch_1d
    const/16 v0, 0x1d

    return v0

    .line 2159
    :pswitch_1e
    const/16 v0, 0x1e

    return v0

    .line 2076
    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_10
        :pswitch_4
        :pswitch_3
        :pswitch_b
        :pswitch_0
        :pswitch_8
        :pswitch_14
        :pswitch_9
        :pswitch_7
        :pswitch_12
        :pswitch_17
        :pswitch_c
        :pswitch_d
        :pswitch_2
        :pswitch_11
        :pswitch_1c
        :pswitch_1a
        :pswitch_f
        :pswitch_1e
        :pswitch_15
        :pswitch_13
        :pswitch_1d
        :pswitch_6
        :pswitch_a
        :pswitch_16
        :pswitch_0
        :pswitch_19
        :pswitch_18
        :pswitch_0
        :pswitch_e
        :pswitch_1
        :pswitch_5
        :pswitch_1b
        :pswitch_4
    .end packed-switch
.end method

.method flymeInvokeMethodRequestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 0
    .param p1, "swipeTarget"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 7136
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->requestTransientBars(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 7135
    return-void
.end method

.method flymeInvokeMethodUpdateLightStatusBarLw(I)I
    .locals 1
    .param p1, "vis"    # I

    .prologue
    .line 7140
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->updateLightStatusBarLw(I)I

    move-result v0

    return v0
.end method

.method flymeInvokeMethodUpdateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I
    .locals 1
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "oldVis"    # I
    .param p3, "vis"    # I

    .prologue
    .line 7144
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemBarsLw(Landroid/view/WindowManagerPolicy$WindowState;II)I

    move-result v0

    return v0
.end method

.method getFlymeStatusBarService()Lmeizu/statusbar/IFlymeStatusBarService;
    .locals 2

    .prologue
    .line 7125
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v1

    .line 7126
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeStatusBarService:Lmeizu/statusbar/IFlymeStatusBarService;

    if-nez v0, :cond_0

    .line 7128
    const-string/jumbo v0, "flyme_statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 7127
    invoke-static {v0}, Lmeizu/statusbar/IFlymeStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/statusbar/IFlymeStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeStatusBarService:Lmeizu/statusbar/IFlymeStatusBarService;

    .line 7130
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFlymeStatusBarService:Lmeizu/statusbar/IFlymeStatusBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 7125
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isShowingAndNotOccluded()Z
    .locals 1

    .prologue
    .line 5797
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    return v0
.end method

.method public shouldWindowAffectDarkStatusBarIcon(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 5
    .param p1, "win"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v4, 0x0

    .line 7111
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    if-gt v2, v3, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeight:I

    if-lt v2, v3, :cond_1

    .line 7112
    :cond_0
    return v4

    .line 7114
    :cond_1
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-le v2, v3, :cond_3

    const/4 v0, 0x1

    .line 7115
    .local v0, "hasLeftPadding":Z
    :goto_0
    if-eqz v0, :cond_4

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-ltz v2, :cond_4

    const/4 v0, 0x1

    .line 7116
    :goto_1
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_5

    const/4 v1, 0x1

    .line 7117
    .local v1, "hasRightPadding":Z
    :goto_2
    if-eqz v1, :cond_6

    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->right:I

    const/16 v3, 0xbb8

    if-ge v2, v3, :cond_6

    const/4 v1, 0x1

    .line 7118
    :goto_3
    if-nez v0, :cond_2

    if-eqz v1, :cond_7

    .line 7119
    :cond_2
    return v4

    .line 7114
    .end local v0    # "hasLeftPadding":Z
    .end local v1    # "hasRightPadding":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "hasLeftPadding":Z
    goto :goto_0

    .line 7115
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 7116
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "hasRightPadding":Z
    goto :goto_2

    .line 7117
    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    .line 7121
    :cond_7
    const/4 v2, 0x1

    return v2
.end method
