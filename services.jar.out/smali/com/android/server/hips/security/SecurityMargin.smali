.class public Lcom/android/server/hips/security/SecurityMargin;
.super Ljava/lang/Object;
.source "SecurityMargin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hips/security/SecurityMargin$1;
    }
.end annotation


# static fields
.field private static final CURRENT_ITEMS_NAME:Ljava/lang/String; = "current_security_margin_items"

.field private static final FLAG_ALWAYS_SHOW_TICKER:I = 0x1000000

.field private static final ITEMS_STORAGE_PATH:Ljava/lang/String; = "/data/system"

.field private static final ITEM_LENGTH:I = 0x2

.field private static final KEY_BACKGROUND_COLOR:Ljava/lang/String; = "bgColor"

.field private static final KEY_PACKAGENAME:Ljava/lang/String; = "packageName"

.field private static final KEY_RESOURCES_ID:Ljava/lang/String; = "resId"

.field private static final KEY_TEXT_COLOR:Ljava/lang/String; = "textColor"

.field private static final KEY_TIPS:Ljava/lang/String; = "tips"

.field private static final MSG_SMS_PROTECTED:I = 0x0

.field private static final MSG_STATUSBAR_CORLOR_CHANGED:I = 0x1

.field private static final SECURITY_MARGIN_SWITCH:Ljava/lang/String; = "security_margin_switch"

.field private static final SECURITY_MARGIN_SWITCH_OFF:I = -0x1

.field private static final SECURITY_MARGIN_SWITCH_ON:I = 0x1

.field private static final SECURITY_MARGIN_VERSION:I = 0x1

.field private static final SYSTEM_DEFAULT_SMS_PKG:Ljava/lang/String; = "com.android.mms"

.field public static final TAG:Ljava/lang/String; = "SecurityMargin"

.field public static final TYPE_ACTIVITY:I = 0x2

.field public static final TYPE_DEFAULT:I = 0x0

.field public static final TYPE_SMS:I = 0x1

.field private static final WHOLE_ITEMS_NAME:Ljava/lang/String; = "security_margin_items"

.field private static mIgnoreClass:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mIgnorePkg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mIsSecurityMarginSwitchOn:Z

.field private static volatile mSecurityMargin:Lcom/android/server/hips/security/SecurityMargin;

.field private static mSecurityMarginItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mShowStatusBarColorPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentMethodId:Ljava/lang/String;

.field private mCurrentSecurityNotificationId:I

.field private mCurrentSecurityPkg:Ljava/lang/String;

.field private mCurrentShowStatusBarPkg:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsInSecurityMargin:Z

.field private mIsSMSProtected:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOriginalAdbEnableValue:I

.field private mOriginalMethodId:Ljava/lang/String;

.field private mOriginalSMSPkg:Ljava/lang/String;

.field private mSMSProtectedTime:I

.field private mSecurityMarginTimeStamp:J

.field private mStatusBarCorlorShowTime:I

