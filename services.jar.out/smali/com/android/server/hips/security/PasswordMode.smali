.class public Lcom/android/server/hips/security/PasswordMode;
.super Ljava/lang/Object;
.source "PasswordMode.java"


# static fields
.field private static final HIPS_EVENT_NAME:Ljava/lang/String; = "hips.event.cfg"

.field private static final NORMAL_MODE:I = 0x0

.field private static final NORMAL_PWD:I = 0x81

.field private static final NUM_PWD:I = 0x12

.field private static final PASSWORD_MODE:I = 0x1

.field public static final SECURITY_KEYBOARD_OFF:I = 0x0

.field public static final SECURITY_KEYBOARD_ON:I = 0x1

.field private static final SPECIAL_PWD:I = 0x20081

.field private static final STORAGE_PATH:Ljava/lang/String; = "/data/system"

.field private static final TAG:Ljava/lang/String; = "PasswordMode"

.field public static final TYPE_INPUT_FOCUS_CHANGED:I = 0x1

.field public static final TYPE_WINDOW_FOCUS_CHANGED:I = 0x0

.field private static final VISIBLE_PWD:I = 0x91

.field private static final WEB_PWD:I = 0xe1

.field private static volatile mPasswordMode:Lcom/android/server/hips/security/PasswordMode;


# instance fields
.field private mIsInPasswordMode:Z

.field private mIsInputChangeToSystem:Z

.field private mIsPasswordModeSwitchOn:Z

.field private mOriginalMethodId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/hips/security/PasswordMode;->mPasswordMode:Lcom/android/server/hips/security/PasswordMode;

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/hips/security/PasswordMode;->mOriginalMethodId:Ljava/lang/String;

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/hips/security/PasswordMode;->mIsPasswordModeSwitchOn:Z

    .line 42
    iput-boolean v1, p0, Lcom/android/server/hips/security/PasswordMode;->mIsInPasswordMode:Z

    .line 43
    iput-boolean v1, p0, Lcom/android/server/hips/security/PasswordMode;->mIsInputChangeToSystem:Z

    .line 45
    return-void
.end method

.method public static getInstance()Lcom/android/server/hips/security/PasswordMode;
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcom/android/server/hips/security/PasswordMode;->mPasswordMode:Lcom/android/server/hips/security/PasswordMode;

    if-nez v0, :cond_1

    .line 50
    const-class v1, Lcom/android/server/hips/security/PasswordMode;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Lcom/android/server/hips/security/PasswordMode;->mPasswordMode:Lcom/android/server/hips/security/PasswordMode;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/android/server/hips/security/PasswordMode;

    invoke-direct {v0}, Lcom/android/server/hips/security/PasswordMode;-><init>()V

    sput-object v0, Lcom/android/server/hips/security/PasswordMode;->mPasswordMode:Lcom/android/server/hips/security/PasswordMode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 56
    :cond_1
    sget-object v0, Lcom/android/server/hips/security/PasswordMode;->mPasswordMode:Lcom/android/server/hips/security/PasswordMode;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getUidByPkgName(Ljava/lang/String;)I
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 176
    const/4 v3, -0x1

    .line 177
    .local v3, "result":I
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 179
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 182
    const/4 v4, 0x1

    .line 181
    :try_start_0
    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 183
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 184
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v3

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "PasswordMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to get App info for pkg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isPasswordType(II)Z
    .locals 2
    .param p1, "inputType"    # I
    .param p2, "controlFlags"    # I

    .prologue
    .line 164
    const/4 v0, 0x0

    .line 166
    .local v0, "result":Z
    const/16 v1, 0x12

    if-eq p1, v1, :cond_0

    const/16 v1, 0x81

    if-ne p1, v1, :cond_2

    .line 169
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 172
    :cond_1
    return v0

    .line 167
    :cond_2
    const/16 v1, 0x91

    if-eq p1, v1, :cond_0

    const/16 v1, 0xe1

    if-eq p1, v1, :cond_0

    .line 168
    const v1, 0x20081

    if-ne p1, v1, :cond_1

    goto :goto_0
.end method

.method private isShouldChangeInputMethod()Z
    .locals 3

    .prologue
    .line 134
    invoke-static {}, Lcom/android/server/hips/utils/HipsUtils;->getTopActivityName()Landroid/content/ComponentName;

    move-result-object v0

    .line 135
    .local v0, "topActivityName":Landroid/content/ComponentName;
    const-string/jumbo v1, ""

    .line 136
    .local v1, "topClass":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 140
    :cond_0
    const-string/jumbo v2, "com.meizu.flyme.launcher.Launcher"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 141
    const-string/jumbo v2, "com.android.settings.SubSettings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 140
    if-eqz v2, :cond_2

    .line 142
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 145
    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private readSecurityBoardSwitchState()I
    .locals 5

    .prologue
    .line 149
    const/4 v1, -0x1

    .line 151
    .local v1, "state":I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 152
    const-string/jumbo v3, "mz_safe_keyboard"

    .line 151
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 155
    :goto_0
    if-gez v1, :cond_0

    .line 156
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 157
    const-string/jumbo v3, "mz_safe_keyboard"

    const/4 v4, 0x1

    .line 156
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 160
    :cond_0
    return v1

    .line 153
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public getPasswordModeSwitchState()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/server/hips/security/PasswordMode;->mIsPasswordModeSwitchOn:Z

    return v0
.end method

