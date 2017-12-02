.class public abstract Landroid/view/IWindowManager$Stub;
.super Landroid/os/Binder;
.source "IWindowManager.java"

# interfaces
.implements Landroid/view/IWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowManager"

.field static final TRANSACTION_addAppToken:I = 0x15

.field static final TRANSACTION_addWindowToken:I = 0x13

.field static final TRANSACTION_cancelTaskThumbnailTransition:I = 0x45

.field static final TRANSACTION_cancelTaskWindowTransition:I = 0x44

.field static final TRANSACTION_clearForcedDisplayDensityForUser:I = 0xd

.field static final TRANSACTION_clearForcedDisplaySize:I = 0x9

.field static final TRANSACTION_clearWindowContentFrameStats:I = 0x58

.field static final TRANSACTION_closeSystemDialogs:I = 0x3a

.field static final TRANSACTION_createWallpaperInputConsumer:I = 0x62

.field static final TRANSACTION_disableKeyguard:I = 0x32

.field static final TRANSACTION_dismissKeyguard:I = 0x38

.field static final TRANSACTION_enableScreenIfNeeded:I = 0x57

.field static final TRANSACTION_endProlongedAnimations:I = 0x2c

.field static final TRANSACTION_executeAppTransition:I = 0x24

.field static final TRANSACTION_exitKeyguardSecurely:I = 0x34

.field static final TRANSACTION_freezeRotation:I = 0x4b

.field static final TRANSACTION_getAnimationScale:I = 0x3b

.field static final TRANSACTION_getAnimationScales:I = 0x3c

.field static final TRANSACTION_getAppOrientation:I = 0x18

.field static final TRANSACTION_getBaseDisplayDensity:I = 0xb

.field static final TRANSACTION_getBaseDisplaySize:I = 0x7

.field static final TRANSACTION_getBoundsForNewConfiguration:I = 0x2f

.field static final TRANSACTION_getCurrentAnimatorScale:I = 0x3f

.field static final TRANSACTION_getDockedStackSide:I = 0x5a

.field static final TRANSACTION_getInitialDisplayDensity:I = 0xa

.field static final TRANSACTION_getInitialDisplaySize:I = 0x6

.field static final TRANSACTION_getPendingAppTransition:I = 0x1b

.field static final TRANSACTION_getPreferredOptionsPanelGravity:I = 0x4a

.field static final TRANSACTION_getRotation:I = 0x47

.field static final TRANSACTION_getStableInsets:I = 0x60

.field static final TRANSACTION_getWindowContentFrameStats:I = 0x59

.field static final TRANSACTION_hasNavigationBar:I = 0x54

.field static final TRANSACTION_inKeyguardRestrictedInputMode:I = 0x37

.field static final TRANSACTION_inputMethodClientHasFocus:I = 0x5

.field static final TRANSACTION_isKeyguardLocked:I = 0x35

.field static final TRANSACTION_isKeyguardSecure:I = 0x36

.field static final TRANSACTION_isRotationFrozen:I = 0x4d

.field static final TRANSACTION_isSafeModeEnabled:I = 0x56

.field static final TRANSACTION_isViewServerRunning:I = 0x3

.field static final TRANSACTION_keyguardGoingAway:I = 0x39

.field static final TRANSACTION_lockNow:I = 0x55

.field static final TRANSACTION_notifyAppResumed:I = 0x27

.field static final TRANSACTION_notifyAppStopped:I = 0x28

.field static final TRANSACTION_openSession:I = 0x4

.field static final TRANSACTION_overridePendingAppTransition:I = 0x1c

.field static final TRANSACTION_overridePendingAppTransitionAspectScaledThumb:I = 0x20

.field static final TRANSACTION_overridePendingAppTransitionClipReveal:I = 0x1e

.field static final TRANSACTION_overridePendingAppTransitionInPlace:I = 0x22

.field static final TRANSACTION_overridePendingAppTransitionMultiThumb:I = 0x21

.field static final TRANSACTION_overridePendingAppTransitionMultiThumbFuture:I = 0x23

.field static final TRANSACTION_overridePendingAppTransitionScaleUp:I = 0x1d

.field static final TRANSACTION_overridePendingAppTransitionThumb:I = 0x1f

.field static final TRANSACTION_pauseKeyDispatching:I = 0x10

.field static final TRANSACTION_prepareAppTransition:I = 0x1a

.field static final TRANSACTION_reenableKeyguard:I = 0x33

.field static final TRANSACTION_registerDockedStackListener:I = 0x5d

.field static final TRANSACTION_registerShortcutKey:I = 0x61

.field static final TRANSACTION_removeAppToken:I = 0x2b

.field static final TRANSACTION_removeRotationWatcher:I = 0x49

.field static final TRANSACTION_removeWallpaperInputConsumer:I = 0x63

.field static final TRANSACTION_removeWindowToken:I = 0x14

.field static final TRANSACTION_requestAppKeyboardShortcuts:I = 0x5f

.field static final TRANSACTION_requestAssistScreenshot:I = 0x4f

.field static final TRANSACTION_resumeKeyDispatching:I = 0x11

.field static final TRANSACTION_screenshotApplications:I = 0x50

.field static final TRANSACTION_screenshotWallpaper:I = 0x4e

.field static final TRANSACTION_setAnimationScale:I = 0x3d

.field static final TRANSACTION_setAnimationScales:I = 0x3e

.field static final TRANSACTION_setAppOrientation:I = 0x17

.field static final TRANSACTION_setAppStartingWindow:I = 0x25

.field static final TRANSACTION_setAppTask:I = 0x16

.field static final TRANSACTION_setAppVisibility:I = 0x26

.field static final TRANSACTION_setDockedStackDividerTouchRegion:I = 0x5c

.field static final TRANSACTION_setDockedStackResizing:I = 0x5b

.field static final TRANSACTION_setEventDispatching:I = 0x12

.field static final TRANSACTION_setFocusedApp:I = 0x19

.field static final TRANSACTION_setForcedDisplayDensityForUser:I = 0xc

.field static final TRANSACTION_setForcedDisplayScalingMode:I = 0xe

.field static final TRANSACTION_setForcedDisplaySize:I = 0x8

.field static final TRANSACTION_setInTouchMode:I = 0x40

.field static final TRANSACTION_setNewConfiguration:I = 0x2e

.field static final TRANSACTION_setOverscan:I = 0xf

.field static final TRANSACTION_setRecentsVisibility:I = 0x52

.field static final TRANSACTION_setResizeDimLayer:I = 0x5e

.field static final TRANSACTION_setScreenCaptureDisabled:I = 0x43

.field static final TRANSACTION_setStrictModeVisualIndicatorPreference:I = 0x42

.field static final TRANSACTION_setTvPipVisibility:I = 0x53

.field static final TRANSACTION_showStrictModeViolation:I = 0x41

.field static final TRANSACTION_startAppFreezingScreen:I = 0x29

.field static final TRANSACTION_startFreezingScreen:I = 0x30

.field static final TRANSACTION_startViewServer:I = 0x1