.field private mThePkgCalledBySecurityPkg:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/server/hips/security/SecurityMargin;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentShowStatusBarPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/hips/security/SecurityMargin;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/hips/security/SecurityMargin;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mOriginalSMSPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/hips/security/SecurityMargin;)I
    .locals 1

    iget v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mSMSProtectedTime:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/hips/security/SecurityMargin;)I
    .locals 1

    iget v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mStatusBarCorlorShowTime:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/hips/security/SecurityMargin;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/hips/security/SecurityMargin;->mIsSMSProtected:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/hips/security/SecurityMargin;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/hips/security/SecurityMargin;->mSMSProtectedTime:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/hips/security/SecurityMargin;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/hips/security/SecurityMargin;->mStatusBarCorlorShowTime:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/hips/security/SecurityMargin;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "isShowCorlor"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/hips/security/SecurityMargin;->changeStatusBarCorlor(Ljava/lang/String;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 59
    sput-boolean v2, Lcom/android/server/hips/security/SecurityMargin;->mIsSecurityMarginSwitchOn:Z

    .line 82
    sput-object v1, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMargin:Lcom/android/server/hips/security/SecurityMargin;

    .line 83
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginItems:Ljava/util/Map;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/hips/security/SecurityMargin;->mIgnorePkg:Ljava/util/ArrayList;

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/hips/security/SecurityMargin;->mIgnoreClass:Ljava/util/ArrayList;

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/hips/security/SecurityMargin;->mShowStatusBarColorPkgs:Ljava/util/ArrayList;

    .line 90
    const-string/jumbo v1, "/data/system/security_margin_items"

    .line 89
    invoke-static {v1}, Lcom/android/server/hips/utils/HipsUtils;->readInfoFromFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 91
    .local v0, "itemsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 92
    invoke-static {v0, v2}, Lcom/android/server/hips/security/SecurityMargin;->setSecurityMarginItem(Ljava/util/ArrayList;Z)I

    .line 95
    :cond_0
    sget-object v1, Lcom/android/server/hips/security/SecurityMargin;->mIgnorePkg:Ljava/util/ArrayList;

    const-string/jumbo v2, "android"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v1, Lcom/android/server/hips/security/SecurityMargin;->mIgnorePkg:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.android.systemui"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v1, Lcom/android/server/hips/security/SecurityMargin;->mIgnorePkg:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.android.incallui"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v1, Lcom/android/server/hips/security/SecurityMargin;->mIgnorePkg:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.tencent.mm"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v1, Lcom/android/server/hips/security/SecurityMargin;->mIgnorePkg:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.tencent.mobileqq"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v1, Lcom/android/server/hips/security/SecurityMargin;->mIgnoreClass:Ljava/util/ArrayList;

    .line 102
    const-string/jumbo v2, "com.android.server.hips.security.SecurityPayDispalyActivity"

    .line 101
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v1, Lcom/android/server/hips/security/SecurityMargin;->mIgnoreClass:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.flyme.systemui.recents.RecentsEmptyActivity"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v1, Lcom/android/server/hips/security/SecurityMargin;->mIgnoreClass:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v1, Lcom/android/server/hips/security/SecurityMargin;->mIgnoreClass:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.android.incallui.InCallActivity"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v1, Lcom/android/server/hips/security/SecurityMargin;->mIgnoreClass:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v1, Lcom/android/server/hips/security/SecurityMargin;->mIgnoreClass:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.tencent.av.ui.VideoInviteFull"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v1, Lcom/android/server/hips/security/SecurityMargin;->mIgnoreClass:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.tencent.av.ui.VideoInviteLock"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v1, Lcom/android/server/hips/security/SecurityMargin;->mIgnoreClass:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.tencent.av.ui.AVActivity"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v1, Lcom/android/server/hips/security/SecurityMargin;->mIgnoreClass:Ljava/util/ArrayList;

    const-string/jumbo v2, "com.tencent.av.ui.VChatActivity"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-static {}, Lcom/android/server/hips/security/SecurityMargin;->loadSecurityMarginSwitchState()V

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v1, p0, Lcom/android/server/hips/security/SecurityMargin;->mIsInSecurityMargin:Z

    .line 62
    iput-boolean v1, p0, Lcom/android/server/hips/security/SecurityMargin;->mIsSMSProtected:Z

    .line 64
    iput v1, p0, Lcom/android/server/hips/security/SecurityMargin;->mSMSProtectedTime:I

    .line 65
    iput v1, p0, Lcom/android/server/hips/security/SecurityMargin;->mStatusBarCorlorShowTime:I

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mOriginalAdbEnableValue:I

    .line 67
    iput v1, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentSecurityNotificationId:I

    .line 71
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mOriginalMethodId:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentMethodId:Ljava/lang/String;

    .line 74
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentSecurityPkg:Ljava/lang/String;

    .line 75
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mThePkgCalledBySecurityPkg:Ljava/lang/String;

    .line 77
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentShowStatusBarPkg:Ljava/lang/String;

    .line 78
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mOriginalSMSPkg:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mNotificationManager:Landroid/app/NotificationManager;

    .line 115
    new-instance v0, Lcom/android/server/hips/security/SecurityMargin$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/hips/security/SecurityMargin$1;-><init>(Lcom/android/server/hips/security/SecurityMargin;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mHandler:Landroid/os/Handler;

    .line 150
    return-void
.end method

.method private changeStatusBarCorlor(Ljava/lang/String;Z)V
    .locals 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "isShowCorlor"    # Z

    .prologue
    .line 471
    const-string/jumbo v6, "flyme_statusbar"

    .line 470
    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 472
    .local v3, "flymeStatusBar":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 473
    const-string/jumbo v6, "SecurityMargin"

    const-string/jumbo v7, "changeStatusBarCorlor, flymeStatusBar is null, return."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return-void

    .line 477
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 478
    .local v4, "flymeStatusBarClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    if-nez v4, :cond_1

    .line 479
    const-string/jumbo v6, "SecurityMargin"

    .line 480
    const-string/jumbo v7, "changeStatusBarCorlor, flymeStatusBarClass is null, return."

    .line 479
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return-void

    .line 484
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 485
    :cond_2
    const-string/jumbo v6, "SecurityMargin"

    .line 486
    const-string/jumbo v7, "changeStatusBarCorlor, pkgName is null or empty, return."

    .line 485
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    return-void

    .line 490
    :cond_3
    const-string/jumbo v6, "SecurityMargin"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "changeStatusBarCorlor, pkgName: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 491
    const-string/jumbo v8, " isShowCorlor: "

    .line 490
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 497
    .local v1, "context":Landroid/content/Context;
    if-eqz p2, :cond_5

    .line 498
    :try_start_0
    const-string/jumbo v6, "showAlwaysTextAndIcon"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    .line 499
    const-class v8, Landroid/os/Bundle;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 498
    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 500
    .local v5, "method":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_4

    .line 501
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 502
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v6, "packageName"

    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string/jumbo v6, "tips"

    .line 505
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 507
    sget v8, Lcom/flyme/internal/R$string;->security_pay_notification_text:I

    .line 506
    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 505
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 503
    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string/jumbo v6, "textColor"

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 509
    const-string/jumbo v6, "bgColor"

    const v7, -0xc43f95

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 511
    const-string/jumbo v6, "resId"

    .line 512
    sget v7, Lcom/flyme/internal/R$drawable;->security_pay_icon_small:I

    .line 510
    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 513
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    sget-object v7, Lcom/android/server/hips/security/SecurityMargin;->mShowStatusBarColorPkgs:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :try_start_1
    sget-object v6, Lcom/android/server/hips/security/SecurityMargin;->mShowStatusBarColorPkgs:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v7

    .line 469
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_4
    :goto_0
    return-void

    .line 514
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 525
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 526
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "SecurityMargin"

    .line 527
    const-string/jumbo v7, "changeStatusBarCorlor, unable to change the corlor of status bar!"

    .line 526
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 519
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_3
    const-string/jumbo v6, "hideAlwaysTextAndIcon"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    .line 520
    const-class v8, Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 519
    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 521
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_4

    .line 522
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v5, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/server/hips/security/SecurityMargin;
    .locals 2

    .prologue
    .line 154
    sget-object v0, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMargin:Lcom/android/server/hips/security/SecurityMargin;

    if-nez v0, :cond_1

    .line 155
    const-class v1, Lcom/android/server/hips/security/SecurityMargin;

    monitor-enter v1

    .line 156
    :try_start_0
    sget-object v0, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMargin:Lcom/android/server/hips/security/SecurityMargin;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/android/server/hips/security/SecurityMargin;

    invoke-direct {v0}, Lcom/android/server/hips/security/SecurityMargin;-><init>()V

    sput-object v0, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMargin:Lcom/android/server/hips/security/SecurityMargin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 162
    :cond_1
    sget-object v0, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMargin:Lcom/android/server/hips/security/SecurityMargin;

    return-object v0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isShuoldEnterSecurityMargin(Ljava/lang/String;)Z
    .locals 6
    .param p1, "focusedPkg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 688
    sget-object v3, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginItems:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 689
    return v4

    .line 692
    :cond_0
    sget-object v3, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginItems:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 693
    .local v1, "securityClasses":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 694
    return v4

    .line 697
    :cond_1
    const-string/jumbo v3, "*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 698
    return v5

    .line 701
    :cond_2
    invoke-static {}, Lcom/android/server/hips/utils/HipsUtils;->getTopActivityName()Landroid/content/ComponentName;

    move-result-object v0

    .line 702
    .local v0, "name":Landroid/content/ComponentName;
    const-string/jumbo v2, ""

    .line 703
    .local v2, "topClass":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 704
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 706
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 707
    return v5

    .line 710
    :cond_4
    return v4
.end method

.method private static loadSecurityMarginSwitchState()V
    .locals 6

    .prologue
    .line 166
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 167
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 168
    return-void

    .line 171
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 172
    .local v1, "cr":Landroid/content/ContentResolver;
    if-nez v1, :cond_1

    .line 173
    return-void

    .line 176
    :cond_1
    const/4 v3, 0x1

    .line 178
    .local v3, "state":I
    :try_start_0
    const-string/jumbo v4, "security_margin_switch"

    invoke-static {v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 184
    :goto_0
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 185
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/server/hips/security/SecurityMargin;->mIsSecurityMarginSwitchOn:Z

    .line 165
    :cond_2
    return-void

    .line 179
    :catch_0
    move-exception v2

    .line 180
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "SecurityMargin"

    .line 181
    const-string/jumbo v5, "loadSecurityMarginSwitchState, unable to load switch state from settings!"

    .line 180
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setSecurityMarginItem(Ljava/util/ArrayList;Z)I
    .locals 14
    .param p1, "fromStorage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .line 546
    if-nez p0, :cond_0

    .line 547
    const-string/jumbo v10, "SecurityMargin"

    const-string/jumbo v11, "setSecurityMarginList, the list is null, return -1."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/4 v10, -0x1

    return v10

    .line 551
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_1

    .line 552
    const-string/jumbo v10, "SecurityMargin"

    const-string/jumbo v11, "setSecurityMarginList, the list is empty, return 0."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    return v13

    .line 556
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 557
    .local v7, "tempMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v8, ""

    .line 558
    .local v8, "usefulItems":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 559
    .local v1, "currentItems":Ljava/lang/String;
    const/4 v9, 0x0

    .line 560
    .local v9, "usefulItemsCount":I
    const/4 v2, 0x0

    .line 561
    .local v2, "currentItemsCount":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "item$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 562
    .local v3, "item":Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4

    .line 563
    :cond_3
    const-string/jumbo v10, "SecurityMargin"

    .line 564
    const-string/jumbo v11, "setSecurityMarginList, the item is null or empty, stop to add."

    .line 563
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 568
    :cond_4
    const-string/jumbo v10, "\\|\\|\\|"

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 570
    .local v5, "itemArray":[Ljava/lang/String;
    if-nez v5, :cond_5

    .line 571
    const-string/jumbo v10, "SecurityMargin"

    .line 572
    const-string/jumbo v11, "setSecurityMarginList, the itemArray is null, stop to add."

    .line 571
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 576
    :cond_5
    array-length v10, v5

    const/4 v11, 0x2

    if-eq v10, v11, :cond_6

    .line 577
    const-string/jumbo v10, "SecurityMargin"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setSecurityMarginList, the length("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 578
    array-length v12, v5

    .line 577
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 578
    const-string/jumbo v12, ") of item is wrong, stop to add."

    .line 577
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 582
    :cond_6
    aget-object v6, v5, v13

    .line 583
    .local v6, "pkgName":Ljava/lang/String;
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_8

    .line 584
    :cond_7
    const-string/jumbo v10, "SecurityMargin"

    .line 585
    const-string/jumbo v11, "setSecurityMarginList, the pkgName is null or empty, stop to add."

    .line 584
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 589
    :cond_8
    const/4 v10, 0x1

    aget-object v0, v5, v10

    .line 590
    .local v0, "activityClasses":Ljava/lang/String;
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_a

    .line 591
    :cond_9
    const-string/jumbo v10, "SecurityMargin"

    .line 592
    const-string/jumbo v11, "setSecurityMarginList, the activityClasses is null or empty, stop to add."

    .line 591
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 596
    :cond_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "###"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 597
    add-int/lit8 v9, v9, 0x1

    .line 599
    invoke-static {v6}, Lcom/android/server/hips/utils/HipsUtils;->isPkgInstalled(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 603
    invoke-interface {v7, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "###"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 605
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 608
    .end local v0    # "activityClasses":Ljava/lang/String;
    .end local v3    # "item":Ljava/lang/String;
    .end local v5    # "itemArray":[Ljava/lang/String;
    .end local v6    # "pkgName":Ljava/lang/String;
    :cond_b
    sget-object v10, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginItems:Ljava/util/Map;

    monitor-enter v10

    .line 609
    :try_start_0
    sput-object v7, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginItems:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v10

    .line 612
    const-string/jumbo v10, "SecurityMargin"

    .line 613
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setSecurityMarginList, set list successfully, currentItemsCount: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 614
    const-string/jumbo v12, " usefulItemsCount: "

    .line 613
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 612
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    if-nez p1, :cond_c

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_c

    .line 618
    const-string/jumbo v10, "/data/system/security_margin_items"

    invoke-static {v8, v10}, Lcom/android/server/hips/utils/HipsUtils;->saveInfoToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_d

    .line 623
    const-string/jumbo v10, "/data/system/current_security_margin_items"

    invoke-static {v1, v10}, Lcom/android/server/hips/utils/HipsUtils;->saveInfoToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :cond_d
    return v9

    .line 608
    :catchall_0
    move-exception v11

    monitor-exit v10

    throw v11
.end method

.method private showSecurityNotification()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 408
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 410
    .local v1, "context":Landroid/content/Context;
    iget-object v8, p0, Lcom/android/server/hips/security/SecurityMargin;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v8, :cond_0

    .line 412
    const-string/jumbo v8, "notification"

    .line 411
    invoke-virtual {v1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    iput-object v8, p0, Lcom/android/server/hips/security/SecurityMargin;->mNotificationManager:Landroid/app/NotificationManager;

    .line 415
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v8, "flyme.hips.action.SECURITY_PAY_DISPLAY"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v1, v9, v2, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 420
    .local v7, "pendingIntent":Landroid/app/PendingIntent;
    sget v8, Lcom/flyme/internal/R$drawable;->security_pay_icon_medium:I

    .line 419
    invoke-virtual {v1, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 422
    .local v5, "largeIconDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_1

    .line 423
    const-string/jumbo v8, "SecurityMargin"

    .line 424
    const-string/jumbo v9, "showSecurityNotification, largeIconDrawable is null, return."

    .line 423
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return-void

    .line 428
    :cond_1
    instance-of v8, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v8, :cond_2

    .line 429
    const-string/jumbo v8, "SecurityMargin"

    .line 430
    const-string/jumbo v9, "showSecurityNotification, largeIconDrawable can not be cast to BitmapDrawable, return."

    .line 429
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return-void

    :cond_2
    move-object v4, v5

    .line 434
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .line 435
    .local v4, "largeIconBitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 437
    .local v3, "largeIconBitmap":Landroid/graphics/Bitmap;
    if-nez v3, :cond_3

    .line 438
    const-string/jumbo v8, "SecurityMargin"

    .line 439
    const-string/jumbo v9, "showSecurityNotification, largeIconBitmap is null, return."

    .line 438
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    return-void

    .line 443
    :cond_3
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 444
    .local v0, "builder":Landroid/app/Notification$Builder;
    sget v8, Lcom/flyme/internal/R$drawable;->security_pay_icon_small:I

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 447
    sget v9, Lcom/flyme/internal/R$string;->security_pay_notification_text:I

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 444
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 449
    sget v9, Lcom/flyme/internal/R$string;->security_pay_show_detail_text:I

    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 444
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 444
    invoke-virtual {v8, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 452
    const/4 v9, 0x2

    .line 444
    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 454
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    .line 455
    .local v6, "notification":Landroid/app/Notification;
    const v8, 0x1000022

    iput v8, v6, Landroid/app/Notification;->flags:I

    .line 458
    iget-object v8, p0, Lcom/android/server/hips/security/SecurityMargin;->mNotificationManager:Landroid/app/NotificationManager;

    iget v9, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentSecurityNotificationId:I

    invoke-virtual {v8, v9, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 407
    return-void
.end method


# virtual methods
.method public changeSMSToDefault()V
    .locals 2

    .prologue
    .line 190
    const-string/jumbo v0, "SecurityMargin"

    const-string/jumbo v1, "changeSMSToDefault, change the SMS to default."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mOriginalSMSPkg:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/hips/utils/HipsUtils;->changeDefaultSMS(Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public getSecurityMarginSwitchState()Z
    .locals 1

    .prologue
    .line 211
    sget-boolean v0, Lcom/android/server/hips/security/SecurityMargin;->mIsSecurityMarginSwitchOn:Z

    return v0
.end method

.method public getSecurityMarginTimeStamp()J
    .locals 2

    .prologue
    .line 541
    iget-wide v0, p0, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginTimeStamp:J

    return-wide v0
.end method

.method public getSecurityMarginVersion()I
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x1

    return v0
.end method

.method public isInSecurityMargin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "callerPkg"    # Ljava/lang/String;
    .param p2, "calleePkg"    # Ljava/lang/String;
    .param p3, "calleeClass"    # Ljava/lang/String;
    .param p4, "type"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 216
    sget-boolean v3, Lcom/android/server/hips/security/SecurityMargin;->mIsSecurityMarginSwitchOn:Z

    if-nez v3, :cond_0

    .line 217
    return v4

    .line 223
    :cond_0
    if-ne p4, v5, :cond_1

    .line 224
    return v4

    .line 227
    :cond_1
    if-nez p4, :cond_2

    .line 228
    iget-boolean v2, p0, Lcom/android/server/hips/security/SecurityMargin;->mIsInSecurityMargin:Z

    return v2

    .line 231
    :cond_2
    if-ne p4, v2, :cond_9

    .line 232
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 233
    :cond_3
    return v4

    .line 236
    :cond_4
    sget-object v3, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginItems:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 237
    const-string/jumbo v2, "SecurityMargin"

    .line 238
    const-string/jumbo v3, "isInSecurityMargin, mSecurityMarginItems contains callerPkg, return false, type: sms."

    .line 237
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return v4

    .line 242
    :cond_5
    invoke-static {p1}, Lcom/android/server/hips/utils/HipsUtils;->isSystemApp(Ljava/lang/String;)Z

    move-result v1

    .line 243
    .local v1, "isSystemApp":Z
    invoke-static {p1}, Lcom/android/server/hips/utils/HipsUtils;->isHasSystemSignature(Ljava/lang/String;)Z

    move-result v0

    .line 246
    .local v0, "isHasSystemSignature":Z
    if-nez v1, :cond_6

    if-eqz v0, :cond_7

    .line 247
    :cond_6
    const-string/jumbo v2, "SecurityMargin"

    .line 248
    const-string/jumbo v3, "isInSecurityMargin, the callerPkg is system app or has system signature, return false, type: sms."

    .line 247
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return v4

    .line 252
    :cond_7
    iget-boolean v3, p0, Lcom/android/server/hips/security/SecurityMargin;->mIsInSecurityMargin:Z

    if-nez v3, :cond_8

    iget-boolean v2, p0, Lcom/android/server/hips/security/SecurityMargin;->mIsSMSProtected:Z

    :cond_8
    return v2

    .line 255
    .end local v0    # "isHasSystemSignature":Z
    .end local v1    # "isSystemApp":Z
    :cond_9
    if-ne p4, v5, :cond_12

    .line 256
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b

    .line 257
    :cond_a
    return v4

    .line 259
    :cond_b
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    .line 260
    :cond_c
    return v4

    .line 263
    :cond_d
    iget-object v2, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentSecurityPkg:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 264
    iput-object p2, p0, Lcom/android/server/hips/security/SecurityMargin;->mThePkgCalledBySecurityPkg:Ljava/lang/String;

    .line 265
    const-string/jumbo v2, "SecurityMargin"

    .line 266
    const-string/jumbo v3, "isInSecurityMargin, the callerPkg == mCurrentSecurityPkg, return false, type: activity."

    .line 265
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return v4

    .line 270
    :cond_e
    iget-object v2, p0, Lcom/android/server/hips/security/SecurityMargin;->mThePkgCalledBySecurityPkg:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 271
    iget-object v2, p0, Lcom/android/server/hips/security/SecurityMargin;->mThePkgCalledBySecurityPkg:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    .line 270
    if-eqz v2, :cond_10

    .line 272
    :cond_f
    const-string/jumbo v2, "SecurityMargin"

    .line 273
    const-string/jumbo v3, "isInSecurityMargin, the calleePkg or callerPkg == mThePkgCalledBySecurityPkg, return false, type: activity."

    .line 272
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return v4

    .line 277
    :cond_10
    if-eqz p3, :cond_11

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_11

    .line 278
    sget-object v2, Lcom/android/server/hips/security/SecurityMargin;->mIgnoreClass:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 277
    if-eqz v2, :cond_11

    .line 279
    const-string/jumbo v2, "SecurityMargin"

    .line 280
    const-string/jumbo v3, "isInSecurityMargin, the calleeClass is contained in mIgnoreClass, return false, type: activity."

    .line 279
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return v4

    .line 285
    :cond_11
    iget-boolean v2, p0, Lcom/android/server/hips/security/SecurityMargin;->mIsInSecurityMargin:Z

    return v2

    .line 288
    :cond_12
    return v4
.end method

.method public setSecurityMarginSwitchState(Z)V
    .locals 4
    .param p1, "isOn"    # Z

    .prologue
    .line 195
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 196
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 197
    return-void

    .line 200
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 201
    .local v1, "cr":Landroid/content/ContentResolver;
    if-nez v1, :cond_1

    .line 202
    return-void

    .line 205
    :cond_1
    sput-boolean p1, Lcom/android/server/hips/security/SecurityMargin;->mIsSecurityMarginSwitchOn:Z

    .line 206
    const-string/jumbo v3, "security_margin_switch"

    .line 207
    if-eqz p1, :cond_2

    const/4 v2, 0x1

    .line 206
    :goto_0
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 194
    return-void

    .line 207
    :cond_2
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setSecurityMarginTimeStamp(J)V
    .locals 1
    .param p1, "timeStamp"    # J

    .prologue
    .line 537
    iput-wide p1, p0, Lcom/android/server/hips/security/SecurityMargin;->mSecurityMarginTimeStamp:J

    .line 536
    return-void
.end method

.method public updateSecurityMarginItem(Ljava/lang/String;Z)V
    .locals 12
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "isReadAllItems"    # Z

    .prologue
    const/4 v8, 0x0

    .line 631
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 632
    :cond_0
    const-string/jumbo v8, "SecurityMargin"

    .line 633
    const-string/jumbo v9, "updateSecurityMarginItems, the pkgName is null or empty, return."

    .line 632
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    return-void

    .line 637
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 640
    .local v5, "itemsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_2

    .line 641
    new-instance v4, Ljava/io/File;

    const-string/jumbo v9, "/data/system/security_margin_items"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 646
    .local v4, "itemsFile":Ljava/io/File;
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 647
    const/4 v6, 0x0

    .line 649
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, "allItems":Ljava/lang/String;
    if-eqz v0, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|||"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 652
    const-string/jumbo v9, "SecurityMargin"

    .line 653
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateSecurityMarginItems, the all items contain the pkg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 654
    const-string/jumbo v11, ", begin to update..."

    .line 653
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 652
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const-string/jumbo v9, "\\#\\#\\#"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 656
    .local v3, "items":[Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 657
    array-length v9, v3

    :goto_1
    if-ge v8, v9, :cond_4

    aget-object v2, v3, v8

    .line 658
    .local v2, "item":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 657
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 643
    .end local v0    # "allItems":Ljava/lang/String;
    .end local v2    # "item":Ljava/lang/String;
    .end local v3    # "items":[Ljava/lang/String;
    .end local v4    # "itemsFile":Ljava/io/File;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :cond_2
    new-instance v4, Ljava/io/File;

    const-string/jumbo v9, "/data/system/current_security_margin_items"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v4    # "itemsFile":Ljava/io/File;
    goto :goto_0

    .line 662
    .restart local v0    # "allItems":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :cond_3
    :try_start_2
    const-string/jumbo v8, "SecurityMargin"

    .line 663
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateSecurityMarginItems, the all items do not contain the pkg: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 664
    const-string/jumbo v10, ", stop to update!!"

    .line 663
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 662
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 671
    :cond_4
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 682
    .end local v0    # "allItems":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    :goto_2
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 683
    const/4 v8, 0x1

    invoke-static {v5, v8}, Lcom/android/server/hips/security/SecurityMargin;->setSecurityMarginItem(Ljava/util/ArrayList;Z)I

    .line 630
    :cond_5
    return-void

    .line 672
    .restart local v0    # "allItems":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 673
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "SecurityMargin"

    .line 674
    const-string/jumbo v9, "updateSecurityMarginItems, unable to close buffered reader!!"

    .line 673
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 666
    .end local v0    # "allItems":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 667
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    const-string/jumbo v8, "SecurityMargin"

    .line 668
    const-string/jumbo v9, "updateSecurityMarginItems, can not update the security margin items!!"

    .line 667
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 671
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 672
    :catch_2
    move-exception v1

    .line 673
    const-string/jumbo v8, "SecurityMargin"

    .line 674
    const-string/jumbo v9, "updateSecurityMarginItems, unable to close buffered reader!!"

    .line 673
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 669
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 671
    :goto_4
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 669
    :goto_5
    throw v8

    .line 672
    :catch_3
    move-exception v1

    .line 673
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "SecurityMargin"

    .line 674
    const-string/jumbo v10, "updateSecurityMarginItems, unable to close buffered reader!!"

    .line 673
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 678
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    const-string/jumbo v8, "SecurityMargin"

    .line 679
    const-string/jumbo v9, "updateSecurityMarginItems, the items file does not exists!!"

    .line 678
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 669
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 666
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method public updateSecurityMarginState(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .param p1, "methodId"    # Ljava/lang/String;
    .param p2, "focusedPkg"    # Ljava/lang/String;
    .param p3, "inputType"    # I

    .prologue
    .line 293
    sget-boolean v9, Lcom/android/server/hips/security/SecurityMargin;->mIsSecurityMarginSwitchOn:Z

    if-nez v9, :cond_0

    .line 294
    const-string/jumbo v9, "SecurityMargin"

    .line 295
    const-string/jumbo v10, "updateSecurityMarginState, the switch of security margin is off, return."

    .line 294
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void

    .line 299
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    .line 300
    :cond_1
    return-void

    .line 303
    :cond_2
    if-nez p1, :cond_3

    .line 304
    return-void

    .line 307
    :cond_3
    sget-object v9, Lcom/android/server/hips/security/SecurityMargin;->mIgnorePkg:Ljava/util/ArrayList;

    invoke-virtual {v9, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 308
    invoke-static {}, Lcom/android/server/hips/utils/HipsUtils;->getTopActivityName()Landroid/content/ComponentName;

    move-result-object v5

    .line 309
    .local v5, "name":Landroid/content/ComponentName;
    const-string/jumbo v8, ""

    .line 310
    .local v8, "topClass":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 311
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 313
    :cond_4
    sget-object v9, Lcom/android/server/hips/security/SecurityMargin;->mIgnoreClass:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 314
    const-string/jumbo v9, "SecurityMargin"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateSecurityMarginState, the topClass("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 315
    const-string/jumbo v11, ") is ignored, return."

    .line 314
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void

    .line 320
    .end local v5    # "name":Landroid/content/ComponentName;
    .end local v8    # "topClass":Ljava/lang/String;
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/server/hips/security/SecurityMargin;->isShuoldEnterSecurityMargin(Ljava/lang/String;)Z

    move-result v4

    .line 323
    .local v4, "isShuoldEnterSecurityMargin":Z
    iget-boolean v9, p0, Lcom/android/server/hips/security/SecurityMargin;->mIsInSecurityMargin:Z

    if-ne v9, v4, :cond_7

    .line 324
    iget-boolean v9, p0, Lcom/android/server/hips/security/SecurityMargin;->mIsInSecurityMargin:Z

    if-eqz v9, :cond_6

    .line 325
    iput-object p2, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentSecurityPkg:Ljava/lang/String;

    .line 326
    iput-object p2, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentShowStatusBarPkg:Ljava/lang/String;

    .line 328
    :cond_6
    return-void

    .line 332
    :cond_7
    iget-boolean v9, p0, Lcom/android/server/hips/security/SecurityMargin;->mIsInSecurityMargin:Z

    if-eqz v9, :cond_8

    .line 333
    const/16 v9, 0x12c

    iput v9, p0, Lcom/android/server/hips/security/SecurityMargin;->mSMSProtectedTime:I

    .line 334
    iget-object v9, p0, Lcom/android/server/hips/security/SecurityMargin;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 335
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/hips/security/SecurityMargin;->mIsSMSProtected:Z

    .line 338
    :cond_8
    iput-boolean v4, p0, Lcom/android/server/hips/security/SecurityMargin;->mIsInSecurityMargin:Z

    .line 339
    const-string/jumbo v9, ""

    iput-object v9, p0, Lcom/android/server/hips/security/SecurityMargin;->mThePkgCalledBySecurityPkg:Ljava/lang/String;

    .line 341
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 342
    .local v0, "context":Landroid/content/Context;
    iget-boolean v9, p0, Lcom/android/server/hips/security/SecurityMargin;->mIsInSecurityMargin:Z

    if-eqz v9, :cond_b

    .line 343
    iput-object p2, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentSecurityPkg:Ljava/lang/String;

    .line 344
    iput-object p1, p0, Lcom/android/server/hips/security/SecurityMargin;->mOriginalMethodId:Ljava/lang/String;

    .line 345
    const-string/jumbo v9, "com.meizu.flyme.input/com.meizu.input.MzInputService"

    iput-object v9, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentMethodId:Ljava/lang/String;

    .line 349
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 350
    const-string/jumbo v10, "adb_enabled"

    .line 348
    invoke-static {v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/android/server/hips/security/SecurityMargin;->mOriginalAdbEnableValue:I

    .line 351
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 352
    const-string/jumbo v10, "adb_enabled"

    const/4 v11, 0x0

    .line 351
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    invoke-direct {p0}, Lcom/android/server/hips/security/SecurityMargin;->showSecurityNotification()V

    .line 358
    iget-object v9, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentSecurityPkg:Ljava/lang/String;

    iput-object v9, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentShowStatusBarPkg:Ljava/lang/String;

    .line 359
    const/4 v9, 0x5

    iput v9, p0, Lcom/android/server/hips/security/SecurityMargin;->mStatusBarCorlorShowTime:I

    .line 360
    iget-object v9, p0, Lcom/android/server/hips/security/SecurityMargin;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 361
    iget-object v9, p0, Lcom/android/server/hips/security/SecurityMargin;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 362
    iget-object v9, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentSecurityPkg:Ljava/lang/String;

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/android/server/hips/security/SecurityMargin;->changeStatusBarCorlor(Ljava/lang/String;Z)V

    .line 364
    iget-object v9, p0, Lcom/android/server/hips/security/SecurityMargin;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 365
    invoke-static {v0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, "defaultSMSPkg":Ljava/lang/String;
    iget-boolean v9, p0, Lcom/android/server/hips/security/SecurityMargin;->mIsSMSProtected:Z

    if-nez v9, :cond_9

    if-eqz v2, :cond_9

    .line 367
    const-string/jumbo v9, "com.android.mms"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 372
    :cond_9
    :goto_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 373
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v9, "app_name"

    invoke-interface {v1, v9, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string/jumbo v9, "start_paysafe"

    invoke-static {v9, v1}, Lcom/android/server/hips/utils/HipsUtils;->saveUsageStatsData(Ljava/lang/String;Ljava/util/Map;)V

    .line 400
    .end local v1    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "defaultSMSPkg":Ljava/lang/String;
    :goto_2
    const-string/jumbo v9, "SecurityMargin"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateSecurityMarginState, focusedPkg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 401
    const-string/jumbo v11, " isInSecurityMargin: "

    .line 400
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 401
    iget-boolean v11, p0, Lcom/android/server/hips/security/SecurityMargin;->mIsInSecurityMargin:Z

    .line 400
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 402
    const-string/jumbo v11, " currentMethodId: "

    .line 400
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 402
    iget-object v11, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentMethodId:Ljava/lang/String;

    .line 400
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void

    .line 368
    .restart local v2    # "defaultSMSPkg":Ljava/lang/String;
    :cond_a
    iput-object v2, p0, Lcom/android/server/hips/security/SecurityMargin;->mOriginalSMSPkg:Ljava/lang/String;

    .line 369
    const-string/jumbo v9, "com.android.mms"

    invoke-static {v9}, Lcom/android/server/hips/utils/HipsUtils;->changeDefaultSMS(Ljava/lang/String;)V

    goto :goto_1

    .line 376
    .end local v2    # "defaultSMSPkg":Ljava/lang/String;
    :cond_b
    const-string/jumbo v9, ""

    iput-object v9, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentSecurityPkg:Ljava/lang/String;

    .line 377
    iget-object v9, p0, Lcom/android/server/hips/security/SecurityMargin;->mOriginalMethodId:Ljava/lang/String;

    iput-object v9, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentMethodId:Ljava/lang/String;

    .line 379
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 380
    const-string/jumbo v10, "adb_enabled"

    iget v11, p0, Lcom/android/server/hips/security/SecurityMargin;->mOriginalAdbEnableValue:I

    .line 379
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 382
    iget-object v9, p0, Lcom/android/server/hips/security/SecurityMargin;->mNotificationManager:Landroid/app/NotificationManager;

    iget v10, p0, Lcom/android/server/hips/security/SecurityMargin;->mCurrentSecurityNotificationId:I

    invoke-virtual {v9, v10}, Landroid/app/NotificationManager;->cancel(I)V

    .line 384
    iget v9, p0, Lcom/android/server/hips/security/SecurityMargin;->mStatusBarCorlorShowTime:I

    if-lez v9, :cond_c

    .line 385
    iget-object v9, p0, Lcom/android/server/hips/security/SecurityMargin;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 390
    :cond_c
    sget-object v9, Lcom/android/server/hips/security/SecurityMargin;->mShowStatusBarColorPkgs:Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "pkg$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 391
    .local v6, "pkg":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-direct {p0, v6, v9}, Lcom/android/server/hips/security/SecurityMargin;->changeStatusBarCorlor(Ljava/lang/String;Z)V

    goto :goto_3

    .line 393
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_d
    sget-object v10, Lcom/android/server/hips/security/SecurityMargin;->mShowStatusBarColorPkgs:Ljava/util/ArrayList;

    monitor-enter v10

    .line 394
    :try_start_1
    sget-object v9, Lcom/android/server/hips/security/SecurityMargin;->mShowStatusBarColorPkgs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v10

    goto/16 :goto_2

    .line 393
    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    .line 353
    .end local v7    # "pkg$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    goto/16 :goto_0
.end method