.method public isInPasswordMode()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/android/server/hips/security/PasswordMode;->mIsPasswordModeSwitchOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/hips/security/PasswordMode;->mIsInPasswordMode:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPasswordModeSwitchState(Z)V
    .locals 0
    .param p1, "isOn"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/server/hips/security/PasswordMode;->mIsPasswordModeSwitchOn:Z

    .line 59
    return-void
.end method

.method public updatePasswordModeState(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 10
    .param p1, "methodId"    # Ljava/lang/String;
    .param p2, "focusedPkg"    # Ljava/lang/String;
    .param p3, "inputType"    # I
    .param p4, "focusType"    # I

    .prologue
    .line 73
    iget-boolean v7, p0, Lcom/android/server/hips/security/PasswordMode;->mIsPasswordModeSwitchOn:Z

    if-nez v7, :cond_0

    .line 74
    const-string/jumbo v7, "PasswordMode"

    .line 75
    const-string/jumbo v8, "updatePasswordModeState, the switch of password mode is off, return."

    .line 74
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void

    .line 79
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 80
    :cond_1
    return-void

    .line 83
    :cond_2
    invoke-direct {p0, p3, p4}, Lcom/android/server/hips/security/PasswordMode;->isPasswordType(II)Z

    move-result v3

    .line 84
    .local v3, "isPasswordType":Z
    if-nez v3, :cond_3

    iget-boolean v7, p0, Lcom/android/server/hips/security/PasswordMode;->mIsInputChangeToSystem:Z

    if-eqz v7, :cond_3

    .line 85
    if-nez p4, :cond_3

    .line 86
    invoke-direct {p0}, Lcom/android/server/hips/security/PasswordMode;->isShouldChangeInputMethod()Z

    move-result v7

    .line 84
    if-eqz v7, :cond_3

    .line 87
    iget-object v7, p0, Lcom/android/server/hips/security/PasswordMode;->mOriginalMethodId:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/server/hips/utils/HipsUtils;->changeInputMethod(Ljava/lang/String;)V

    .line 88
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/hips/security/PasswordMode;->mIsInputChangeToSystem:Z

    .line 92
    :cond_3
    iget-boolean v7, p0, Lcom/android/server/hips/security/PasswordMode;->mIsInPasswordMode:Z

    if-ne v3, v7, :cond_4

    .line 93
    return-void

    .line 96
    :cond_4
    iput-boolean v3, p0, Lcom/android/server/hips/security/PasswordMode;->mIsInPasswordMode:Z

    .line 97
    invoke-direct {p0}, Lcom/android/server/hips/security/PasswordMode;->readSecurityBoardSwitchState()I

    move-result v7

    if-eqz v7, :cond_5

    .line 98
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 106
    :cond_5
    :goto_0
    const-string/jumbo v7, "PasswordMode"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updatePasswordModeState, inputType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 107
    const-string/jumbo v9, " isInPasswordMode: "

    .line 106
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 107
    iget-boolean v9, p0, Lcom/android/server/hips/security/PasswordMode;->mIsInPasswordMode:Z

    .line 106
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string/jumbo v7, "SurfaceFlinger"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 111
    .local v5, "surfaceFlinger":Landroid/os/IBinder;
    if-eqz v5, :cond_6

    .line 113
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 114
    .local v0, "data":Landroid/os/Parcel;
    const-string/jumbo v7, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 115
    const-string/jumbo v7, "com.android.systemui"

    invoke-direct {p0, v7}, Lcom/android/server/hips/security/PasswordMode;->getUidByPkgName(Ljava/lang/String;)I

    move-result v6

    .line 116
    .local v6, "uid":I
    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-boolean v7, p0, Lcom/android/server/hips/security/PasswordMode;->mIsInPasswordMode:Z

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    const/16 v7, 0x4e21

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v5, v7, v0, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v6    # "uid":I
    :cond_6
    :goto_2
    const-string/jumbo v2, "/data/system/hips.event.cfg"

    .line 128
    .local v2, "filePath":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/android/server/hips/security/PasswordMode;->mIsInPasswordMode:Z

    if-eqz v7, :cond_9

    const/4 v4, 0x1

    .line 129
    .local v4, "state":I
    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/android/server/hips/utils/HipsUtils;->saveInfoToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void

    .line 99
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v4    # "state":I
    .end local v5    # "surfaceFlinger":Landroid/os/IBinder;
    :cond_7
    iget-boolean v7, p0, Lcom/android/server/hips/security/PasswordMode;->mIsInPasswordMode:Z

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/android/server/hips/security/PasswordMode;->mIsInputChangeToSystem:Z

    if-nez v7, :cond_5

    .line 100
    iput-object p1, p0, Lcom/android/server/hips/security/PasswordMode;->mOriginalMethodId:Ljava/lang/String;

    .line 101
    const-string/jumbo v7, "com.meizu.flyme.input/com.meizu.input.MzInputService"

    invoke-static {v7}, Lcom/android/server/hips/utils/HipsUtils;->changeInputMethod(Ljava/lang/String;)V

    .line 102
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/hips/security/PasswordMode;->mIsInputChangeToSystem:Z

    goto :goto_0

    .line 117
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v5    # "surfaceFlinger":Landroid/os/IBinder;
    .restart local v6    # "uid":I
    :cond_8
    const/4 v7, 0x0

    goto :goto_1

    .line 120
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v6    # "uid":I
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "PasswordMode"

    const-string/jumbo v8, "Unable to update the state of screenshot"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 128
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v2    # "filePath":Ljava/lang/String;
    :cond_9
    const/4 v4, 0x0

    .restart local v4    # "state":I
    goto :goto_3
.end method
