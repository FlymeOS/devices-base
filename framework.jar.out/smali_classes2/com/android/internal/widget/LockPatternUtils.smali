.class public Lcom/android/internal/widget/LockPatternUtils;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;,
        Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
    }
.end annotation


# static fields
.field public static final BIOMETRIC_WEAK_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.biometricweakeverchosen"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field public static final DISABLE_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.disabled"

.field private static final ENABLED_TRUST_AGENTS:Ljava/lang/String; = "lockscreen.enabledtrustagents"

.field public static final FAILED_ATTEMPTS_BEFORE_RESET:I = 0x14

.field public static final FAILED_ATTEMPTS_BEFORE_WIPE_GRACE:I = 0x5

.field public static final FAILED_ATTEMPT_COUNTDOWN_INTERVAL_MS:J = 0x3e8L

.field public static final LEGACY_LOCK_PATTERN_ENABLED:Ljava/lang/String; = "legacy_lock_pattern_enabled"

.field public static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field public static final LOCKOUT_ATTEMPT_TIMEOUT_MS:Ljava/lang/String; = "lockscreen.lockoutattempttimeoutmss"

.field public static final LOCKOUT_PERMANENT_KEY:Ljava/lang/String; = "lockscreen.lockedoutpermanently"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCKSCREEN_BIOMETRIC_WEAK_FALLBACK:Ljava/lang/String; = "lockscreen.biometric_weak_fallback"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCKSCREEN_OPTIONS:Ljava/lang/String; = "lockscreen.options"

.field public static final LOCKSCREEN_POWER_BUTTON_INSTANTLY_LOCKS:Ljava/lang/String; = "lockscreen.power_button_instantly_locks"

.field public static final LOCKSCREEN_WIDGETS_ENABLED:Ljava/lang/String; = "lockscreen.widgets_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PASSWORD_SALT_KEY:Ljava/lang/String; = "lockscreen.password_salt"

.field private static final LOCK_SCREEN_OWNER_INFO:Ljava/lang/String; = "lock_screen_owner_info"

.field private static final LOCK_SCREEN_OWNER_INFO_ENABLED:Ljava/lang/String; = "lock_screen_owner_info_enabled"

.field public static final MAX_ALLOWED_SEQUENCE:I = 0x3

.field public static final MIN_LOCK_PASSWORD_SIZE:I = 0x4

.field public static final MIN_LOCK_PATTERN_SIZE:I = 0x4

.field public static final MIN_PATTERN_REGISTER_FAIL:I = 0x4

.field public static final PASSWORD_HISTORY_KEY:Ljava/lang/String; = "lockscreen.passwordhistory"

.field public static final PASSWORD_TYPE_ALTERNATE_KEY:Ljava/lang/String; = "lockscreen.password_type_alternate"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field public static final PATTERN_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.patterneverchosen"

.field private static final TAG:Ljava/lang/String; = "LockPatternUtils"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 183
    return-void
.end method

.method private static categoryChar(C)I
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 611
    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 612
    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 613
    :cond_1
    const/16 v0, 0x30

    if-gt v0, p0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    const/4 v0, 0x2

    return v0

    .line 614
    :cond_2
    const/4 v0, 0x3

    return v0
.end method

