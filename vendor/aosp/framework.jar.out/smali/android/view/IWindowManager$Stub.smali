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

.field static final TRANSACTION_clearForcedDisplayDensity:I = 0xd

.field static final TRANSACTION_clearForcedDisplaySize:I = 0x9

.field static final TRANSACTION_clearWindowContentFrameStats:I = 0x4e

.field static final TRANSACTION_closeSystemDialogs:I = 0x35

.field static final TRANSACTION_disableKeyguard:I = 0x2d

.field static final TRANSACTION_dismissKeyguard:I = 0x33

.field static final TRANSACTION_enableScreenIfNeeded:I = 0x4d

.field static final TRANSACTION_executeAppTransition:I = 0x22

.field static final TRANSACTION_exitKeyguardSecurely:I = 0x2f

.field static final TRANSACTION_freezeRotation:I = 0x44

.field static final TRANSACTION_getAnimationScale:I = 0x36

.field static final TRANSACTION_getAnimationScales:I = 0x37

.field static final TRANSACTION_getAppOrientation:I = 0x18

.field static final TRANSACTION_getBaseDisplayDensity:I = 0xb

.field static final TRANSACTION_getBaseDisplaySize:I = 0x7

.field static final TRANSACTION_getCurrentAnimatorScale:I = 0x3a

.field static final TRANSACTION_getInitialDisplayDensity:I = 0xa

.field static final TRANSACTION_getInitialDisplaySize:I = 0x6

.field static final TRANSACTION_getPendingAppTransition:I = 0x1b

.field static final TRANSACTION_getPreferredOptionsPanelGravity:I = 0x43

.field static final TRANSACTION_getRotation:I = 0x40

.field static final TRANSACTION_getWindowContentFrameStats:I = 0x4f

.field static final TRANSACTION_hasNavigationBar:I = 0x4a

.field static final TRANSACTION_inKeyguardRestrictedInputMode:I = 0x32

.field static final TRANSACTION_inputMethodClientHasFocus:I = 0x5

.field static final TRANSACTION_isKeyguardLocked:I = 0x30

.field static final TRANSACTION_isKeyguardSecure:I = 0x31

.field static final TRANSACTION_isRotationFrozen:I = 0x46

.field static final TRANSACTION_isSafeModeEnabled:I = 0x4c

.field static final TRANSACTION_isViewServerRunning:I = 0x3

.field static final TRANSACTION_keyguardGoingAway:I = 0x34

.field static final TRANSACTION_lockNow:I = 0x4b

.field static final TRANSACTION_openSession:I = 0x4

.field static final TRANSACTION_overridePendingAppTransition:I = 0x1c

.field static final TRANSACTION_overridePendingAppTransitionAspectScaledThumb:I = 0x20

.field static final TRANSACTION_overridePendingAppTransitionClipReveal:I = 0x1e

.field static final TRANSACTION_overridePendingAppTransitionInPlace:I = 0x21

.field static final TRANSACTION_overridePendingAppTransitionScaleUp:I = 0x1d

.field static final TRANSACTION_overridePendingAppTransitionThumb:I = 0x1f

.field static final TRANSACTION_pauseKeyDispatching:I = 0x10

.field static final TRANSACTION_prepareAppTransition:I = 0x1a

.field static final TRANSACTION_reenableKeyguard:I = 0x2e

.field static final TRANSACTION_removeAppToken:I = 0x28

.field static final TRANSACTION_removeRotationWatcher:I = 0x42

.field static final TRANSACTION_removeWindowToken:I = 0x14

.field static final TRANSACTION_requestAssistScreenshot:I = 0x47

.field static final TRANSACTION_resumeKeyDispatching:I = 0x11

.field static final TRANSACTION_screenshotApplications:I = 0x48

.field static final TRANSACTION_setAnimationScale:I = 0x38

.field static final TRANSACTION_setAnimationScales:I = 0x39

.field static final TRANSACTION_setAppOrientation:I = 0x17

.field static final TRANSACTION_setAppStartingWindow:I = 0x23

.field static final TRANSACTION_setAppTask:I = 0x16

.field static final TRANSACTION_setAppVisibility:I = 0x25

.field static final TRANSACTION_setAppWillBeHidden:I = 0x24

.field static final TRANSACTION_setEventDispatching:I = 0x12

.field static final TRANSACTION_setFocusedApp:I = 0x19

.field static final TRANSACTION_setForcedDisplayDensity:I = 0xc

.field static final TRANSACTION_setForcedDisplayScalingMode:I = 0xe

.field static final TRANSACTION_setForcedDisplaySize:I = 0x8

.field static final TRANSACTION_setInTouchMode:I = 0x3b

.field static final TRANSACTION_setNewConfiguration:I = 0x2a

.field static final TRANSACTION_setOverscan:I = 0xf

.field static final TRANSACTION_setScreenCaptureDisabled:I = 0x3e

.field static final TRANSACTION_setStrictModeVisualIndicatorPreference:I = 0x3d

.field static final TRANSACTION_showStrictModeViolation:I = 0x3c

.field static final TRANSACTION_startAppFreezingScreen:I = 0x26

.field static final TRANSACTION_startFreezingScreen:I = 0x2b

.field static final TRANSACTION_startViewServer:I = 0x1

.field static final TRANSACTION_statusBarVisibilityChanged:I = 0x49