.field static final TRANSACTION_statusBarVisibilityChanged:I = 0x51

.field static final TRANSACTION_stopAppFreezingScreen:I = 0x2a

.field static final TRANSACTION_stopFreezingScreen:I = 0x31

.field static final TRANSACTION_stopViewServer:I = 0x2

.field static final TRANSACTION_thawRotation:I = 0x4c

.field static final TRANSACTION_updateOrientationFromAppTokens:I = 0x2d

.field static final TRANSACTION_updateRotation:I = 0x46

.field static final TRANSACTION_watchRotation:I = 0x48


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.view.IWindowManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "android.view.IWindowManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IWindowManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/view/IWindowManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/IWindowManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 104
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 1234
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 47
    :sswitch_0
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v6, 0x1

    return v6

    .line 52
    :sswitch_1
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 55
    .local v7, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->startViewServer(I)Z

    move-result v101

    .line 56
    .local v101, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v101, :cond_0

    const/4 v6, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    const/4 v6, 0x1

    return v6

    .line 57
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 62
    .end local v7    # "_arg0":I
    .end local v101    # "_result":Z
    :sswitch_2
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->stopViewServer()Z

    move-result v101

    .line 64
    .restart local v101    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v101, :cond_1

    const/4 v6, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/4 v6, 0x1

    return v6

    .line 65
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 70
    .end local v101    # "_result":Z
    :sswitch_3
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isViewServerRunning()Z

    move-result v101

    .line 72
    .restart local v101    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v101, :cond_2

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    const/4 v6, 0x1

    return v6

    .line 73
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 78
    .end local v101    # "_result":Z
    :sswitch_4
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSessionCallback;

    move-result-object v73

    .line 82
    .local v73, "_arg0":Landroid/view/IWindowSessionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v87

    .line 84
    .local v87, "_arg1":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v91

    .line 85
    .local v91, "_arg2":Lcom/android/internal/view/IInputContext;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move-object/from16 v2, v87

    move-object/from16 v3, v91

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->openSession(Landroid/view/IWindowSessionCallback;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    move-result-object v99

    .line 86
    .local v99, "_result":Landroid/view/IWindowSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v99, :cond_3

    invoke-interface/range {v99 .. v99}, Landroid/view/IWindowSession;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 88
    const/4 v6, 0x1

    return v6

    .line 87
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 92
    .end local v73    # "_arg0":Landroid/view/IWindowSessionCallback;
    .end local v87    # "_arg1":Lcom/android/internal/view/IInputMethodClient;
    .end local v91    # "_arg2":Lcom/android/internal/view/IInputContext;
    .end local v99    # "_result":Landroid/view/IWindowSession;
    :sswitch_5
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v77

    .line 95
    .local v77, "_arg0":Lcom/android/internal/view/IInputMethodClient;
    move-object/from16 v0, p0

    move-object/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v101

    .line 96
    .restart local v101    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v101, :cond_4

    const/4 v6, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    const/4 v6, 0x1

    return v6

    .line 97
    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    .line 102
    .end local v77    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v101    # "_result":Z
    :sswitch_6
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 106
    .restart local v7    # "_arg0":I
    new-instance v83, Landroid/graphics/Point;

    invoke-direct/range {v83 .. v83}, Landroid/graphics/Point;-><init>()V

    .line 107
    .local v83, "_arg1":Landroid/graphics/Point;
    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Landroid/view/IWindowManager$Stub;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v83, :cond_5

    .line 110
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/4 v6, 0x1

    move-object/from16 v0, v83

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 116
    :goto_5
    const/4 v6, 0x1

    return v6

    .line 114
    :cond_5
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 120
    .end local v7    # "_arg0":I
    .end local v83    # "_arg1":Landroid/graphics/Point;
    :sswitch_7
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 124
    .restart local v7    # "_arg0":I
    new-instance v83, Landroid/graphics/Point;

    invoke-direct/range {v83 .. v83}, Landroid/graphics/Point;-><init>()V

    .line 125
    .restart local v83    # "_arg1":Landroid/graphics/Point;
    move-object/from16 v0, p0

    move-object/from16 v1, v83

    invoke-virtual {v0, v7, v1}, Landroid/view/IWindowManager$Stub;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v83, :cond_6

    .line 128
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    const/4 v6, 0x1

    move-object/from16 v0, v83

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 134
    :goto_6
    const/4 v6, 0x1

    return v6

    .line 132
    :cond_6
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 138
    .end local v7    # "_arg0":I
    .end local v83    # "_arg1":Landroid/graphics/Point;
    :sswitch_8
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 142
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 144
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 145
    .local v9, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Landroid/view/IWindowManager$Stub;->setForcedDisplaySize(III)V

    .line 146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    const/4 v6, 0x1

    return v6

    .line 151
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    :sswitch_9
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 154
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->clearForcedDisplaySize(I)V

    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    const/4 v6, 0x1

    return v6

    .line 160
    .end local v7    # "_arg0":I
    :sswitch_a
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 163
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->getInitialDisplayDensity(I)I

    move-result v95

    .line 164
    .local v95, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    move-object/from16 v0, p3

    move/from16 v1, v95

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    const/4 v6, 0x1

    return v6

    .line 170
    .end local v7    # "_arg0":I
    .end local v95    # "_result":I
    :sswitch_b
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 173
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->getBaseDisplayDensity(I)I

    move-result v95

    .line 174
    .restart local v95    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    move-object/from16 v0, p3

    move/from16 v1, v95

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    const/4 v6, 0x1

    return v6

    .line 180
    .end local v7    # "_arg0":I
    .end local v95    # "_result":I
    :sswitch_c
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 184
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 186
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 187
    .restart local v9    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9}, Landroid/view/IWindowManager$Stub;->setForcedDisplayDensityForUser(III)V

    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    const/4 v6, 0x1

    return v6

    .line 193
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    :sswitch_d
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 197
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 198
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/view/IWindowManager$Stub;->clearForcedDisplayDensityForUser(II)V

    .line 199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    const/4 v6, 0x1

    return v6

    .line 204
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_e
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 208
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 209
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/view/IWindowManager$Stub;->setForcedDisplayScalingMode(II)V

    .line 210
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    const/4 v6, 0x1

    return v6

    .line 215
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_f
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 219
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 221
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 223
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 225
    .local v10, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, "_arg4":I
    move-object/from16 v6, p0

    .line 226
    invoke-virtual/range {v6 .. v11}, Landroid/view/IWindowManager$Stub;->setOverscan(IIIII)V

    .line 227
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    const/4 v6, 0x1

    return v6

    .line 232
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    :sswitch_10
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 235
    .local v32, "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->pauseKeyDispatching(Landroid/os/IBinder;)V

    .line 236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    const/4 v6, 0x1

    return v6

    .line 241
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_11
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 244
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->resumeKeyDispatching(Landroid/os/IBinder;)V

    .line 245
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    const/4 v6, 0x1

    return v6

    .line 250
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_12
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    const/16 v79, 0x1

    .line 253
    .local v79, "_arg0":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setEventDispatching(Z)V

    .line 254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    const/4 v6, 0x1

    return v6

    .line 252
    .end local v79    # "_arg0":Z
    :cond_7
    const/16 v79, 0x0

    goto :goto_7

    .line 259
    :sswitch_13
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 263
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 264
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v8}, Landroid/view/IWindowManager$Stub;->addWindowToken(Landroid/os/IBinder;I)V

    .line 265
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    const/4 v6, 0x1

    return v6

    .line 270
    .end local v8    # "_arg1":I
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_14
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 273
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->removeWindowToken(Landroid/os/IBinder;)V

    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    const/4 v6, 0x1

    return v6

    .line 279
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_15
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 283
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v14

    .line 285
    .local v14, "_arg1":Landroid/view/IApplicationToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 287
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 289
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 291
    .restart local v11    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    const/16 v18, 0x1

    .line 293
    .local v18, "_arg5":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    const/16 v19, 0x1

    .line 295
    .local v19, "_arg6":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 297
    .local v20, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 299
    .local v21, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    const/16 v22, 0x1

    .line 301
    .local v22, "_arg9":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    const/16 v23, 0x1

    .line 303
    .local v23, "_arg10":Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    .line 304
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/graphics/Rect;

    .line 310
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    .line 311
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/res/Configuration;

    .line 317
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 319
    .local v26, "_arg13":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    const/16 v27, 0x1

    .line 321
    .local v27, "_arg14":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f

    const/16 v28, 0x1

    .line 323
    .local v28, "_arg15":Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .line 325
    .local v29, "_arg16":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v30

    .local v30, "_arg17":I
    move-object/from16 v12, p0

    move v13, v7

    move v15, v9

    move/from16 v16, v10

    move/from16 v17, v11

    .line 326
    invoke-virtual/range {v12 .. v30}, Landroid/view/IWindowManager$Stub;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZLandroid/graphics/Rect;Landroid/content/res/Configuration;IZZII)V

    .line 327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    const/4 v6, 0x1

    return v6

    .line 291
    .end local v18    # "_arg5":Z
    .end local v19    # "_arg6":Z
    .end local v20    # "_arg7":I
    .end local v21    # "_arg8":I
    .end local v22    # "_arg9":Z
    .end local v23    # "_arg10":Z
    .end local v26    # "_arg13":I
    .end local v27    # "_arg14":Z
    .end local v28    # "_arg15":Z
    .end local v29    # "_arg16":I
    .end local v30    # "_arg17":I
    :cond_8
    const/16 v18, 0x0

    .restart local v18    # "_arg5":Z
    goto :goto_8

    .line 293
    :cond_9
    const/16 v19, 0x0

    .restart local v19    # "_arg6":Z
    goto :goto_9

    .line 299
    .restart local v20    # "_arg7":I
    .restart local v21    # "_arg8":I
    :cond_a
    const/16 v22, 0x0

    .restart local v22    # "_arg9":Z
    goto :goto_a

    .line 301
    :cond_b
    const/16 v23, 0x0

    .restart local v23    # "_arg10":Z
    goto :goto_b

    .line 307
    :cond_c
    const/16 v24, 0x0

    .local v24, "_arg11":Landroid/graphics/Rect;
    goto :goto_c

    .line 314
    .end local v24    # "_arg11":Landroid/graphics/Rect;
    :cond_d
    const/16 v25, 0x0

    .local v25, "_arg12":Landroid/content/res/Configuration;
    goto :goto_d

    .line 319
    .end local v25    # "_arg12":Landroid/content/res/Configuration;
    .restart local v26    # "_arg13":I
    :cond_e
    const/16 v27, 0x0

    .restart local v27    # "_arg14":Z
    goto :goto_e

    .line 321
    :cond_f
    const/16 v28, 0x0

    .restart local v28    # "_arg15":Z
    goto :goto_f

    .line 332
    .end local v7    # "_arg0":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v14    # "_arg1":Landroid/view/IApplicationToken;
    .end local v18    # "_arg5":Z
    .end local v19    # "_arg6":Z
    .end local v20    # "_arg7":I
    .end local v21    # "_arg8":I
    .end local v22    # "_arg9":Z
    .end local v23    # "_arg10":Z
    .end local v26    # "_arg13":I
    .end local v27    # "_arg14":Z
    .end local v28    # "_arg15":Z
    :sswitch_16
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 336
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 338
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 340
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_10

    .line 341
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/graphics/Rect;

    .line 347
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_11

    .line 348
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/content/res/Configuration;

    .line 354
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 356
    .local v37, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    const/16 v19, 0x1

    .local v19, "_arg6":Z
    :goto_12
    move-object/from16 v31, p0

    move/from16 v33, v8

    move/from16 v34, v9

    move/from16 v38, v19

    .line 357
    invoke-virtual/range {v31 .. v38}, Landroid/view/IWindowManager$Stub;->setAppTask(Landroid/os/IBinder;IILandroid/graphics/Rect;Landroid/content/res/Configuration;IZ)V

    .line 358
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    const/4 v6, 0x1

    return v6

    .line 344
    .end local v19    # "_arg6":Z
    .end local v37    # "_arg5":I
    :cond_10
    const/16 v35, 0x0

    .local v35, "_arg3":Landroid/graphics/Rect;
    goto :goto_10

    .line 351
    .end local v35    # "_arg3":Landroid/graphics/Rect;
    :cond_11
    const/16 v36, 0x0

    .local v36, "_arg4":Landroid/content/res/Configuration;
    goto :goto_11

    .line 356
    .end local v36    # "_arg4":Landroid/content/res/Configuration;
    .restart local v37    # "_arg5":I
    :cond_12
    const/16 v19, 0x0

    goto :goto_12

    .line 363
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v32    # "_arg0":Landroid/os/IBinder;
    .end local v37    # "_arg5":I
    :sswitch_17
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v69

    .line 367
    .local v69, "_arg0":Landroid/view/IApplicationToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 368
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v1, v8}, Landroid/view/IWindowManager$Stub;->setAppOrientation(Landroid/view/IApplicationToken;I)V

    .line 369
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    const/4 v6, 0x1

    return v6

    .line 374
    .end local v8    # "_arg1":I
    .end local v69    # "_arg0":Landroid/view/IApplicationToken;
    :sswitch_18
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v69

    .line 377
    .restart local v69    # "_arg0":Landroid/view/IApplicationToken;
    move-object/from16 v0, p0

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->getAppOrientation(Landroid/view/IApplicationToken;)I

    move-result v95

    .line 378
    .restart local v95    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    move-object/from16 v0, p3

    move/from16 v1, v95

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    const/4 v6, 0x1

    return v6

    .line 384
    .end local v69    # "_arg0":Landroid/view/IApplicationToken;
    .end local v95    # "_result":I
    :sswitch_19
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 388
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_13

    const/16 v88, 0x1

    .line 389
    .local v88, "_arg1":Z
    :goto_13
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setFocusedApp(Landroid/os/IBinder;Z)V

    .line 390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    const/4 v6, 0x1

    return v6

    .line 388
    .end local v88    # "_arg1":Z
    :cond_13
    const/16 v88, 0x0

    goto :goto_13

    .line 395
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_1a
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 399
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_14

    const/16 v88, 0x1

    .line 400
    .restart local v88    # "_arg1":Z
    :goto_14
    move-object/from16 v0, p0

    move/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Landroid/view/IWindowManager$Stub;->prepareAppTransition(IZ)V

    .line 401
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    const/4 v6, 0x1

    return v6

    .line 399
    .end local v88    # "_arg1":Z
    :cond_14
    const/16 v88, 0x0

    goto :goto_14

    .line 406
    .end local v7    # "_arg0":I
    :sswitch_1b
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getPendingAppTransition()I

    move-result v95

    .line 408
    .restart local v95    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 409
    move-object/from16 v0, p3

    move/from16 v1, v95

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    const/4 v6, 0x1

    return v6

    .line 414
    .end local v95    # "_result":I
    :sswitch_1c
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v78

    .line 418
    .local v78, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 420
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 422
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v42

    .line 423
    .local v42, "_arg3":Landroid/os/IRemoteCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v8, v9, v2}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    .line 424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    const/4 v6, 0x1

    return v6

    .line 429
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v42    # "_arg3":Landroid/os/IRemoteCallback;
    .end local v78    # "_arg0":Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 433
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 435
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 437
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 438
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionScaleUp(IIII)V

    .line 439
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    const/4 v6, 0x1

    return v6

    .line 444
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    :sswitch_1e
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 448
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 450
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 452
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 453
    .restart local v10    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionClipReveal(IIII)V

    .line 454
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    const/4 v6, 0x1

    return v6

    .line 459
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    :sswitch_1f
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_15

    .line 462
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/graphics/Bitmap;

    .line 468
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 470
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 472
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v42

    .line 474
    .restart local v42    # "_arg3":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_16

    const/16 v43, 0x1

    .local v43, "_arg4":Z
    :goto_16
    move-object/from16 v38, p0

    move/from16 v40, v8

    move/from16 v41, v9

    .line 475
    invoke-virtual/range {v38 .. v43}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V

    .line 476
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    const/4 v6, 0x1

    return v6

    .line 465
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v42    # "_arg3":Landroid/os/IRemoteCallback;
    .end local v43    # "_arg4":Z
    :cond_15
    const/16 v39, 0x0

    .local v39, "_arg0":Landroid/graphics/Bitmap;
    goto :goto_15

    .line 474
    .end local v39    # "_arg0":Landroid/graphics/Bitmap;
    .restart local v8    # "_arg1":I
    .restart local v9    # "_arg2":I
    .restart local v42    # "_arg3":Landroid/os/IRemoteCallback;
    :cond_16
    const/16 v43, 0x0

    goto :goto_16

    .line 481
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v42    # "_arg3":Landroid/os/IRemoteCallback;
    :sswitch_20
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_17

    .line 484
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/graphics/Bitmap;

    .line 490
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 492
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 494
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 496
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 498
    .restart local v11    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v50

    .line 500
    .local v50, "_arg5":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_18

    const/16 v19, 0x1

    .restart local v19    # "_arg6":Z
    :goto_18
    move-object/from16 v44, p0

    move-object/from16 v45, v39

    move/from16 v46, v8

    move/from16 v47, v9

    move/from16 v48, v10

    move/from16 v49, v11

    move/from16 v51, v19

    .line 501
    invoke-virtual/range {v44 .. v51}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/Bitmap;IIIILandroid/os/IRemoteCallback;Z)V

    .line 502
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    const/4 v6, 0x1

    return v6

    .line 487
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v19    # "_arg6":Z
    .end local v50    # "_arg5":Landroid/os/IRemoteCallback;
    :cond_17
    const/16 v39, 0x0

    .restart local v39    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_17

    .line 500
    .end local v39    # "_arg0":Landroid/graphics/Bitmap;
    .restart local v8    # "_arg1":I
    .restart local v9    # "_arg2":I
    .restart local v10    # "_arg3":I
    .restart local v11    # "_arg4":I
    .restart local v50    # "_arg5":Landroid/os/IRemoteCallback;
    :cond_18
    const/16 v19, 0x0

    goto :goto_18

    .line 507
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v11    # "_arg4":I
    .end local v50    # "_arg5":Landroid/os/IRemoteCallback;
    :sswitch_21
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    sget-object v6, Landroid/view/AppTransitionAnimationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v81

    check-cast v81, [Landroid/view/AppTransitionAnimationSpec;

    .line 511
    .local v81, "_arg0":[Landroid/view/AppTransitionAnimationSpec;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v85

    .line 513
    .local v85, "_arg1":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v90

    .line 515
    .local v90, "_arg2":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_19

    const/16 v93, 0x1

    .line 516
    .local v93, "_arg3":Z
    :goto_19
    move-object/from16 v0, p0

    move-object/from16 v1, v81

    move-object/from16 v2, v85

    move-object/from16 v3, v90

    move/from16 v4, v93

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    .line 517
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    const/4 v6, 0x1

    return v6

    .line 515
    .end local v93    # "_arg3":Z
    :cond_19
    const/16 v93, 0x0

    goto :goto_19

    .line 522
    .end local v81    # "_arg0":[Landroid/view/AppTransitionAnimationSpec;
    .end local v85    # "_arg1":Landroid/os/IRemoteCallback;
    .end local v90    # "_arg2":Landroid/os/IRemoteCallback;
    :sswitch_22
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v78

    .line 526
    .restart local v78    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 527
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1, v8}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionInPlace(Ljava/lang/String;I)V

    .line 528
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    const/4 v6, 0x1

    return v6

    .line 533
    .end local v8    # "_arg1":I
    .end local v78    # "_arg0":Ljava/lang/String;
    :sswitch_23
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v68

    .line 537
    .local v68, "_arg0":Landroid/view/IAppTransitionAnimationSpecsFuture;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v85

    .line 539
    .restart local v85    # "_arg1":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1a

    const/16 v92, 0x1

    .line 540
    .local v92, "_arg2":Z
    :goto_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v68

    move-object/from16 v2, v85

    move/from16 v3, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V

    .line 541
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    const/4 v6, 0x1

    return v6

    .line 539
    .end local v92    # "_arg2":Z
    :cond_1a
    const/16 v92, 0x0

    goto :goto_1a

    .line 546
    .end local v68    # "_arg0":Landroid/view/IAppTransitionAnimationSpecsFuture;
    .end local v85    # "_arg1":Landroid/os/IRemoteCallback;
    :sswitch_24
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 547
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->executeAppTransition()V

    .line 548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    const/4 v6, 0x1

    return v6

    .line 553
    :sswitch_25
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 557
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 559
    .local v53, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 561
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1b

    .line 562
    sget-object v6, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Landroid/content/res/CompatibilityInfo;

    .line 568
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1c

    .line 569
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/lang/CharSequence;

    .line 575
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v37

    .line 577
    .restart local v37    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 579
    .local v58, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 581
    .restart local v20    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 583
    .restart local v21    # "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v61

    .line 585
    .local v61, "_arg9":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1d

    const/16 v23, 0x1

    .local v23, "_arg10":Z
    :goto_1d
    move-object/from16 v51, p0

    move-object/from16 v52, v32

    move/from16 v54, v9

    move/from16 v57, v37

    move/from16 v59, v20

    move/from16 v60, v21

    move/from16 v62, v23

    .line 586
    invoke-virtual/range {v51 .. v62}, Landroid/view/IWindowManager$Stub;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)Z

    move-result v101

    .line 587
    .restart local v101    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    if-eqz v101, :cond_1e

    const/4 v6, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 589
    const/4 v6, 0x1

    return v6

    .line 565
    .end local v20    # "_arg7":I
    .end local v21    # "_arg8":I
    .end local v23    # "_arg10":Z
    .end local v37    # "_arg5":I
    .end local v58    # "_arg6":I
    .end local v61    # "_arg9":Landroid/os/IBinder;
    .end local v101    # "_result":Z
    :cond_1b
    const/16 v55, 0x0

    .local v55, "_arg3":Landroid/content/res/CompatibilityInfo;
    goto :goto_1b

    .line 572
    .end local v55    # "_arg3":Landroid/content/res/CompatibilityInfo;
    :cond_1c
    const/16 v56, 0x0

    .local v56, "_arg4":Ljava/lang/CharSequence;
    goto :goto_1c

    .line 585
    .end local v56    # "_arg4":Ljava/lang/CharSequence;
    .restart local v20    # "_arg7":I
    .restart local v21    # "_arg8":I
    .restart local v37    # "_arg5":I
    .restart local v58    # "_arg6":I
    .restart local v61    # "_arg9":Landroid/os/IBinder;
    :cond_1d
    const/16 v23, 0x0

    goto :goto_1d

    .line 588
    .restart local v23    # "_arg10":Z
    .restart local v101    # "_result":Z
    :cond_1e
    const/4 v6, 0x0

    goto :goto_1e

    .line 593
    .end local v9    # "_arg2":I
    .end local v20    # "_arg7":I
    .end local v21    # "_arg8":I
    .end local v23    # "_arg10":Z
    .end local v32    # "_arg0":Landroid/os/IBinder;
    .end local v37    # "_arg5":I
    .end local v53    # "_arg1":Ljava/lang/String;
    .end local v58    # "_arg6":I
    .end local v61    # "_arg9":Landroid/os/IBinder;
    .end local v101    # "_result":Z
    :sswitch_26
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 597
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1f

    const/16 v88, 0x1

    .line 598
    .restart local v88    # "_arg1":Z
    :goto_1f
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 599
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    const/4 v6, 0x1

    return v6

    .line 597
    .end local v88    # "_arg1":Z
    :cond_1f
    const/16 v88, 0x0

    goto :goto_1f

    .line 604
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_27
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 608
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_20

    const/16 v88, 0x1

    .line 610
    .local v88, "_arg1":Z
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_21

    const/16 v92, 0x1

    .line 611
    .restart local v92    # "_arg2":Z
    :goto_21
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v88

    move/from16 v3, v92

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->notifyAppResumed(Landroid/os/IBinder;ZZ)V

    .line 612
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    const/4 v6, 0x1

    return v6

    .line 608
    .end local v88    # "_arg1":Z
    .end local v92    # "_arg2":Z
    :cond_20
    const/16 v88, 0x0

    .restart local v88    # "_arg1":Z
    goto :goto_20

    .line 610
    :cond_21
    const/16 v92, 0x0

    goto :goto_21

    .line 617
    .end local v32    # "_arg0":Landroid/os/IBinder;
    .end local v88    # "_arg1":Z
    :sswitch_28
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 620
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->notifyAppStopped(Landroid/os/IBinder;)V

    .line 621
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    const/4 v6, 0x1

    return v6

    .line 626
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_29
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 630
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 631
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v8}, Landroid/view/IWindowManager$Stub;->startAppFreezingScreen(Landroid/os/IBinder;I)V

    .line 632
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    const/4 v6, 0x1

    return v6

    .line 637
    .end local v8    # "_arg1":I
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_2a
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 641
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_22

    const/16 v88, 0x1

    .line 642
    .local v88, "_arg1":Z
    :goto_22
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->stopAppFreezingScreen(Landroid/os/IBinder;Z)V

    .line 643
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    const/4 v6, 0x1

    return v6

    .line 641
    .end local v88    # "_arg1":Z
    :cond_22
    const/16 v88, 0x0

    goto :goto_22

    .line 648
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_2b
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 651
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->removeAppToken(Landroid/os/IBinder;)V

    .line 652
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    const/4 v6, 0x1

    return v6

    .line 657
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_2c
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->endProlongedAnimations()V

    .line 659
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 660
    const/4 v6, 0x1

    return v6

    .line 664
    :sswitch_2d
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_23

    .line 667
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Landroid/content/res/Configuration;

    .line 673
    :goto_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 674
    .local v84, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v84

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v96

    .line 675
    .local v96, "_result":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    if-eqz v96, :cond_24

    .line 677
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 678
    const/4 v6, 0x1

    move-object/from16 v0, v96

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 683
    :goto_24
    const/4 v6, 0x1

    return v6

    .line 670
    .end local v84    # "_arg1":Landroid/os/IBinder;
    .end local v96    # "_result":Landroid/content/res/Configuration;
    :cond_23
    const/16 v63, 0x0

    .local v63, "_arg0":Landroid/content/res/Configuration;
    goto :goto_23

    .line 681
    .end local v63    # "_arg0":Landroid/content/res/Configuration;
    .restart local v84    # "_arg1":Landroid/os/IBinder;
    .restart local v96    # "_result":Landroid/content/res/Configuration;
    :cond_24
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_24

    .line 687
    .end local v84    # "_arg1":Landroid/os/IBinder;
    .end local v96    # "_result":Landroid/content/res/Configuration;
    :sswitch_2e
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_25

    .line 690
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v63

    check-cast v63, Landroid/content/res/Configuration;

    .line 695
    :goto_25
    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setNewConfiguration(Landroid/content/res/Configuration;)[I

    move-result-object v103

    .line 696
    .local v103, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    move-object/from16 v0, p3

    move-object/from16 v1, v103

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 698
    const/4 v6, 0x1

    return v6

    .line 693
    .end local v103    # "_result":[I
    :cond_25
    const/16 v63, 0x0

    .restart local v63    # "_arg0":Landroid/content/res/Configuration;
    goto :goto_25

    .line 702
    .end local v63    # "_arg0":Landroid/content/res/Configuration;
    :sswitch_2f
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 705
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->getBoundsForNewConfiguration(I)Landroid/graphics/Rect;

    move-result-object v98

    .line 706
    .local v98, "_result":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    if-eqz v98, :cond_26

    .line 708
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 709
    const/4 v6, 0x1

    move-object/from16 v0, v98

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 714
    :goto_26
    const/4 v6, 0x1

    return v6

    .line 712
    :cond_26
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 718
    .end local v7    # "_arg0":I
    .end local v98    # "_result":Landroid/graphics/Rect;
    :sswitch_30
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 722
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 723
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8}, Landroid/view/IWindowManager$Stub;->startFreezingScreen(II)V

    .line 724
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    const/4 v6, 0x1

    return v6

    .line 729
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    :sswitch_31
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 730
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->stopFreezingScreen()V

    .line 731
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    const/4 v6, 0x1

    return v6

    .line 736
    :sswitch_32
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 740
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v53

    .line 741
    .restart local v53    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 742
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 743
    const/4 v6, 0x1

    return v6

    .line 747
    .end local v32    # "_arg0":Landroid/os/IBinder;
    .end local v53    # "_arg1":Ljava/lang/String;
    :sswitch_33
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 749
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 750
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->reenableKeyguard(Landroid/os/IBinder;)V

    .line 751
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 752
    const/4 v6, 0x1

    return v6

    .line 756
    .end local v32    # "_arg0":Landroid/os/IBinder;
    :sswitch_34
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IOnKeyguardExitResult$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOnKeyguardExitResult;

    move-result-object v71

    .line 759
    .local v71, "_arg0":Landroid/view/IOnKeyguardExitResult;
    move-object/from16 v0, p0

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V

    .line 760
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    const/4 v6, 0x1

    return v6

    .line 765
    .end local v71    # "_arg0":Landroid/view/IOnKeyguardExitResult;
    :sswitch_35
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 766
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isKeyguardLocked()Z

    move-result v101

    .line 767
    .restart local v101    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    if-eqz v101, :cond_27

    const/4 v6, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    const/4 v6, 0x1

    return v6

    .line 768
    :cond_27
    const/4 v6, 0x0

    goto :goto_27

    .line 773
    .end local v101    # "_result":Z
    :sswitch_36
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 774
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isKeyguardSecure()Z

    move-result v101

    .line 775
    .restart local v101    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    if-eqz v101, :cond_28

    const/4 v6, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 777
    const/4 v6, 0x1

    return v6

    .line 776
    :cond_28
    const/4 v6, 0x0

    goto :goto_28

    .line 781
    .end local v101    # "_result":Z
    :sswitch_37
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 782
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->inKeyguardRestrictedInputMode()Z

    move-result v101

    .line 783
    .restart local v101    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    if-eqz v101, :cond_29

    const/4 v6, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 785
    const/4 v6, 0x1

    return v6

    .line 784
    :cond_29
    const/4 v6, 0x0

    goto :goto_29

    .line 789
    .end local v101    # "_result":Z
    :sswitch_38
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 790
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->dismissKeyguard()V

    .line 791
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    const/4 v6, 0x1

    return v6

    .line 796
    :sswitch_39
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 798
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 799
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->keyguardGoingAway(I)V

    .line 800
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 801
    const/4 v6, 0x1

    return v6

    .line 805
    .end local v7    # "_arg0":I
    :sswitch_3a
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v78

    .line 808
    .restart local v78    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 809
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    const/4 v6, 0x1

    return v6

    .line 814
    .end local v78    # "_arg0":Ljava/lang/String;
    :sswitch_3b
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 816
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 817
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->getAnimationScale(I)F

    move-result v94

    .line 818
    .local v94, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 819
    move-object/from16 v0, p3

    move/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 820
    const/4 v6, 0x1

    return v6

    .line 824
    .end local v7    # "_arg0":I
    .end local v94    # "_result":F
    :sswitch_3c
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 825
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getAnimationScales()[F

    move-result-object v102

    .line 826
    .local v102, "_result":[F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    move-object/from16 v0, p3

    move-object/from16 v1, v102

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 828
    const/4 v6, 0x1

    return v6

    .line 832
    .end local v102    # "_result":[F
    :sswitch_3d
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 836
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v82

    .line 837
    .local v82, "_arg1":F
    move-object/from16 v0, p0

    move/from16 v1, v82

    invoke-virtual {v0, v7, v1}, Landroid/view/IWindowManager$Stub;->setAnimationScale(IF)V

    .line 838
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 839
    const/4 v6, 0x1

    return v6

    .line 843
    .end local v7    # "_arg0":I
    .end local v82    # "_arg1":F
    :sswitch_3e
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 845
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v80

    .line 846
    .local v80, "_arg0":[F
    move-object/from16 v0, p0

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setAnimationScales([F)V

    .line 847
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    const/4 v6, 0x1

    return v6

    .line 852
    .end local v80    # "_arg0":[F
    :sswitch_3f
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 853
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getCurrentAnimatorScale()F

    move-result v94

    .line 854
    .restart local v94    # "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 855
    move-object/from16 v0, p3

    move/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 856
    const/4 v6, 0x1

    return v6

    .line 860
    .end local v94    # "_result":F
    :sswitch_40
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 862
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2a

    const/16 v79, 0x1

    .line 863
    .restart local v79    # "_arg0":Z
    :goto_2a
    move-object/from16 v0, p0

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setInTouchMode(Z)V

    .line 864
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    const/4 v6, 0x1

    return v6

    .line 862
    .end local v79    # "_arg0":Z
    :cond_2a
    const/16 v79, 0x0

    goto :goto_2a

    .line 869
    :sswitch_41
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2b

    const/16 v79, 0x1

    .line 872
    .restart local v79    # "_arg0":Z
    :goto_2b
    move-object/from16 v0, p0

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->showStrictModeViolation(Z)V

    .line 873
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    const/4 v6, 0x1

    return v6

    .line 871
    .end local v79    # "_arg0":Z
    :cond_2b
    const/16 v79, 0x0

    goto :goto_2b

    .line 878
    :sswitch_42
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 880
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v78

    .line 881
    .restart local v78    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 882
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 883
    const/4 v6, 0x1

    return v6

    .line 887
    .end local v78    # "_arg0":Ljava/lang/String;
    :sswitch_43
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 889
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 891
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2c

    const/16 v88, 0x1

    .line 892
    .restart local v88    # "_arg1":Z
    :goto_2c
    move-object/from16 v0, p0

    move/from16 v1, v88

    invoke-virtual {v0, v7, v1}, Landroid/view/IWindowManager$Stub;->setScreenCaptureDisabled(IZ)V

    .line 893
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    const/4 v6, 0x1

    return v6

    .line 891
    .end local v88    # "_arg1":Z
    :cond_2c
    const/16 v88, 0x0

    goto :goto_2c

    .line 898
    .end local v7    # "_arg0":I
    :sswitch_44
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 900
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 901
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->cancelTaskWindowTransition(I)V

    .line 902
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 903
    const/4 v6, 0x1

    return v6

    .line 907
    .end local v7    # "_arg0":I
    :sswitch_45
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 909
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 910
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->cancelTaskThumbnailTransition(I)V

    .line 911
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    const/4 v6, 0x1

    return v6

    .line 916
    .end local v7    # "_arg0":I
    :sswitch_46
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 918
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2d

    const/16 v79, 0x1

    .line 920
    .local v79, "_arg0":Z
    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2e

    const/16 v88, 0x1

    .line 921
    .restart local v88    # "_arg1":Z
    :goto_2e
    move-object/from16 v0, p0

    move/from16 v1, v79

    move/from16 v2, v88

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->updateRotation(ZZ)V

    .line 922
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 923
    const/4 v6, 0x1

    return v6

    .line 918
    .end local v79    # "_arg0":Z
    .end local v88    # "_arg1":Z
    :cond_2d
    const/16 v79, 0x0

    .restart local v79    # "_arg0":Z
    goto :goto_2d

    .line 920
    :cond_2e
    const/16 v88, 0x0

    goto :goto_2e

    .line 927
    .end local v79    # "_arg0":Z
    :sswitch_47
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 928
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getRotation()I

    move-result v95

    .line 929
    .restart local v95    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    move-object/from16 v0, p3

    move/from16 v1, v95

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    const/4 v6, 0x1

    return v6

    .line 935
    .end local v95    # "_result":I
    :sswitch_48
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 937
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v72

    .line 938
    .local v72, "_arg0":Landroid/view/IRotationWatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v95

    .line 939
    .restart local v95    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 940
    move-object/from16 v0, p3

    move/from16 v1, v95

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 941
    const/4 v6, 0x1

    return v6

    .line 945
    .end local v72    # "_arg0":Landroid/view/IRotationWatcher;
    .end local v95    # "_result":I
    :sswitch_49
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v72

    .line 948
    .restart local v72    # "_arg0":Landroid/view/IRotationWatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 949
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    const/4 v6, 0x1

    return v6

    .line 954
    .end local v72    # "_arg0":Landroid/view/IRotationWatcher;
    :sswitch_4a
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 955
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getPreferredOptionsPanelGravity()I

    move-result v95

    .line 956
    .restart local v95    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 957
    move-object/from16 v0, p3

    move/from16 v1, v95

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 958
    const/4 v6, 0x1

    return v6

    .line 962
    .end local v95    # "_result":I
    :sswitch_4b
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 964
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 965
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->freezeRotation(I)V

    .line 966
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 967
    const/4 v6, 0x1

    return v6

    .line 971
    .end local v7    # "_arg0":I
    :sswitch_4c
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 972
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->thawRotation()V

    .line 973
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    const/4 v6, 0x1

    return v6

    .line 978
    :sswitch_4d
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 979
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isRotationFrozen()Z

    move-result v101

    .line 980
    .restart local v101    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 981
    if-eqz v101, :cond_2f

    const/4 v6, 0x1

    :goto_2f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 982
    const/4 v6, 0x1

    return v6

    .line 981
    :cond_2f
    const/4 v6, 0x0

    goto :goto_2f

    .line 986
    .end local v101    # "_result":Z
    :sswitch_4e
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 987
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->screenshotWallpaper()Landroid/graphics/Bitmap;

    move-result-object v97

    .line 988
    .local v97, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 989
    if-eqz v97, :cond_30

    .line 990
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 991
    const/4 v6, 0x1

    move-object/from16 v0, v97

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 996
    :goto_30
    const/4 v6, 0x1

    return v6

    .line 994
    :cond_30
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_30

    .line 1000
    .end local v97    # "_result":Landroid/graphics/Bitmap;
    :sswitch_4f
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1002
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IAssistScreenshotReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAssistScreenshotReceiver;

    move-result-object v75

    .line 1003
    .local v75, "_arg0":Lcom/android/internal/app/IAssistScreenshotReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v75

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->requestAssistScreenshot(Lcom/android/internal/app/IAssistScreenshotReceiver;)Z

    move-result v101

    .line 1004
    .restart local v101    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1005
    if-eqz v101, :cond_31

    const/4 v6, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1006
    const/4 v6, 0x1

    return v6

    .line 1005
    :cond_31
    const/4 v6, 0x0

    goto :goto_31

    .line 1010
    .end local v75    # "_arg0":Lcom/android/internal/app/IAssistScreenshotReceiver;
    .end local v101    # "_result":Z
    :sswitch_50
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1012
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 1014
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1016
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1018
    .restart local v9    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1020
    .restart local v10    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v49

    .local v49, "_arg4":F
    move-object/from16 v44, p0

    move-object/from16 v45, v32

    move/from16 v46, v8

    move/from16 v47, v9

    move/from16 v48, v10

    .line 1021
    invoke-virtual/range {v44 .. v49}, Landroid/view/IWindowManager$Stub;->screenshotApplications(Landroid/os/IBinder;IIIF)Landroid/graphics/Bitmap;

    move-result-object v97

    .line 1022
    .restart local v97    # "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1023
    if-eqz v97, :cond_32

    .line 1024
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1025
    const/4 v6, 0x1

    move-object/from16 v0, v97

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1030
    :goto_32
    const/4 v6, 0x1

    return v6

    .line 1028
    :cond_32
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_32

    .line 1034
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":I
    .end local v10    # "_arg3":I
    .end local v32    # "_arg0":Landroid/os/IBinder;
    .end local v49    # "_arg4":F
    .end local v97    # "_result":Landroid/graphics/Bitmap;
    :sswitch_51
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1036
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1037
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/IWindowManager$Stub;->statusBarVisibilityChanged(I)V

    .line 1038
    const/4 v6, 0x1

    return v6

    .line 1042
    .end local v7    # "_arg0":I
    :sswitch_52
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1044
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_33

    const/16 v79, 0x1

    .line 1045
    .local v79, "_arg0":Z
    :goto_33
    move-object/from16 v0, p0

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setRecentsVisibility(Z)V

    .line 1046
    const/4 v6, 0x1

    return v6

    .line 1044
    .end local v79    # "_arg0":Z
    :cond_33
    const/16 v79, 0x0

    goto :goto_33

    .line 1050
    :sswitch_53
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1052
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_34

    const/16 v79, 0x1

    .line 1053
    .restart local v79    # "_arg0":Z
    :goto_34
    move-object/from16 v0, p0

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setTvPipVisibility(Z)V

    .line 1054
    const/4 v6, 0x1

    return v6

    .line 1052
    .end local v79    # "_arg0":Z
    :cond_34
    const/16 v79, 0x0

    goto :goto_34

    .line 1058
    :sswitch_54
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1059
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->hasNavigationBar()Z

    move-result v101

    .line 1060
    .restart local v101    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    if-eqz v101, :cond_35

    const/4 v6, 0x1

    :goto_35
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1062
    const/4 v6, 0x1

    return v6

    .line 1061
    :cond_35
    const/4 v6, 0x0

    goto :goto_35

    .line 1066
    .end local v101    # "_result":Z
    :sswitch_55
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1068
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_36

    .line 1069
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/os/Bundle;

    .line 1074
    :goto_36
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->lockNow(Landroid/os/Bundle;)V

    .line 1075
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1076
    const/4 v6, 0x1

    return v6

    .line 1072
    :cond_36
    const/16 v67, 0x0

    .local v67, "_arg0":Landroid/os/Bundle;
    goto :goto_36

    .line 1080
    .end local v67    # "_arg0":Landroid/os/Bundle;
    :sswitch_56
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1081
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isSafeModeEnabled()Z

    move-result v101

    .line 1082
    .restart local v101    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    if-eqz v101, :cond_37

    const/4 v6, 0x1

    :goto_37
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1084
    const/4 v6, 0x1

    return v6

    .line 1083
    :cond_37
    const/4 v6, 0x0

    goto :goto_37

    .line 1088
    .end local v101    # "_result":Z
    :sswitch_57
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1089
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->enableScreenIfNeeded()V

    .line 1090
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1091
    const/4 v6, 0x1

    return v6

    .line 1095
    :sswitch_58
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1097
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 1098
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->clearWindowContentFrameStats(Landroid/os/IBinder;)Z

    move-result v101

    .line 1099
    .restart local v101    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1100
    if-eqz v101, :cond_38

    const/4 v6, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1101
    const/4 v6, 0x1

    return v6

    .line 1100
    :cond_38
    const/4 v6, 0x0

    goto :goto_38

    .line 1105
    .end local v32    # "_arg0":Landroid/os/IBinder;
    .end local v101    # "_result":Z
    :sswitch_59
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v32

    .line 1108
    .restart local v32    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;

    move-result-object v100

    .line 1109
    .local v100, "_result":Landroid/view/WindowContentFrameStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1110
    if-eqz v100, :cond_39

    .line 1111
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1112
    const/4 v6, 0x1

    move-object/from16 v0, v100

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/view/WindowContentFrameStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1117
    :goto_39
    const/4 v6, 0x1

    return v6

    .line 1115
    :cond_39
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_39

    .line 1121
    .end local v32    # "_arg0":Landroid/os/IBinder;
    .end local v100    # "_result":Landroid/view/WindowContentFrameStats;
    :sswitch_5a
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1122
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getDockedStackSide()I

    move-result v95

    .line 1123
    .restart local v95    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1124
    move-object/from16 v0, p3

    move/from16 v1, v95

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1125
    const/4 v6, 0x1

    return v6

    .line 1129
    .end local v95    # "_result":I
    :sswitch_5b
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3a

    const/16 v79, 0x1

    .line 1132
    .restart local v79    # "_arg0":Z
    :goto_3a
    move-object/from16 v0, p0

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setDockedStackResizing(Z)V

    .line 1133
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1134
    const/4 v6, 0x1

    return v6

    .line 1131
    .end local v79    # "_arg0":Z
    :cond_3a
    const/16 v79, 0x0

    goto :goto_3a

    .line 1138
    :sswitch_5c
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3b

    .line 1141
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v66

    check-cast v66, Landroid/graphics/Rect;

    .line 1146
    :goto_3b
    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setDockedStackDividerTouchRegion(Landroid/graphics/Rect;)V

    .line 1147
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1148
    const/4 v6, 0x1

    return v6

    .line 1144
    :cond_3b
    const/16 v66, 0x0

    .local v66, "_arg0":Landroid/graphics/Rect;
    goto :goto_3b

    .line 1152
    .end local v66    # "_arg0":Landroid/graphics/Rect;
    :sswitch_5d
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IDockedStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDockedStackListener;

    move-result-object v70

    .line 1155
    .local v70, "_arg0":Landroid/view/IDockedStackListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V

    .line 1156
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    const/4 v6, 0x1

    return v6

    .line 1161
    .end local v70    # "_arg0":Landroid/view/IDockedStackListener;
    :sswitch_5e
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3c

    const/16 v79, 0x1

    .line 1165
    .local v79, "_arg0":Z
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1167
    .restart local v8    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v89

    .line 1168
    .local v89, "_arg2":F
    move-object/from16 v0, p0

    move/from16 v1, v79

    move/from16 v2, v89

    invoke-virtual {v0, v1, v8, v2}, Landroid/view/IWindowManager$Stub;->setResizeDimLayer(ZIF)V

    .line 1169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1170
    const/4 v6, 0x1

    return v6

    .line 1163
    .end local v8    # "_arg1":I
    .end local v79    # "_arg0":Z
    .end local v89    # "_arg2":F
    :cond_3c
    const/16 v79, 0x0

    .restart local v79    # "_arg0":Z
    goto :goto_3c

    .line 1174
    .end local v79    # "_arg0":Z
    :sswitch_5f
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v76

    .line 1178
    .local v76, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1179
    .restart local v8    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1, v8}, Landroid/view/IWindowManager$Stub;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    .line 1180
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1181
    const/4 v6, 0x1

    return v6

    .line 1185
    .end local v8    # "_arg1":I
    .end local v76    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    :sswitch_60
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1187
    new-instance v66, Landroid/graphics/Rect;

    invoke-direct/range {v66 .. v66}, Landroid/graphics/Rect;-><init>()V

    .line 1188
    .local v66, "_arg0":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->getStableInsets(Landroid/graphics/Rect;)V

    .line 1189
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1190
    if-eqz v66, :cond_3d

    .line 1191
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1192
    const/4 v6, 0x1

    move-object/from16 v0, v66

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1197
    :goto_3d
    const/4 v6, 0x1

    return v6

    .line 1195
    :cond_3d
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3d

    .line 1201
    .end local v66    # "_arg0":Landroid/graphics/Rect;
    :sswitch_61
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v64

    .line 1205
    .local v64, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/policy/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IShortcutService;

    move-result-object v86

    .line 1206
    .local v86, "_arg1":Lcom/android/internal/policy/IShortcutService;
    move-object/from16 v0, p0

    move-wide/from16 v1, v64

    move-object/from16 v3, v86

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    .line 1207
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1208
    const/4 v6, 0x1

    return v6

    .line 1212
    .end local v64    # "_arg0":J
    .end local v86    # "_arg1":Lcom/android/internal/policy/IShortcutService;
    :sswitch_62
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1214
    new-instance v74, Landroid/view/InputChannel;

    invoke-direct/range {v74 .. v74}, Landroid/view/InputChannel;-><init>()V

    .line 1215
    .local v74, "_arg0":Landroid/view/InputChannel;
    move-object/from16 v0, p0

    move-object/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->createWallpaperInputConsumer(Landroid/view/InputChannel;)V

    .line 1216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1217
    if-eqz v74, :cond_3e

    .line 1218
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1219
    const/4 v6, 0x1

    move-object/from16 v0, v74

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1224
    :goto_3e
    const/4 v6, 0x1

    return v6

    .line 1222
    :cond_3e
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3e

    .line 1228
    .end local v74    # "_arg0":Landroid/view/InputChannel;
    :sswitch_63
    const-string/jumbo v6, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1229
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->removeWallpaperInputConsumer()V

    .line 1230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1231
    const/4 v6, 0x1

    return v6

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