.method public static computePasswordQuality(Ljava/lang/String;)I
    .locals 6
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    .line 585
    const/4 v0, 0x0

    .line 586
    .local v0, "hasDigit":Z
    const/4 v1, 0x0

    .line 587
    .local v1, "hasNonDigit":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 588
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 589
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 590
    const/4 v0, 0x1

    .line 588
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 592
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 596
    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 597
    const/high16 v4, 0x50000

    return v4

    .line 599
    :cond_2
    if-eqz v1, :cond_3

    .line 600
    const/high16 v4, 0x40000

    return v4

    .line 602
    :cond_3
    if-eqz v0, :cond_5

    .line 603
    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->maxLengthSequence(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_4

    .line 604
    const/high16 v4, 0x20000

    .line 603
    :goto_2
    return v4

    .line 605
    :cond_4
    const/high16 v4, 0x30000

    goto :goto_2

    .line 607
    :cond_5
    const/4 v4, 0x0

    return v4
.end method

.method private getBoolean(Ljava/lang/String;ZI)Z
    .locals 2
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 1113
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1114
    :catch_0
    move-exception v0

    .line 1115
    .local v0, "re":Landroid/os/RemoteException;
    return p2
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 2

    .prologue
    .line 189
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v1, :cond_0

    .line 191
    const-string/jumbo v1, "lock_settings"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 190
    invoke-static {v1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .line 192
    .local v0, "service":Lcom/android/internal/widget/ILockSettings;
    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 194
    .end local v0    # "service":Lcom/android/internal/widget/ILockSettings;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v1
.end method

.method private getLong(Ljava/lang/String;JI)J
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 1130
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 1131
    :catch_0
    move-exception v0

    .line 1132
    .local v0, "re":Landroid/os/RemoteException;
    return-wide p2
.end method

.method private getRequestedPasswordHistoryLength(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method private getSalt(I)Ljava/lang/String;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v4, 0x0

    .line 920
    const-string/jumbo v1, "lockscreen.password_salt"

    invoke-direct {p0, v1, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    .line 921
    .local v2, "salt":J
    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 923
    :try_start_0
    const-string/jumbo v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    .line 924
    const-string/jumbo v1, "lockscreen.password_salt"

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 925
    const-string/jumbo v1, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Initialized lock password salt for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 926
    :catch_0
    move-exception v0

    .line 928
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Couldn\'t get SecureRandom number"

    invoke-direct {v1, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 1147
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, p2}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1148
    :catch_0
    move-exception v0

    .line 1149
    .local v0, "re":Landroid/os/RemoteException;
    return-object v3
.end method

.method private getTrustManager()Landroid/app/trust/TrustManager;
    .locals 5

    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "trust"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    .line 176
    .local v0, "trust":Landroid/app/trust/TrustManager;
    if-nez v0, :cond_0

    .line 177
    const-string/jumbo v1, "LockPatternUtils"

    const-string/jumbo v2, "Can\'t get TrustManagerService: is it running?"

    .line 178
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Stack trace:"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    :cond_0
    return-object v0
.end method

.method public static isDeviceEncrypted()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 800
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 799
    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 802
    .local v0, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    invoke-interface {v0}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v4

    if-eq v4, v2, :cond_1

    .line 803
    invoke-interface {v0}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eq v4, v2, :cond_0

    .line 802
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 803
    goto :goto_0

    :cond_1
    move v2, v3

    .line 802
    goto :goto_0

    .line 804
    :catch_0
    move-exception v1

    .line 805
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "LockPatternUtils"

    const-string/jumbo v4, "Error getting encryption state"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 807
    return v2
.end method

.method public static isDeviceEncryptionEnabled()Z
    .locals 3

    .prologue
    .line 817
    const-string/jumbo v1, "ro.crypto.state"

    const-string/jumbo v2, "unsupported"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 818
    .local v0, "status":Ljava/lang/String;
    const-string/jumbo v1, "encrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isDoNotAskCredentialsOnBootSet()Z
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result v0

    return v0
.end method

.method private isLockPasswordEnabled(II)Z
    .locals 2
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .prologue
    .line 978
    const/high16 v1, 0x40000

    if-eq p1, v1, :cond_0

    .line 979
    const/high16 v1, 0x20000

    if-ne p1, v1, :cond_1

    .line 978
    :cond_0
    const/4 v0, 0x1

    .line 983
    .local v0, "passwordEnabled":Z
    :goto_0
    if-eqz v0, :cond_3

    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists(I)Z

    move-result v1

    :goto_1
    return v1

    .line 980
    .end local v0    # "passwordEnabled":Z
    :cond_1
    const/high16 v1, 0x30000

    if-eq p1, v1, :cond_0

    .line 981
    const/high16 v1, 0x50000

    if-eq p1, v1, :cond_0

    .line 982
    const/high16 v1, 0x60000

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    .restart local v0    # "passwordEnabled":Z
    goto :goto_0

    .end local v0    # "passwordEnabled":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "passwordEnabled":Z
    goto :goto_0

    .line 983
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private isLockPatternEnabled(II)Z
    .locals 1
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .prologue
    .line 1007
    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_0

    .line 1008
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists(I)Z

    move-result v0

    .line 1007
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static maxDiffCategory(I)I
    .locals 2
    .param p0, "category"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 618
    if-eqz p0, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    return v0

    .line 619
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const/16 v0, 0xa

    return v0

    .line 620
    :cond_2
    return v1
.end method

.method public static maxLengthSequence(Ljava/lang/String;)I
    .locals 12
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 640
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_0

    return v11

    .line 641
    :cond_0
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 642
    .local v8, "previousChar":C
    invoke-static {v8}, Lcom/android/internal/widget/LockPatternUtils;->categoryChar(C)I

    move-result v0

    .line 643
    .local v0, "category":I
    const/4 v5, 0x0

    .line 644
    .local v5, "diff":I
    const/4 v6, 0x0

    .line 645
    .local v6, "hasDiff":Z
    const/4 v7, 0x0

    .line 646
    .local v7, "maxLength":I
    const/4 v9, 0x0

    .line 647
    .local v9, "startSequence":I
    const/4 v2, 0x1

    .local v2, "current":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v2, v10, :cond_4

    .line 648
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 649
    .local v3, "currentChar":C
    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->categoryChar(C)I

    move-result v1

    .line 650
    .local v1, "categoryCurrent":I
    sub-int v4, v3, v8

    .line 651
    .local v4, "currentDiff":I
    if-ne v1, v0, :cond_1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->maxDiffCategory(I)I

    move-result v11

    if-le v10, v11, :cond_2

    .line 652
    :cond_1
    sub-int v10, v2, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 653
    move v9, v2

    .line 654
    const/4 v6, 0x0

    .line 655
    move v0, v1

    .line 665
    :goto_1
    move v8, v3

    .line 647
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 658
    :cond_2
    if-eqz v6, :cond_3

    if-eq v4, v5, :cond_3

    .line 659
    sub-int v10, v2, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 660
    add-int/lit8 v9, v2, -0x1

    .line 662
    :cond_3
    move v5, v4

    .line 663
    const/4 v6, 0x1

    goto :goto_1

    .line 667
    .end local v1    # "categoryCurrent":I
    .end local v3    # "currentChar":C
    .end local v4    # "currentDiff":I
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 668
    return v7
.end method

.method private onAfterChangingPassword(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    .line 1227
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    .line 1226
    return-void
.end method

.method public static patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "pattern"    # Ljava/lang/String;

    .prologue
    .line 879
    if-nez p0, :cond_0

    .line 880
    const-string/jumbo v4, ""

    return-object v4

    .line 882
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 884
    .local v2, "patternSize":I
    new-array v3, v2, [B

    .line 885
    .local v3, "res":[B
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 886
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 887
    aget-byte v4, v0, v1

    add-int/lit8 v4, v4, -0x31

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 886
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 889
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    return-object v4
.end method

.method public static patternToHash(Ljava/util/List;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v7, 0x0

    .line 900
    if-nez p0, :cond_0

    .line 901
    return-object v7

    .line 904
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .line 905
    .local v5, "patternSize":I
    new-array v6, v5, [B

    .line 906
    .local v6, "res":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 907
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 908
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    .line 906
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 911
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    :try_start_0
    const-string/jumbo v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 912
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 913
    .local v1, "hash":[B
    return-object v1

    .line 914
    .end local v1    # "hash":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v4

    .line 915
    .local v4, "nsa":Ljava/security/NoSuchAlgorithmException;
    return-object v6
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 865
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_0

    .line 866
    const-string/jumbo v4, ""

    return-object v4

    .line 868
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 870
    .local v2, "patternSize":I
    new-array v3, v2, [B

    .line 871
    .local v3, "res":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 872
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 873
    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x31

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 871
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 875
    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    return-object v4
.end method

.method private savedPasswordExists(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 411
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->havePassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method private savedPatternExists(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 399
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->havePattern(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method private setBoolean(Ljava/lang/String;ZI)V
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .prologue
    .line 1121
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1119
    :goto_0
    return-void

    .line 1122
    :catch_0
    move-exception v0

    .line 1124
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t write boolean "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setLong(Ljava/lang/String;JI)V
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .prologue
    .line 1138
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1136
    :goto_0
    return-void

    .line 1139
    :catch_0
    move-exception v0

    .line 1141
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t write long "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 1155
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1153
    :goto_0
    return-void

    .line 1156
    :catch_0
    move-exception v0

    .line 1158
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t write string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private shouldEncryptWithCredentials(Z)Z
    .locals 2
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1253
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->isDoNotAskCredentialsOnBootSet()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 845
    if-nez p0, :cond_0

    .line 846
    return-object v4

    .line 849
    :cond_0
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 851
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 852
    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 853
    aget-byte v4, v1, v2

    add-int/lit8 v4, v4, -0x31

    int-to-byte v0, v4

    .line 854
    .local v0, "b":B
    div-int/lit8 v4, v0, 0x3

    rem-int/lit8 v5, v0, 0x3

    invoke-static {v4, v5}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 852
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 856
    .end local v0    # "b":B
    :cond_1
    return-object v3
.end method

.method private updateCryptoUserInfo(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 542
    if-eqz p1, :cond_0

    .line 543
    return-void

    .line 546
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v2

    .line 548
    .local v2, "ownerInfo":Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 549
    .local v3, "service":Landroid/os/IBinder;
    if-nez v3, :cond_2

    .line 550
    const-string/jumbo v4, "LockPatternUtils"

    const-string/jumbo v5, "Could not find the mount service to update the user info"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return-void

    .line 546
    .end local v2    # "ownerInfo":Ljava/lang/String;
    .end local v3    # "service":Landroid/os/IBinder;
    :cond_1
    const-string/jumbo v2, ""

    .restart local v2    # "ownerInfo":Ljava/lang/String;
    goto :goto_0

    .line 554
    .restart local v3    # "service":Landroid/os/IBinder;
    :cond_2
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 556
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    const-string/jumbo v4, "LockPatternUtils"

    const-string/jumbo v5, "Setting owner info"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const-string/jumbo v4, "OwnerInfo"

    invoke-interface {v1, v4, v2}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    :goto_1
    return-void

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "LockPatternUtils"

    const-string/jumbo v5, "Error changing user info"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateEncryptionPassword(ILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 673
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 674
    return-void

    .line 676
    :cond_0
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 677
    .local v0, "service":Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 678
    const-string/jumbo v1, "LockPatternUtils"

    const-string/jumbo v2, "Could not find the mount service to update the encryption password"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    return-void

    .line 682
    :cond_1
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils$1;-><init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/IBinder;ILjava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 672
    return-void
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 339
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 340
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_0

    .line 341
    return v4

    .line 342
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 343
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    .line 348
    .local v0, "re":Landroid/os/RemoteException;
    return v4

    .line 345
    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    return v3
.end method

.method public checkPasswordHistory(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v7, 0x0

    .line 373
    new-instance v2, Ljava/lang/String;

    .line 374
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 373
    invoke-direct {v2, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 375
    .local v2, "passwordHashString":Ljava/lang/String;
    const-string/jumbo v5, "lockscreen.passwordhistory"

    invoke-direct {p0, v5, p2}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 376
    .local v3, "passwordHistory":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 377
    return v7

    .line 380
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .line 381
    .local v1, "passwordHashLength":I
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength(I)I

    move-result v4

    .line 382
    .local v4, "passwordHistoryLength":I
    if-nez v4, :cond_1

    .line 383
    return v7

    .line 385
    :cond_1
    mul-int v5, v1, v4

    add-int/2addr v5, v4

    add-int/lit8 v0, v5, -0x1

    .line 387
    .local v0, "neededPasswordHistoryLength":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v0, :cond_2

    .line 388
    invoke-virtual {v3, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 390
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    return v5
.end method

.method public checkPattern(Ljava/util/List;I)Z
    .locals 6
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 289
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/android/internal/widget/ILockSettings;->checkPattern(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 291
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_0

    .line 292
    return v4

    .line 293
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 294
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    .line 299
    .local v0, "re":Landroid/os/RemoteException;
    return v4

    .line 296
    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    return v5
.end method

.method public checkVoldPassword(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 359
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->checkVoldPassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public clearEncryptionPassword()V
    .locals 2

    .prologue
    .line 825
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V

    .line 824
    return-void
.end method

.method public clearLock(I)V
    .locals 11
    .param p1, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 451
    const-string/jumbo v0, "lockscreen.password_type"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 454
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, p1}, Lcom/android/internal/widget/ILockSettings;->setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V

    .line 455
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, p1}, Lcom/android/internal/widget/ILockSettings;->setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :goto_0
    if-nez p1, :cond_0

    .line 462
    const/4 v0, 0x1

    invoke-direct {p0, v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V

    .line 465
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    .line 467
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    move v9, p1

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 470
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->onAfterChangingPassword(I)V

    .line 450
    return-void

    .line 456
    :catch_0
    move-exception v10

    .local v10, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getActivePasswordQuality(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 432
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 434
    .local v0, "quality":I
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    return v0

    .line 439
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 441
    return v0

    .line 444
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 4

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 164
    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 166
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 167
    const-string/jumbo v0, "LockPatternUtils"

    const-string/jumbo v1, "Can\'t get DevicePolicyManagerService: is it running?"

    .line 168
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getEnabledTrustAgents(I)Ljava/util/List;
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1183
    const-string/jumbo v4, "lockscreen.enabledtrustagents"

    invoke-direct {p0, v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1184
    .local v2, "serialized":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1185
    const/4 v4, 0x0

    return-object v4

    .line 1187
    :cond_0
    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1188
    .local v3, "split":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    array-length v4, v3

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1189
    .local v0, "activeTrustAgents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    const/4 v4, 0x0

    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v3, v4

    .line 1190
    .local v1, "s":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1191
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1189
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1194
    .end local v1    # "s":Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public getKeyguardStoredPasswordQuality(I)I
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    .line 835
    const-string/jumbo v0, "lockscreen.password_type"

    .line 836
    const-wide/16 v2, 0x0

    .line 835
    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLockoutAttemptDeadline(I)J
    .locals 10
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v8, 0x0

    .line 1092
    const-string/jumbo v6, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    .line 1093
    .local v0, "deadline":J
    const-string/jumbo v6, "lockscreen.lockoutattempttimeoutmss"

    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    .line 1094
    .local v4, "timeoutMs":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1095
    .local v2, "now":J
    cmp-long v6, v0, v2

    if-gez v6, :cond_0

    cmp-long v6, v0, v8

    if-eqz v6, :cond_0

    .line 1097
    const-string/jumbo v6, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1098
    const-string/jumbo v6, "lockscreen.lockoutattempttimeoutmss"

    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1099
    return-wide v8

    .line 1102
    :cond_0
    add-long v6, v2, v4

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    .line 1104
    add-long v0, v2, v4

    .line 1105
    const-string/jumbo v6, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v6, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1108
    :cond_1
    return-wide v0
.end method

.method public getOwnerInfo(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 574
    const-string/jumbo v0, "lock_screen_owner_info"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPowerButtonInstantlyLocks(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1167
    const-string/jumbo v0, "lockscreen.power_button_instantly_locks"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public getRequestedMinimumPasswordLength(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLetters(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLowerCase(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNonLetter(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNumeric(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumSymbols(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumUpperCase(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordQuality(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public isCredentialRequiredToDecrypt(Z)Z
    .locals 5
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 1231
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 1232
    const-string/jumbo v3, "require_password_to_decrypt"

    .line 1231
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1233
    .local v0, "value":I
    if-ne v0, v4, :cond_0

    .end local p1    # "defaultValue":Z
    :goto_0
    return p1

    .restart local p1    # "defaultValue":Z
    :cond_0
    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    goto :goto_0
.end method

.method public isLegacyLockPatternEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 998
    const-string/jumbo v0, "legacy_lock_pattern_enabled"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isLockPasswordEnabled(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 974
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(II)Z

    move-result v0

    return v0
.end method

.method public isLockPatternEnabled(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 990
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(II)Z

    move-result v0

    return v0
.end method

.method public isLockScreenDisabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .line 491
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 492
    const-string/jumbo v1, "lockscreen.disabled"

    invoke-direct {p0, v1, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    .line 491
    :cond_0
    return v0
.end method

.method public isOwnerInfoEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 578
    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isPatternEverChosen(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 424
    const-string/jumbo v0, "lockscreen.patterneverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isSecure(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 969
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 970
    .local v0, "mode":I
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(II)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1070
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    .line 1071
    const-string/jumbo v3, "haptic_feedback_enabled"

    const/4 v4, -0x2

    .line 1070
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isVisiblePatternEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1015
    const-string/jumbo v0, "lock_pattern_visible_pattern"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public passwordToHash(Ljava/lang/String;I)[B
    .locals 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v6, 0x0

    .line 944
    if-nez p1, :cond_0

    .line 945
    return-object v6

    .line 949
    :cond_0
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getSalt(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 950
    .local v4, "saltedPassword":[B
    const-string/jumbo v6, "SHA-1"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 951
    .local v5, "sha1":[B
    const-string/jumbo v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .line 953
    .local v3, "md5":[B
    array-length v6, v5

    array-length v7, v3

    add-int/2addr v6, v7

    new-array v0, v6, [B

    .line 954
    .local v0, "combined":[B
    array-length v6, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v7, v0, v8, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 955
    array-length v6, v5

    array-length v7, v3

    const/4 v8, 0x0

    invoke-static {v3, v8, v0, v6, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 957
    invoke-static {v0}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v2

    .line 958
    .local v2, "hexEncoded":[C
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([C)V

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 959
    .end local v0    # "combined":[B
    .end local v2    # "hexEncoded":[C
    .end local v3    # "md5":[B
    .end local v4    # "saltedPassword":[B
    .end local v5    # "sha1":[B
    :catch_0
    move-exception v1

    .line 960
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/lang/AssertionError;

    const-string/jumbo v7, "Missing digest algorithm: "

    invoke-direct {v6, v7, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V
    .locals 3
    .param p1, "strongAuthTracker"    # Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    .prologue
    .line 1259
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStub:Landroid/app/trust/IStrongAuthTracker$Stub;

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1257
    return-void

    .line 1260
    :catch_0
    move-exception v0

    .line 1261
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Could not register StrongAuthTracker"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reportFailedPasswordAttempt(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt(I)V

    .line 239
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/trust/TrustManager;->reportUnlockAttempt(ZI)V

    .line 240
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 237
    return-void
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V

    .line 245
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/trust/TrustManager;->reportUnlockAttempt(ZI)V

    .line 243
    return-void
.end method

.method public requireCredentialEntry(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 1205
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 1204
    return-void
.end method

.method public requireStrongAuth(II)V
    .locals 4
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .prologue
    .line 1220
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/widget/ILockSettings;->requireStrongAuth(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1218
    :goto_0
    return-void

    .line 1221
    :catch_0
    move-exception v0

    .line 1222
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error while requesting strong auth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 33
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedPassword"    # Ljava/lang/String;
    .param p3, "quality"    # I
    .param p4, "userHandle"    # I

    .prologue
    .line 708
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    .line 709
    .local v4, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_1

    .line 710
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "password must not be null and at least of length 4"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    .end local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :catch_0
    move-exception v31

    .line 789
    .local v31, "re":Landroid/os/RemoteException;
    const-string/jumbo v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unable to save lock password "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    .end local v31    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 714
    .restart local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_1
    :try_start_1

    invoke-direct/range {p0 .. p4}, Lcom/android/internal/widget/LockPatternUtils;->saveFlymePasswordLength(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-interface {v5, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings;->setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V

    .line 715
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v24

    .line 718
    .local v24, "computedQuality":I
    if-nez p4, :cond_2

    .line 719
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v5

    .line 718
    if-eqz v5, :cond_2

    .line 720
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->shouldEncryptWithCredentials(Z)Z

    move-result v5

    if-nez v5, :cond_3

    .line 721
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->clearEncryptionPassword()V

    .line 733
    :cond_2
    :goto_1
    const-string/jumbo v5, "lockscreen.password_type"

    move/from16 v0, p3

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-long v14, v6

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v5, v14, v15, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 734
    if-eqz v24, :cond_d

    .line 735
    const/4 v7, 0x0

    .line 736
    .local v7, "letters":I
    const/4 v8, 0x0

    .line 737
    .local v8, "uppercase":I
    const/4 v9, 0x0

    .line 738
    .local v9, "lowercase":I
    const/4 v10, 0x0

    .line 739
    .local v10, "numbers":I
    const/4 v11, 0x0

    .line 740
    .local v11, "symbols":I
    const/4 v12, 0x0

    .line 741
    .local v12, "nonletter":I
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v26

    if-ge v0, v5, :cond_b

    .line 742
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    .line 743
    .local v23, "c":C
    const/16 v5, 0x41

    move/from16 v0, v23

    if-lt v0, v5, :cond_8

    const/16 v5, 0x5a

    move/from16 v0, v23

    if-gt v0, v5, :cond_8

    .line 744
    add-int/lit8 v7, v7, 0x1

    .line 745
    add-int/lit8 v8, v8, 0x1

    .line 741
    :goto_3
    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    .line 724
    .end local v7    # "letters":I
    .end local v8    # "uppercase":I
    .end local v9    # "lowercase":I
    .end local v10    # "numbers":I
    .end local v11    # "symbols":I
    .end local v12    # "nonletter":I
    .end local v23    # "c":C
    .end local v26    # "i":I
    :cond_3
    const/high16 v5, 0x20000

    .line 723
    move/from16 v0, v24

    if-ne v0, v5, :cond_5

    const/16 v27, 0x1

    .line 726
    .local v27, "numeric":Z
    :goto_4
    const/high16 v5, 0x30000

    .line 725
    move/from16 v0, v24

    if-ne v0, v5, :cond_6

    const/16 v28, 0x1

    .line 727
    .local v28, "numericComplex":Z
    :goto_5
    if-nez v27, :cond_4

    if-eqz v28, :cond_7

    :cond_4
    const/16 v32, 0x3

    .line 729
    .local v32, "type":I
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V

    goto :goto_1

    .line 723
    .end local v27    # "numeric":Z
    .end local v28    # "numericComplex":Z
    .end local v32    # "type":I
    :cond_5
    const/16 v27, 0x0

    .restart local v27    # "numeric":Z
    goto :goto_4

    .line 725
    :cond_6
    const/16 v28, 0x0

    .restart local v28    # "numericComplex":Z
    goto :goto_5

    .line 728
    :cond_7
    const/16 v32, 0x0

    .restart local v32    # "type":I
    goto :goto_6

    .line 746
    .end local v27    # "numeric":Z
    .end local v28    # "numericComplex":Z
    .end local v32    # "type":I
    .restart local v7    # "letters":I
    .restart local v8    # "uppercase":I
    .restart local v9    # "lowercase":I
    .restart local v10    # "numbers":I
    .restart local v11    # "symbols":I
    .restart local v12    # "nonletter":I
    .restart local v23    # "c":C
    .restart local v26    # "i":I
    :cond_8
    const/16 v5, 0x61

    move/from16 v0, v23

    if-lt v0, v5, :cond_9

    const/16 v5, 0x7a

    move/from16 v0, v23

    if-gt v0, v5, :cond_9

    .line 747
    add-int/lit8 v7, v7, 0x1

    .line 748
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 749
    :cond_9
    const/16 v5, 0x30

    move/from16 v0, v23

    if-lt v0, v5, :cond_a

    const/16 v5, 0x39

    move/from16 v0, v23

    if-gt v0, v5, :cond_a

    .line 750
    add-int/lit8 v10, v10, 0x1

    .line 751
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 753
    :cond_a
    add-int/lit8 v11, v11, 0x1

    .line 754
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 757
    .end local v23    # "c":C
    :cond_b
    move/from16 v0, p3

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 758
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v13, p4

    .line 757
    invoke-virtual/range {v4 .. v13}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 769
    .end local v7    # "letters":I
    .end local v8    # "uppercase":I
    .end local v9    # "lowercase":I
    .end local v10    # "numbers":I
    .end local v11    # "symbols":I
    .end local v12    # "nonletter":I
    .end local v26    # "i":I
    :goto_7
    const-string/jumbo v5, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v5, v1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    .line 770
    .local v29, "passwordHistory":Ljava/lang/String;
    if-nez v29, :cond_c

    .line 771
    const-string/jumbo v29, ""

    .line 773
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength(I)I

    move-result v30

    .line 774
    .local v30, "passwordHistoryLength":I
    if-nez v30, :cond_e

    .line 775
    const-string/jumbo v29, ""

    .line 785
    :goto_8
    const-string/jumbo v5, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, p4

    invoke-direct {v0, v5, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 786
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->onAfterChangingPassword(I)V

    goto/16 :goto_0

    .line 763
    .end local v29    # "passwordHistory":Ljava/lang/String;
    .end local v30    # "passwordHistoryLength":I
    :cond_d
    const/4 v14, 0x0

    .line 764
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v13, v4

    move/from16 v22, p4

    .line 762
    invoke-virtual/range {v13 .. v22}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    goto :goto_7

    .line 777
    .restart local v29    # "passwordHistory":Ljava/lang/String;
    .restart local v30    # "passwordHistoryLength":I
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v25

    .line 778
    .local v25, "hash":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/String;

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v25

    invoke-direct {v6, v0, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 781
    move-object/from16 v0, v25

    array-length v5, v0

    mul-int v5, v5, v30

    add-int v5, v5, v30

    add-int/lit8 v5, v5, -0x1

    .line 782
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v6

    .line 781
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v29

    goto :goto_8
.end method

.method public saveLockPattern(Ljava/util/List;I)V
    .locals 1
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 501
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    .line 500
    return-void
.end method

.method public saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V
    .locals 12
    .param p2, "savedPattern"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 511
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 512
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "pattern must not be null and at least 4 dots long."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 536
    :catch_0
    move-exception v10

    .line 537
    .local v10, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Couldn\'t save lock pattern "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    .end local v10    # "re":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 516
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V

    .line 517
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 520
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez p3, :cond_2

    .line 521
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v1

    .line 520
    if-eqz v1, :cond_2

    .line 522
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->shouldEncryptWithCredentials(Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 523
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->clearEncryptionPassword()V

    .line 530
    :cond_2
    :goto_1
    const-string/jumbo v1, "lockscreen.patterneverchosen"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, p3}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 532
    const-string/jumbo v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 534
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 533
    const/high16 v1, 0x10000

    .line 534
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, p3

    .line 533
    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 535
    invoke-direct {p0, p3}, Lcom/android/internal/widget/LockPatternUtils;->onAfterChangingPassword(I)V

    goto :goto_0

    .line 525
    :cond_3
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v11

    .line 526
    .local v11, "stringPattern":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-direct {p0, v1, v11}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setCredentialRequiredToDecrypt(Z)V
    .locals 3
    .param p1, "required"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1237
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1238
    const-string/jumbo v0, "LockPatternUtils"

    const-string/jumbo v1, "Only device owner may call setCredentialRequiredForDecrypt()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    return-void

    .line 1242
    :cond_0
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1243
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1244
    const-string/jumbo v2, "require_password_to_decrypt"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 1243
    :cond_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1236
    :cond_2
    return-void
.end method

.method public setEnabledTrustAgents(Ljava/util/Collection;I)V
    .locals 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1171
    .local p1, "activeTrustAgents":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/ComponentName;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1172
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cn$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1173
    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1174
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1176
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1178
    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_1
    const-string/jumbo v3, "lockscreen.enabledtrustagents"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, p2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1179
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    .line 1170
    return-void
.end method

.method public setLegacyLockPatternEnabled(I)V
    .locals 2
    .param p1, "userId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1003
    const-string/jumbo v0, "lock_pattern_autolock"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1002
    return-void
.end method

.method public setLockScreenDisabled(ZI)V
    .locals 1
    .param p1, "disable"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 481
    const-string/jumbo v0, "lockscreen.disabled"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 480
    return-void
.end method

.method public setLockoutAttemptDeadline(II)J
    .locals 6
    .param p1, "userId"    # I
    .param p2, "timeoutMs"    # I

    .prologue
    .line 1080
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p2

    add-long v0, v2, v4

    .line 1081
    .local v0, "deadline":J
    const-string/jumbo v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1082
    const-string/jumbo v2, "lockscreen.lockoutattempttimeoutmss"

    int-to-long v4, p2

    invoke-direct {p0, v2, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1083
    return-wide v0
.end method

.method public setOwnerInfo(Ljava/lang/String;I)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 564
    const-string/jumbo v0, "lock_screen_owner_info"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 565
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->updateCryptoUserInfo(I)V

    .line 563
    return-void
.end method

.method public setOwnerInfoEnabled(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 569
    const-string/jumbo v0, "lock_screen_owner_info_enabled"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 570
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->updateCryptoUserInfo(I)V

    .line 568
    return-void
.end method

.method public setPowerButtonInstantlyLocks(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1163
    const-string/jumbo v0, "lockscreen.power_button_instantly_locks"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1162
    return-void
.end method

.method public setVisiblePasswordEnabled(ZI)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1048
    if-eqz p2, :cond_0

    .line 1049
    return-void

    .line 1052
    :cond_0
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1053
    .local v2, "service":Landroid/os/IBinder;
    if-nez v2, :cond_1

    .line 1054
    const-string/jumbo v3, "LockPatternUtils"

    const-string/jumbo v4, "Could not find the mount service to update the user info"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    return-void

    .line 1058
    :cond_1
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 1060
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    const-string/jumbo v4, "PasswordVisible"

    if-eqz p1, :cond_2

    const-string/jumbo v3, "1"

    :goto_0
    invoke-interface {v1, v4, v3}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    :goto_1
    return-void

    .line 1060
    :cond_2
    const-string/jumbo v3, "0"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1061
    :catch_0
    move-exception v0

    .line 1062
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "LockPatternUtils"

    const-string/jumbo v4, "Error changing password visible state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setVisiblePatternEnabled(ZI)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1022
    const-string/jumbo v3, "lock_pattern_visible_pattern"

    invoke-direct {p0, v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    .line 1025
    if-eqz p2, :cond_0

    .line 1026
    return-void

    .line 1029
    :cond_0
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1030
    .local v2, "service":Landroid/os/IBinder;
    if-nez v2, :cond_1

    .line 1031
    const-string/jumbo v3, "LockPatternUtils"

    const-string/jumbo v4, "Could not find the mount service to update the user info"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    return-void

    .line 1035
    :cond_1
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 1037
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    const-string/jumbo v4, "PatternVisible"

    if-eqz p1, :cond_2

    const-string/jumbo v3, "1"

    :goto_0
    invoke-interface {v1, v4, v3}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    :goto_1
    return-void

    .line 1037
    :cond_2
    const-string/jumbo v3, "0"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1038
    :catch_0
    move-exception v0

    .line 1039
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "LockPatternUtils"

    const-string/jumbo v4, "Error changing pattern visible state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public unregisterStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V
    .locals 3
    .param p1, "strongAuthTracker"    # Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    .prologue
    .line 1267
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStub:Landroid/app/trust/IStrongAuthTracker$Stub;

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1265
    :goto_0
    return-void

    .line 1268
    :catch_0
    move-exception v0

    .line 1269
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "LockPatternUtils"

    const-string/jumbo v2, "Could not unregister StrongAuthTracker"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public verifyPassword(Ljava/lang/String;JI)[B
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 316
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->verifyPassword(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 318
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_0

    .line 319
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v2

    return-object v2

    .line 320
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 321
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    .line 326
    .local v0, "re":Landroid/os/RemoteException;
    return-object v4

    .line 323
    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    return-object v4
.end method

.method public verifyPattern(Ljava/util/List;JI)[B
    .locals 6
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;JI)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v4, 0x0

    .line 261
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->verifyPattern(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .line 262
    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-nez v1, :cond_0

    .line 264
    return-object v4

    .line 267
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    if-nez v2, :cond_1

    .line 268
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v2

    return-object v2

    .line 269
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 270
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    .line 275
    .local v0, "re":Landroid/os/RemoteException;
    return-object v4

    .line 272
    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_2
    return-object v4
.end method

.method private saveFlymePasswordLength(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedPassword"    # Ljava/lang/String;
    .param p3, "quality"    # I
    .param p4, "userHandle"    # I

    .prologue
    .line 1401
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 1404
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    .line 1406
    .local v1, "hash":[B
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1407
    const-string/jumbo v3, "meizu_password_fronts_four"

    new-instance v4, Ljava/lang/String;

    .line 1408
    const-string/jumbo v5, "UTF-8"

    .line 1407
    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1406
    invoke-static {v2, v3, v4, p4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1414
    :goto_0
    const-string/jumbo v2, "meizu_password_length"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v4, v3

    invoke-direct {p0, v2, v4, v5, p4}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    .line 1400
    return-void

    .line 1409
    :catch_0
    move-exception v0

    .line 1410
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "save _pwd_front_four exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkFlymePassword(ILjava/lang/String;)Z
    .locals 4
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1429
    :try_start_0
    new-instance v1, Lcom/android/internal/widget/FlymeExtILockSettingsProxy;

    invoke-direct {v1}, Lcom/android/internal/widget/FlymeExtILockSettingsProxy;-><init>()V

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/widget/ILockSettings;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, v2, p1, p2, v3}, Lcom/android/internal/widget/FlymeExtILockSettingsProxy;->checkFlymePassword(Landroid/os/IBinder;ILjava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1430
    :catch_0
    move-exception v0

    .line 1431
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public clearFlymePassword(I)Z
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 1445
    :try_start_0
    new-instance v1, Lcom/android/internal/widget/FlymeExtILockSettingsProxy;

    invoke-direct {v1}, Lcom/android/internal/widget/FlymeExtILockSettingsProxy;-><init>()V

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/widget/ILockSettings;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/internal/widget/FlymeExtILockSettingsProxy;->clearFlymePassword(Landroid/os/IBinder;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1446
    :catch_0
    move-exception v0

    .line 1447
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public hasFlymePassword(I)Z
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 1437
    :try_start_0
    new-instance v1, Lcom/android/internal/widget/FlymeExtILockSettingsProxy;

    invoke-direct {v1}, Lcom/android/internal/widget/FlymeExtILockSettingsProxy;-><init>()V

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/widget/ILockSettings;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/internal/widget/FlymeExtILockSettingsProxy;->hasFlymePassword(Landroid/os/IBinder;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1438
    :catch_0
    move-exception v0

    .line 1439
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public setFlymePassword(ILjava/lang/String;)Z
    .locals 4
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1421
    :try_start_0
    new-instance v1, Lcom/android/internal/widget/FlymeExtILockSettingsProxy;

    invoke-direct {v1}, Lcom/android/internal/widget/FlymeExtILockSettingsProxy;-><init>()V

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/widget/ILockSettings;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v1, v2, p1, p2, v3}, Lcom/android/internal/widget/FlymeExtILockSettingsProxy;->setFlymePassword(Landroid/os/IBinder;ILjava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1422
    :catch_0
    move-exception v0

    .line 1423
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method