.field static final TRANSACTION_stopAppFreezingScreen:I = 0x27

.field static final TRANSACTION_stopFreezingScreen:I = 0x2c

.field static final TRANSACTION_stopViewServer:I = 0x2

.field static final TRANSACTION_thawRotation:I = 0x45

.field static final TRANSACTION_updateOrientationFromAppTokens:I = 0x29

.field static final TRANSACTION_updateRotation:I = 0x3f

.field static final TRANSACTION_watchRotation:I = 0x41


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
    .locals 72
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

    .line 958
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 47
    :sswitch_0
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v4, 0x1

    return v4

    .line 52
    :sswitch_1
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 55
    .local v5, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/IWindowManager$Stub;->startViewServer(I)Z

    move-result v70

    .line 56
    .local v70, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v70, :cond_0

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    const/4 v4, 0x1

    return v4

    .line 57
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 62
    .end local v5    # "_arg0":I
    .end local v70    # "_result":Z
    :sswitch_2
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->stopViewServer()Z

    move-result v70

    .line 64
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v70, :cond_1

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/4 v4, 0x1

    return v4

    .line 65
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 70
    .end local v70    # "_result":Z
    :sswitch_3
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isViewServerRunning()Z

    move-result v70

    .line 72
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    if-eqz v70, :cond_2

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    const/4 v4, 0x1

    return v4

    .line 73
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 78
    .end local v70    # "_result":Z
    :sswitch_4
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSessionCallback;

    move-result-object v52

    .line 82
    .local v52, "_arg0":Landroid/view/IWindowSessionCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v61

    .line 84
    .local v61, "_arg1":Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v63

    .line 85
    .local v63, "_arg2":Lcom/android/internal/view/IInputContext;
    move-object/from16 v0, p0

    move-object/from16 v1, v52

    move-object/from16 v2, v61

    move-object/from16 v3, v63

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->openSession(Landroid/view/IWindowSessionCallback;Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    move-result-object v68

    .line 86
    .local v68, "_result":Landroid/view/IWindowSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v68, :cond_3

    invoke-interface/range {v68 .. v68}, Landroid/view/IWindowSession;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 88
    const/4 v4, 0x1

    return v4

    .line 87
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 92
    .end local v52    # "_arg0":Landroid/view/IWindowSessionCallback;
    .end local v61    # "_arg1":Lcom/android/internal/view/IInputMethodClient;
    .end local v63    # "_arg2":Lcom/android/internal/view/IInputContext;
    .end local v68    # "_result":Landroid/view/IWindowSession;
    :sswitch_5
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v54

    .line 95
    .local v54, "_arg0":Lcom/android/internal/view/IInputMethodClient;
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v70

    .line 96
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v70, :cond_4

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    const/4 v4, 0x1

    return v4

    .line 97
    :cond_4
    const/4 v4, 0x0

    goto :goto_4

    .line 102
    .end local v54    # "_arg0":Lcom/android/internal/view/IInputMethodClient;
    .end local v70    # "_result":Z
    :sswitch_6
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 106
    .restart local v5    # "_arg0":I
    new-instance v59, Landroid/graphics/Point;

    invoke-direct/range {v59 .. v59}, Landroid/graphics/Point;-><init>()V

    .line 107
    .local v59, "_arg1":Landroid/graphics/Point;
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v5, v1}, Landroid/view/IWindowManager$Stub;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v59, :cond_5

    .line 110
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    const/4 v4, 0x1

    move-object/from16 v0, v59

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 116
    :goto_5
    const/4 v4, 0x1

    return v4

    .line 114
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 120
    .end local v5    # "_arg0":I
    .end local v59    # "_arg1":Landroid/graphics/Point;
    :sswitch_7
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 124
    .restart local v5    # "_arg0":I
    new-instance v59, Landroid/graphics/Point;

    invoke-direct/range {v59 .. v59}, Landroid/graphics/Point;-><init>()V

    .line 125
    .restart local v59    # "_arg1":Landroid/graphics/Point;
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v5, v1}, Landroid/view/IWindowManager$Stub;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 126
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v59, :cond_6

    .line 128
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    const/4 v4, 0x1

    move-object/from16 v0, v59

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 134
    :goto_6
    const/4 v4, 0x1

    return v4

    .line 132
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 138
    .end local v5    # "_arg0":I
    .end local v59    # "_arg1":Landroid/graphics/Point;
    :sswitch_8
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 142
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 144
    .local v6, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 145
    .local v7, "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Landroid/view/IWindowManager$Stub;->setForcedDisplaySize(III)V

    .line 146
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    const/4 v4, 0x1

    return v4

    .line 151
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :sswitch_9
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 154
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/IWindowManager$Stub;->clearForcedDisplaySize(I)V

    .line 155
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    const/4 v4, 0x1

    return v4

    .line 160
    .end local v5    # "_arg0":I
    :sswitch_a
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 163
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/IWindowManager$Stub;->getInitialDisplayDensity(I)I

    move-result v65

    .line 164
    .local v65, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    move-object/from16 v0, p3

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    const/4 v4, 0x1

    return v4

    .line 170
    .end local v5    # "_arg0":I
    .end local v65    # "_result":I
    :sswitch_b
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 173
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/IWindowManager$Stub;->getBaseDisplayDensity(I)I

    move-result v65

    .line 174
    .restart local v65    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    move-object/from16 v0, p3

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    const/4 v4, 0x1

    return v4

    .line 180
    .end local v5    # "_arg0":I
    .end local v65    # "_result":I
    :sswitch_c
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 184
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 185
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/view/IWindowManager$Stub;->setForcedDisplayDensity(II)V

    .line 186
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    const/4 v4, 0x1

    return v4

    .line 191
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_d
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 194
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/IWindowManager$Stub;->clearForcedDisplayDensity(I)V

    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    const/4 v4, 0x1

    return v4

    .line 200
    .end local v5    # "_arg0":I
    :sswitch_e
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 204
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 205
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/view/IWindowManager$Stub;->setForcedDisplayScalingMode(II)V

    .line 206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    const/4 v4, 0x1

    return v4

    .line 211
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_f
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 215
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 217
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 219
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 221
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "_arg4":I
    move-object/from16 v4, p0

    .line 222
    invoke-virtual/range {v4 .. v9}, Landroid/view/IWindowManager$Stub;->setOverscan(IIIII)V

    .line 223
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    const/4 v4, 0x1

    return v4

    .line 228
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    :sswitch_10
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 231
    .local v36, "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->pauseKeyDispatching(Landroid/os/IBinder;)V

    .line 232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    const/4 v4, 0x1

    return v4

    .line 237
    .end local v36    # "_arg0":Landroid/os/IBinder;
    :sswitch_11
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 240
    .restart local v36    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->resumeKeyDispatching(Landroid/os/IBinder;)V

    .line 241
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    const/4 v4, 0x1

    return v4

    .line 246
    .end local v36    # "_arg0":Landroid/os/IBinder;
    :sswitch_12
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    const/16 v56, 0x1

    .line 249
    .local v56, "_arg0":Z
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setEventDispatching(Z)V

    .line 250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    const/4 v4, 0x1

    return v4

    .line 248
    .end local v56    # "_arg0":Z
    :cond_7
    const/16 v56, 0x0

    .restart local v56    # "_arg0":Z
    goto :goto_7

    .line 255
    .end local v56    # "_arg0":Z
    :sswitch_13
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 259
    .restart local v36    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 260
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v6}, Landroid/view/IWindowManager$Stub;->addWindowToken(Landroid/os/IBinder;I)V

    .line 261
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    const/4 v4, 0x1

    return v4

    .line 266
    .end local v6    # "_arg1":I
    .end local v36    # "_arg0":Landroid/os/IBinder;
    :sswitch_14
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 269
    .restart local v36    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->removeWindowToken(Landroid/os/IBinder;)V

    .line 270
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    const/4 v4, 0x1

    return v4

    .line 275
    .end local v36    # "_arg0":Landroid/os/IBinder;
    :sswitch_15
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 279
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v12

    .line 281
    .local v12, "_arg1":Landroid/view/IApplicationToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 283
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 285
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 287
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    const/16 v16, 0x1

    .line 289
    .local v16, "_arg5":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    const/16 v17, 0x1

    .line 291
    .local v17, "_arg6":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 293
    .local v18, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 295
    .local v19, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    const/16 v20, 0x1

    .line 297
    .local v20, "_arg9":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    const/16 v21, 0x1

    .local v21, "_arg10":Z
    :goto_b
    move-object/from16 v10, p0

    move v11, v5

    move v13, v7

    move v14, v8

    move v15, v9

    .line 298
    invoke-virtual/range {v10 .. v21}, Landroid/view/IWindowManager$Stub;->addAppToken(ILandroid/view/IApplicationToken;IIIZZIIZZ)V

    .line 299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    const/4 v4, 0x1

    return v4

    .line 287
    .end local v16    # "_arg5":Z
    .end local v17    # "_arg6":Z
    .end local v18    # "_arg7":I
    .end local v19    # "_arg8":I
    .end local v20    # "_arg9":Z
    .end local v21    # "_arg10":Z
    :cond_8
    const/16 v16, 0x0

    .restart local v16    # "_arg5":Z
    goto :goto_8

    .line 289
    :cond_9
    const/16 v17, 0x0

    .restart local v17    # "_arg6":Z
    goto :goto_9

    .line 295
    .restart local v18    # "_arg7":I
    .restart local v19    # "_arg8":I
    :cond_a
    const/16 v20, 0x0

    .restart local v20    # "_arg9":Z
    goto :goto_a

    .line 297
    :cond_b
    const/16 v21, 0x0

    .restart local v21    # "_arg10":Z
    goto :goto_b

    .line 304
    .end local v5    # "_arg0":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v12    # "_arg1":Landroid/view/IApplicationToken;
    .end local v16    # "_arg5":Z
    .end local v17    # "_arg6":Z
    .end local v18    # "_arg7":I
    .end local v19    # "_arg8":I
    .end local v20    # "_arg9":Z
    .end local v21    # "_arg10":Z
    :sswitch_16
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 308
    .restart local v36    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 309
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v6}, Landroid/view/IWindowManager$Stub;->setAppTask(Landroid/os/IBinder;I)V

    .line 310
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    const/4 v4, 0x1

    return v4

    .line 315
    .end local v6    # "_arg1":I
    .end local v36    # "_arg0":Landroid/os/IBinder;
    :sswitch_17
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v49

    .line 319
    .local v49, "_arg0":Landroid/view/IApplicationToken;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 320
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v6}, Landroid/view/IWindowManager$Stub;->setAppOrientation(Landroid/view/IApplicationToken;I)V

    .line 321
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    const/4 v4, 0x1

    return v4

    .line 326
    .end local v6    # "_arg1":I
    .end local v49    # "_arg0":Landroid/view/IApplicationToken;
    :sswitch_18
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v49

    .line 329
    .restart local v49    # "_arg0":Landroid/view/IApplicationToken;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->getAppOrientation(Landroid/view/IApplicationToken;)I

    move-result v65

    .line 330
    .restart local v65    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    move-object/from16 v0, p3

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    const/4 v4, 0x1

    return v4

    .line 336
    .end local v49    # "_arg0":Landroid/view/IApplicationToken;
    .end local v65    # "_result":I
    :sswitch_19
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 340
    .restart local v36    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    const/16 v62, 0x1

    .line 341
    .local v62, "_arg1":Z
    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setFocusedApp(Landroid/os/IBinder;Z)V

    .line 342
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    const/4 v4, 0x1

    return v4

    .line 340
    .end local v62    # "_arg1":Z
    :cond_c
    const/16 v62, 0x0

    .restart local v62    # "_arg1":Z
    goto :goto_c

    .line 347
    .end local v36    # "_arg0":Landroid/os/IBinder;
    .end local v62    # "_arg1":Z
    :sswitch_1a
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 351
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_d

    const/16 v62, 0x1

    .line 352
    .restart local v62    # "_arg1":Z
    :goto_d
    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v5, v1}, Landroid/view/IWindowManager$Stub;->prepareAppTransition(IZ)V

    .line 353
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    const/4 v4, 0x1

    return v4

    .line 351
    .end local v62    # "_arg1":Z
    :cond_d
    const/16 v62, 0x0

    .restart local v62    # "_arg1":Z
    goto :goto_d

    .line 358
    .end local v5    # "_arg0":I
    .end local v62    # "_arg1":Z
    :sswitch_1b
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getPendingAppTransition()I

    move-result v65

    .line 360
    .restart local v65    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    move-object/from16 v0, p3

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    const/4 v4, 0x1

    return v4

    .line 366
    .end local v65    # "_result":I
    :sswitch_1c
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v55

    .line 370
    .local v55, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 372
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 374
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v26

    .line 375
    .local v26, "_arg3":Landroid/os/IRemoteCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V

    .line 376
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    const/4 v4, 0x1

    return v4

    .line 381
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v26    # "_arg3":Landroid/os/IRemoteCallback;
    .end local v55    # "_arg0":Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 385
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 387
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 389
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 390
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionScaleUp(IIII)V

    .line 391
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    const/4 v4, 0x1

    return v4

    .line 396
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    :sswitch_1e
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 400
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 402
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 404
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 405
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionClipReveal(IIII)V

    .line 406
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    const/4 v4, 0x1

    return v4

    .line 411
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    :sswitch_1f
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_e

    .line 414
    sget-object v4, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/graphics/Bitmap;

    .line 420
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 422
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 424
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v26

    .line 426
    .restart local v26    # "_arg3":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    const/16 v27, 0x1

    .local v27, "_arg4":Z
    :goto_f
    move-object/from16 v22, p0

    move/from16 v24, v6

    move/from16 v25, v7

    .line 427
    invoke-virtual/range {v22 .. v27}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Z)V

    .line 428
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    const/4 v4, 0x1

    return v4

    .line 417
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v26    # "_arg3":Landroid/os/IRemoteCallback;
    .end local v27    # "_arg4":Z
    :cond_e
    const/16 v23, 0x0

    .local v23, "_arg0":Landroid/graphics/Bitmap;
    goto :goto_e

    .line 426
    .end local v23    # "_arg0":Landroid/graphics/Bitmap;
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":I
    .restart local v26    # "_arg3":Landroid/os/IRemoteCallback;
    :cond_f
    const/16 v27, 0x0

    .restart local v27    # "_arg4":Z
    goto :goto_f

    .line 433
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v26    # "_arg3":Landroid/os/IRemoteCallback;
    .end local v27    # "_arg4":Z
    :sswitch_20
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    .line 436
    sget-object v4, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/graphics/Bitmap;

    .line 442
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 444
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 446
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 448
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 450
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v34

    .line 452
    .local v34, "_arg5":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    const/16 v17, 0x1

    .restart local v17    # "_arg6":Z
    :goto_11
    move-object/from16 v28, p0

    move-object/from16 v29, v23

    move/from16 v30, v6

    move/from16 v31, v7

    move/from16 v32, v8

    move/from16 v33, v9

    move/from16 v35, v17

    .line 453
    invoke-virtual/range {v28 .. v35}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/Bitmap;IIIILandroid/os/IRemoteCallback;Z)V

    .line 454
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    const/4 v4, 0x1

    return v4

    .line 439
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v17    # "_arg6":Z
    .end local v34    # "_arg5":Landroid/os/IRemoteCallback;
    :cond_10
    const/16 v23, 0x0

    .restart local v23    # "_arg0":Landroid/graphics/Bitmap;
    goto :goto_10

    .line 452
    .end local v23    # "_arg0":Landroid/graphics/Bitmap;
    .restart local v6    # "_arg1":I
    .restart local v7    # "_arg2":I
    .restart local v8    # "_arg3":I
    .restart local v9    # "_arg4":I
    .restart local v34    # "_arg5":Landroid/os/IRemoteCallback;
    :cond_11
    const/16 v17, 0x0

    .restart local v17    # "_arg6":Z
    goto :goto_11

    .line 459
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v17    # "_arg6":Z
    .end local v34    # "_arg5":Landroid/os/IRemoteCallback;
    :sswitch_21
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v55

    .line 463
    .restart local v55    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 464
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1, v6}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionInPlace(Ljava/lang/String;I)V

    .line 465
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    const/4 v4, 0x1

    return v4

    .line 470
    .end local v6    # "_arg1":I
    .end local v55    # "_arg0":Ljava/lang/String;
    :sswitch_22
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->executeAppTransition()V

    .line 472
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    const/4 v4, 0x1

    return v4

    .line 477
    :sswitch_23
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 481
    .restart local v36    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 483
    .local v37, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 485
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    .line 486
    sget-object v4, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/res/CompatibilityInfo;

    .line 492
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_13

    .line 493
    sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/CharSequence;

    .line 499
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .line 501
    .local v41, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 503
    .local v42, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 505
    .restart local v18    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 507
    .restart local v19    # "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v45

    .line 509
    .local v45, "_arg9":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    const/16 v21, 0x1

    .restart local v21    # "_arg10":Z
    :goto_14
    move-object/from16 v35, p0

    move/from16 v38, v7

    move/from16 v43, v18

    move/from16 v44, v19

    move/from16 v46, v21

    .line 510
    invoke-virtual/range {v35 .. v46}, Landroid/view/IWindowManager$Stub;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/os/IBinder;Z)V

    .line 511
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    const/4 v4, 0x1

    return v4

    .line 489
    .end local v18    # "_arg7":I
    .end local v19    # "_arg8":I
    .end local v21    # "_arg10":Z
    .end local v41    # "_arg5":I
    .end local v42    # "_arg6":I
    .end local v45    # "_arg9":Landroid/os/IBinder;
    :cond_12
    const/16 v39, 0x0

    .local v39, "_arg3":Landroid/content/res/CompatibilityInfo;
    goto :goto_12

    .line 496
    .end local v39    # "_arg3":Landroid/content/res/CompatibilityInfo;
    :cond_13
    const/16 v40, 0x0

    .local v40, "_arg4":Ljava/lang/CharSequence;
    goto :goto_13

    .line 509
    .end local v40    # "_arg4":Ljava/lang/CharSequence;
    .restart local v18    # "_arg7":I
    .restart local v19    # "_arg8":I
    .restart local v41    # "_arg5":I
    .restart local v42    # "_arg6":I
    .restart local v45    # "_arg9":Landroid/os/IBinder;
    :cond_14
    const/16 v21, 0x0

    .restart local v21    # "_arg10":Z
    goto :goto_14

    .line 516
    .end local v7    # "_arg2":I
    .end local v18    # "_arg7":I
    .end local v19    # "_arg8":I
    .end local v21    # "_arg10":Z
    .end local v36    # "_arg0":Landroid/os/IBinder;
    .end local v37    # "_arg1":Ljava/lang/String;
    .end local v41    # "_arg5":I
    .end local v42    # "_arg6":I
    .end local v45    # "_arg9":Landroid/os/IBinder;
    :sswitch_24
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 519
    .restart local v36    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setAppWillBeHidden(Landroid/os/IBinder;)V

    .line 520
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    const/4 v4, 0x1

    return v4

    .line 525
    .end local v36    # "_arg0":Landroid/os/IBinder;
    :sswitch_25
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 529
    .restart local v36    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15

    const/16 v62, 0x1

    .line 530
    .restart local v62    # "_arg1":Z
    :goto_15
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 531
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    const/4 v4, 0x1

    return v4

    .line 529
    .end local v62    # "_arg1":Z
    :cond_15
    const/16 v62, 0x0

    .restart local v62    # "_arg1":Z
    goto :goto_15

    .line 536
    .end local v36    # "_arg0":Landroid/os/IBinder;
    .end local v62    # "_arg1":Z
    :sswitch_26
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 540
    .restart local v36    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 541
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v6}, Landroid/view/IWindowManager$Stub;->startAppFreezingScreen(Landroid/os/IBinder;I)V

    .line 542
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    const/4 v4, 0x1

    return v4

    .line 547
    .end local v6    # "_arg1":I
    .end local v36    # "_arg0":Landroid/os/IBinder;
    :sswitch_27
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 551
    .restart local v36    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_16

    const/16 v62, 0x1

    .line 552
    .restart local v62    # "_arg1":Z
    :goto_16
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->stopAppFreezingScreen(Landroid/os/IBinder;Z)V

    .line 553
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    const/4 v4, 0x1

    return v4

    .line 551
    .end local v62    # "_arg1":Z
    :cond_16
    const/16 v62, 0x0

    .restart local v62    # "_arg1":Z
    goto :goto_16

    .line 558
    .end local v36    # "_arg0":Landroid/os/IBinder;
    .end local v62    # "_arg1":Z
    :sswitch_28
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 561
    .restart local v36    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->removeAppToken(Landroid/os/IBinder;)V

    .line 562
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    const/4 v4, 0x1

    return v4

    .line 567
    .end local v36    # "_arg0":Landroid/os/IBinder;
    :sswitch_29
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17

    .line 570
    sget-object v4, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/content/res/Configuration;

    .line 576
    :goto_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v60

    .line 577
    .local v60, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v66

    .line 578
    .local v66, "_result":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    if-eqz v66, :cond_18

    .line 580
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    const/4 v4, 0x1

    move-object/from16 v0, v66

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 586
    :goto_18
    const/4 v4, 0x1

    return v4

    .line 573
    .end local v60    # "_arg1":Landroid/os/IBinder;
    .end local v66    # "_result":Landroid/content/res/Configuration;
    :cond_17
    const/16 v47, 0x0

    .local v47, "_arg0":Landroid/content/res/Configuration;
    goto :goto_17

    .line 584
    .end local v47    # "_arg0":Landroid/content/res/Configuration;
    .restart local v60    # "_arg1":Landroid/os/IBinder;
    .restart local v66    # "_result":Landroid/content/res/Configuration;
    :cond_18
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18

    .line 590
    .end local v60    # "_arg1":Landroid/os/IBinder;
    .end local v66    # "_result":Landroid/content/res/Configuration;
    :sswitch_2a
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19

    .line 593
    sget-object v4, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Landroid/content/res/Configuration;

    .line 598
    :goto_19
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setNewConfiguration(Landroid/content/res/Configuration;)V

    .line 599
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    const/4 v4, 0x1

    return v4

    .line 596
    :cond_19
    const/16 v47, 0x0

    .restart local v47    # "_arg0":Landroid/content/res/Configuration;
    goto :goto_19

    .line 604
    .end local v47    # "_arg0":Landroid/content/res/Configuration;
    :sswitch_2b
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 608
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 609
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Landroid/view/IWindowManager$Stub;->startFreezingScreen(II)V

    .line 610
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    const/4 v4, 0x1

    return v4

    .line 615
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_2c
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->stopFreezingScreen()V

    .line 617
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    const/4 v4, 0x1

    return v4

    .line 622
    :sswitch_2d
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 626
    .restart local v36    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v37

    .line 627
    .restart local v37    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 628
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 629
    const/4 v4, 0x1

    return v4

    .line 633
    .end local v36    # "_arg0":Landroid/os/IBinder;
    .end local v37    # "_arg1":Ljava/lang/String;
    :sswitch_2e
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 635
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 636
    .restart local v36    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->reenableKeyguard(Landroid/os/IBinder;)V

    .line 637
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 638
    const/4 v4, 0x1

    return v4

    .line 642
    .end local v36    # "_arg0":Landroid/os/IBinder;
    :sswitch_2f
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IOnKeyguardExitResult$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOnKeyguardExitResult;

    move-result-object v50

    .line 645
    .local v50, "_arg0":Landroid/view/IOnKeyguardExitResult;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V

    .line 646
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    const/4 v4, 0x1

    return v4

    .line 651
    .end local v50    # "_arg0":Landroid/view/IOnKeyguardExitResult;
    :sswitch_30
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isKeyguardLocked()Z

    move-result v70

    .line 653
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 654
    if-eqz v70, :cond_1a

    const/4 v4, 0x1

    :goto_1a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 655
    const/4 v4, 0x1

    return v4

    .line 654
    :cond_1a
    const/4 v4, 0x0

    goto :goto_1a

    .line 659
    .end local v70    # "_result":Z
    :sswitch_31
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isKeyguardSecure()Z

    move-result v70

    .line 661
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    if-eqz v70, :cond_1b

    const/4 v4, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    const/4 v4, 0x1

    return v4

    .line 662
    :cond_1b
    const/4 v4, 0x0

    goto :goto_1b

    .line 667
    .end local v70    # "_result":Z
    :sswitch_32
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->inKeyguardRestrictedInputMode()Z

    move-result v70

    .line 669
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    if-eqz v70, :cond_1c

    const/4 v4, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    const/4 v4, 0x1

    return v4

    .line 670
    :cond_1c
    const/4 v4, 0x0

    goto :goto_1c

    .line 675
    .end local v70    # "_result":Z
    :sswitch_33
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 676
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->dismissKeyguard()V

    .line 677
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    const/4 v4, 0x1

    return v4

    .line 682
    :sswitch_34
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 684
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v56, 0x1

    .line 686
    .restart local v56    # "_arg0":Z
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1e

    const/16 v62, 0x1

    .line 687
    .restart local v62    # "_arg1":Z
    :goto_1e
    move-object/from16 v0, p0

    move/from16 v1, v56

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->keyguardGoingAway(ZZ)V

    .line 688
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 689
    const/4 v4, 0x1

    return v4

    .line 684
    .end local v56    # "_arg0":Z
    .end local v62    # "_arg1":Z
    :cond_1d
    const/16 v56, 0x0

    .restart local v56    # "_arg0":Z
    goto :goto_1d

    .line 686
    :cond_1e
    const/16 v62, 0x0

    .restart local v62    # "_arg1":Z
    goto :goto_1e

    .line 693
    .end local v56    # "_arg0":Z
    .end local v62    # "_arg1":Z
    :sswitch_35
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v55

    .line 696
    .restart local v55    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 697
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    const/4 v4, 0x1

    return v4

    .line 702
    .end local v55    # "_arg0":Ljava/lang/String;
    :sswitch_36
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 704
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 705
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/IWindowManager$Stub;->getAnimationScale(I)F

    move-result v64

    .line 706
    .local v64, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    move-object/from16 v0, p3

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 708
    const/4 v4, 0x1

    return v4

    .line 712
    .end local v5    # "_arg0":I
    .end local v64    # "_result":F
    :sswitch_37
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 713
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getAnimationScales()[F

    move-result-object v71

    .line 714
    .local v71, "_result":[F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    move-object/from16 v0, p3

    move-object/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 716
    const/4 v4, 0x1

    return v4

    .line 720
    .end local v71    # "_result":[F
    :sswitch_38
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 722
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 724
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v58

    .line 725
    .local v58, "_arg1":F
    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v5, v1}, Landroid/view/IWindowManager$Stub;->setAnimationScale(IF)V

    .line 726
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    const/4 v4, 0x1

    return v4

    .line 731
    .end local v5    # "_arg0":I
    .end local v58    # "_arg1":F
    :sswitch_39
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 733
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v57

    .line 734
    .local v57, "_arg0":[F
    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setAnimationScales([F)V

    .line 735
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 736
    const/4 v4, 0x1

    return v4

    .line 740
    .end local v57    # "_arg0":[F
    :sswitch_3a
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 741
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getCurrentAnimatorScale()F

    move-result v64

    .line 742
    .restart local v64    # "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 743
    move-object/from16 v0, p3

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 744
    const/4 v4, 0x1

    return v4

    .line 748
    .end local v64    # "_result":F
    :sswitch_3b
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f

    const/16 v56, 0x1

    .line 751
    .restart local v56    # "_arg0":Z
    :goto_1f
    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setInTouchMode(Z)V

    .line 752
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    const/4 v4, 0x1

    return v4

    .line 750
    .end local v56    # "_arg0":Z
    :cond_1f
    const/16 v56, 0x0

    .restart local v56    # "_arg0":Z
    goto :goto_1f

    .line 757
    .end local v56    # "_arg0":Z
    :sswitch_3c
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 759
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_20

    const/16 v56, 0x1

    .line 760
    .restart local v56    # "_arg0":Z
    :goto_20
    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->showStrictModeViolation(Z)V

    .line 761
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    const/4 v4, 0x1

    return v4

    .line 759
    .end local v56    # "_arg0":Z
    :cond_20
    const/16 v56, 0x0

    .restart local v56    # "_arg0":Z
    goto :goto_20

    .line 766
    .end local v56    # "_arg0":Z
    :sswitch_3d
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v55

    .line 769
    .restart local v55    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 770
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    const/4 v4, 0x1

    return v4

    .line 775
    .end local v55    # "_arg0":Ljava/lang/String;
    :sswitch_3e
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 777
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 779
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_21

    const/16 v62, 0x1

    .line 780
    .restart local v62    # "_arg1":Z
    :goto_21
    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-virtual {v0, v5, v1}, Landroid/view/IWindowManager$Stub;->setScreenCaptureDisabled(IZ)V

    .line 781
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    const/4 v4, 0x1

    return v4

    .line 779
    .end local v62    # "_arg1":Z
    :cond_21
    const/16 v62, 0x0

    .restart local v62    # "_arg1":Z
    goto :goto_21

    .line 786
    .end local v5    # "_arg0":I
    .end local v62    # "_arg1":Z
    :sswitch_3f
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 788
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_22

    const/16 v56, 0x1

    .line 790
    .restart local v56    # "_arg0":Z
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_23

    const/16 v62, 0x1

    .line 791
    .restart local v62    # "_arg1":Z
    :goto_23
    move-object/from16 v0, p0

    move/from16 v1, v56

    move/from16 v2, v62

    invoke-virtual {v0, v1, v2}, Landroid/view/IWindowManager$Stub;->updateRotation(ZZ)V

    .line 792
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    const/4 v4, 0x1

    return v4

    .line 788
    .end local v56    # "_arg0":Z
    .end local v62    # "_arg1":Z
    :cond_22
    const/16 v56, 0x0

    .restart local v56    # "_arg0":Z
    goto :goto_22

    .line 790
    :cond_23
    const/16 v62, 0x0

    .restart local v62    # "_arg1":Z
    goto :goto_23

    .line 797
    .end local v56    # "_arg0":Z
    .end local v62    # "_arg1":Z
    :sswitch_40
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 798
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getRotation()I

    move-result v65

    .line 799
    .restart local v65    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    move-object/from16 v0, p3

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    const/4 v4, 0x1

    return v4

    .line 805
    .end local v65    # "_result":I
    :sswitch_41
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v51

    .line 808
    .local v51, "_arg0":Landroid/view/IRotationWatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v65

    .line 809
    .restart local v65    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    move-object/from16 v0, p3

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 811
    const/4 v4, 0x1

    return v4

    .line 815
    .end local v51    # "_arg0":Landroid/view/IRotationWatcher;
    .end local v65    # "_result":I
    :sswitch_42
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v51

    .line 818
    .restart local v51    # "_arg0":Landroid/view/IRotationWatcher;
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 819
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    const/4 v4, 0x1

    return v4

    .line 824
    .end local v51    # "_arg0":Landroid/view/IRotationWatcher;
    :sswitch_43
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 825
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->getPreferredOptionsPanelGravity()I

    move-result v65

    .line 826
    .restart local v65    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 827
    move-object/from16 v0, p3

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 828
    const/4 v4, 0x1

    return v4

    .line 832
    .end local v65    # "_result":I
    :sswitch_44
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 835
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/IWindowManager$Stub;->freezeRotation(I)V

    .line 836
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    const/4 v4, 0x1

    return v4

    .line 841
    .end local v5    # "_arg0":I
    :sswitch_45
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 842
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->thawRotation()V

    .line 843
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 844
    const/4 v4, 0x1

    return v4

    .line 848
    :sswitch_46
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 849
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isRotationFrozen()Z

    move-result v70

    .line 850
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 851
    if-eqz v70, :cond_24

    const/4 v4, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 852
    const/4 v4, 0x1

    return v4

    .line 851
    :cond_24
    const/4 v4, 0x0

    goto :goto_24

    .line 856
    .end local v70    # "_result":Z
    :sswitch_47
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 858
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/app/IAssistScreenshotReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAssistScreenshotReceiver;

    move-result-object v53

    .line 859
    .local v53, "_arg0":Lcom/android/internal/app/IAssistScreenshotReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->requestAssistScreenshot(Lcom/android/internal/app/IAssistScreenshotReceiver;)Z

    move-result v70

    .line 860
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 861
    if-eqz v70, :cond_25

    const/4 v4, 0x1

    :goto_25
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 862
    const/4 v4, 0x1

    return v4

    .line 861
    :cond_25
    const/4 v4, 0x0

    goto :goto_25

    .line 866
    .end local v53    # "_arg0":Lcom/android/internal/app/IAssistScreenshotReceiver;
    .end local v70    # "_result":Z
    :sswitch_48
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 870
    .restart local v36    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 872
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 874
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 875
    .restart local v8    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/view/IWindowManager$Stub;->screenshotApplications(Landroid/os/IBinder;III)Landroid/graphics/Bitmap;

    move-result-object v67

    .line 876
    .local v67, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 877
    if-eqz v67, :cond_26

    .line 878
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 879
    const/4 v4, 0x1

    move-object/from16 v0, v67

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 884
    :goto_26
    const/4 v4, 0x1

    return v4

    .line 882
    :cond_26
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 888
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v36    # "_arg0":Landroid/os/IBinder;
    .end local v67    # "_result":Landroid/graphics/Bitmap;
    :sswitch_49
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 891
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/view/IWindowManager$Stub;->statusBarVisibilityChanged(I)V

    .line 892
    const/4 v4, 0x1

    return v4

    .line 896
    .end local v5    # "_arg0":I
    :sswitch_4a
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 897
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->hasNavigationBar()Z

    move-result v70

    .line 898
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 899
    if-eqz v70, :cond_27

    const/4 v4, 0x1

    :goto_27
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 900
    const/4 v4, 0x1

    return v4

    .line 899
    :cond_27
    const/4 v4, 0x0

    goto :goto_27

    .line 904
    .end local v70    # "_result":Z
    :sswitch_4b
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 906
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_28

    .line 907
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/os/Bundle;

    .line 912
    :goto_28
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->lockNow(Landroid/os/Bundle;)V

    .line 913
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    const/4 v4, 0x1

    return v4

    .line 910
    :cond_28
    const/16 v48, 0x0

    .local v48, "_arg0":Landroid/os/Bundle;
    goto :goto_28

    .line 918
    .end local v48    # "_arg0":Landroid/os/Bundle;
    :sswitch_4c
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 919
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->isSafeModeEnabled()Z

    move-result v70

    .line 920
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 921
    if-eqz v70, :cond_29

    const/4 v4, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 922
    const/4 v4, 0x1

    return v4

    .line 921
    :cond_29
    const/4 v4, 0x0

    goto :goto_29

    .line 926
    .end local v70    # "_result":Z
    :sswitch_4d
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 927
    invoke-virtual/range {p0 .. p0}, Landroid/view/IWindowManager$Stub;->enableScreenIfNeeded()V

    .line 928
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    const/4 v4, 0x1

    return v4

    .line 933
    :sswitch_4e
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 935
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 936
    .restart local v36    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->clearWindowContentFrameStats(Landroid/os/IBinder;)Z

    move-result v70

    .line 937
    .restart local v70    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    if-eqz v70, :cond_2a

    const/4 v4, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 939
    const/4 v4, 0x1

    return v4

    .line 938
    :cond_2a
    const/4 v4, 0x0

    goto :goto_2a

    .line 943
    .end local v36    # "_arg0":Landroid/os/IBinder;
    .end local v70    # "_result":Z
    :sswitch_4f
    const-string/jumbo v4, "android.view.IWindowManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v36

    .line 946
    .restart local v36    # "_arg0":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/IWindowManager$Stub;->getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;

    move-result-object v69

    .line 947
    .local v69, "_result":Landroid/view/WindowContentFrameStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 948
    if-eqz v69, :cond_2b

    .line 949
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 950
    const/4 v4, 0x1

    move-object/from16 v0, v69

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/view/WindowContentFrameStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 955
    :goto_2b
    const/4 v4, 0x1

    return v4

    .line 953
    :cond_2b
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2b

    .line 43
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
