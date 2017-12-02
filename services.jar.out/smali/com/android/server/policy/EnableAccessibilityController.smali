.class public Lcom/android/server/policy/EnableAccessibilityController;
.super Ljava/lang/Object;
.source "EnableAccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/EnableAccessibilityController$1;
    }
.end annotation


# static fields
.field private static final ENABLE_ACCESSIBILITY_DELAY_MILLIS:I = 0x1770

.field public static final MESSAGE_ENABLE_ACCESSIBILITY:I = 0x3

.field public static final MESSAGE_SPEAK_ENABLE_CANCELED:I = 0x2

.field public static final MESSAGE_SPEAK_WARNING:I = 0x1

.field private static final SPEAK_WARNING_DELAY_MILLIS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "EnableAccessibilityController"


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

.field private mCanceled:Z

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private mFirstPointerDownX:F

.field private mFirstPointerDownY:F

.field private final mHandler:Landroid/os/Handler;

.field private final mOnAccessibilityEnabledCallback:Ljava/lang/Runnable;

.field private mSecondPointerDownX:F

.field private mSecondPointerDownY:F

.field private final mTone:Landroid/media/Ringtone;

.field private final mTouchSlop:F

.field private final mTts:Landroid/speech/tts/TextToSpeech;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/EnableAccessibilityController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mDestroyed:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/media/Ringtone;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mTone:Landroid/media/Ringtone;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/policy/EnableAccessibilityController;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/EnableAccessibilityController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/EnableAccessibilityController;->enableAccessibility()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onAccessibilityEnabledCallback"    # Ljava/lang/Runnable;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/android/server/policy/EnableAccessibilityController$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/EnableAccessibilityController$1;-><init>(Lcom/android/server/policy/EnableAccessibilityController;)V

    iput-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    .line 87
    const-string/jumbo v0, "accessibility"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 86
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mAccessibilityManager:Landroid/view/accessibility/IAccessibilityManager;

    .line 107
    iput-object p1, p0, Lcom/android/server/policy/EnableAccessibilityController;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/android/server/policy/EnableAccessibilityController;->mOnAccessibilityEnabledCallback:Ljava/lang/Runnable;

    .line 109
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mUserManager:Landroid/os/UserManager;

    .line 110
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/android/server/policy/EnableAccessibilityController$2;

    invoke-direct {v1, p0}, Lcom/android/server/policy/EnableAccessibilityController$2;-><init>(Lcom/android/server/policy/EnableAccessibilityController;)V

    invoke-direct {v0, p1, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 118
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mTone:Landroid/media/Ringtone;

    .line 119
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mTone:Landroid/media/Ringtone;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 121
    const v1, 0x1050091

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mTouchSlop:F

    .line 106
    return-void
.end method

.method public static canEnableAccessibilityViaGesture(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 125
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 128
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 136
    const-string/jumbo v4, "enable_accessibility_global_gesture_enabled"

    .line 135
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 137
    invoke-static {p0}, Lcom/android/server/policy/EnableAccessibilityController;->getInstalledSpeakingAccessibilityServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 135
    :cond_1
    :goto_0
    return v1

    .line 131
    :cond_2
    return v1

    :cond_3
    move v1, v2

    .line 137
    goto :goto_0
.end method

.method private cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 211
    iput-boolean v1, p0, Lcom/android/server/policy/EnableAccessibilityController;->mCanceled:Z

    .line 212
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 210
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public static disableAccessibility(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    const-string/jumbo v4, "accessibility"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 256
    invoke-static {v4}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    .line 258
    .local v0, "accessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    invoke-static {p0}, Lcom/android/server/policy/EnableAccessibilityController;->getInstalledSpeakingAccessibilityServiceComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    .line 259
    .local v1, "componentName":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 260
    return-void

    .line 263
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 265
    .local v3, "userId":I
    :try_start_0
    invoke-interface {v0, v1, v3}, Landroid/view/accessibility/IAccessibilityManager;->disableAccessibilityService(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v2

    .line 267
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "EnableAccessibilityController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "cannot disable accessibility "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enableAccessibility()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/EnableAccessibilityController;->enableAccessibility(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mOnAccessibilityEnabledCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 220
    :cond_0
    return-void
.end method

.method public static enableAccessibility(Landroid/content/Context;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    .line 228
    const-string/jumbo v8, "accessibility"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    .line 227
    invoke-static {v8}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    .line 230
    .local v0, "accessibilityManager":Landroid/view/accessibility/IAccessibilityManager;
    const-class v8, Landroid/view/WindowManagerInternal;

    .line 229
    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManagerInternal;

    .line 232
    .local v7, "windowManager":Landroid/view/WindowManagerInternal;
    const-string/jumbo v8, "user"

    .line 231
    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 233
    .local v6, "userManager":Landroid/os/UserManager;
    invoke-static {p0}, Lcom/android/server/policy/EnableAccessibilityController;->getInstalledSpeakingAccessibilityServiceComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    .line 234
    .local v1, "componentName":Landroid/content/ComponentName;
    if-nez v1, :cond_0

    .line 235
    const/4 v8, 0x0

    return v8

    .line 238
    :cond_0
    invoke-virtual {v7}, Landroid/view/WindowManagerInternal;->isKeyguardLocked()Z

    move-result v4

    .line 239
    .local v4, "keyguardLocked":Z
    invoke-virtual {v6}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v11, :cond_2

    const/4 v3, 0x1

    .line 241
    .local v3, "hasMoreThanOneUser":Z
    :goto_0
    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    .line 244
    if-eqz v4, :cond_1

    .line 246
    const/4 v8, 0x1

    .line 245
    :try_start_0
    invoke-interface {v0, v1, v8}, Landroid/view/accessibility/IAccessibilityManager;->temporaryEnableAccessibilityStateUntilKeyguardRemoved(Landroid/content/ComponentName;Z)V

    .line 252
    :cond_1
    :goto_1
    return v11

    .line 239
    .end local v3    # "hasMoreThanOneUser":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "hasMoreThanOneUser":Z
    goto :goto_0

    .line 242
    :cond_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 243
    .local v5, "userId":I
    invoke-interface {v0, v1, v5}, Landroid/view/accessibility/IAccessibilityManager;->enableAccessibilityService(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 248
    .end local v5    # "userId":I
    :catch_0
    move-exception v2

    .line 249
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v8, "EnableAccessibilityController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "cannot enable accessibilty: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getInstalledSpeakingAccessibilityServiceComponent(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 283
    invoke-static {p0}, Lcom/android/server/policy/EnableAccessibilityController;->getInstalledSpeakingAccessibilityServices(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 284
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 285
    const/4 v2, 0x0

    return-object v2

    .line 288
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 289
    .local v0, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getInstalledSpeakingAccessibilityServices(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 145
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 146
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 148
    .local v1, "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    iget v3, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 149
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 152
    .end local v1    # "service":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_1
    return-object v2
.end method

.method public static isAccessibilityEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 273
    const-class v4, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 274
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    .line 276
    .local v1, "enabledServices":Ljava/util/List;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mDestroyed:Z

    .line 155
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 162
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mFirstPointerDownX:F

    .line 163
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mFirstPointerDownY:F

    .line 164
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mSecondPointerDownX:F

    .line 165
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mSecondPointerDownY:F

    .line 166
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    .line 167
    const-wide/16 v2, 0x7d0

    .line 166
    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 168
    iget-object v0, p0, Lcom/android/server/policy/EnableAccessibilityController;->mHandler:Landroid/os/Handler;

    .line 169
    const-wide/16 v2, 0x1770

    .line 168
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 170
    return v4

    .line 172
    :cond_0
    return v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    .line 177
    .local v2, "pointerCount":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 178
    .local v0, "action":I
    iget-boolean v4, p0, Lcom/android/server/policy/EnableAccessibilityController;->mCanceled:Z

    if-eqz v4, :cond_1

    .line 179
    if-ne v0, v8, :cond_0

    .line 180
    iput-boolean v5, p0, Lcom/android/server/policy/EnableAccessibilityController;->mCanceled:Z

    .line 182
    :cond_0
    return v8

    .line 184
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 207
    :cond_2
    :goto_0
    :pswitch_0
    return v8

    .line 186
    :pswitch_1
    const/4 v4, 0x2

    if-le v2, v4, :cond_2

    .line 187
    invoke-direct {p0}, Lcom/android/server/policy/EnableAccessibilityController;->cancel()V

    goto :goto_0

    .line 191
    :pswitch_2
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 192
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget v6, p0, Lcom/android/server/policy/EnableAccessibilityController;->mFirstPointerDownX:F

    iget v7, p0, Lcom/android/server/policy/EnableAccessibilityController;->mFirstPointerDownY:F

    .line 191
    invoke-static {v4, v5, v6, v7}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result v1

    .line 193
    .local v1, "firstPointerMove":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/server/policy/EnableAccessibilityController;->mTouchSlop:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 194
    invoke-direct {p0}, Lcom/android/server/policy/EnableAccessibilityController;->cancel()V

    .line 196
    :cond_3
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 197
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    iget v6, p0, Lcom/android/server/policy/EnableAccessibilityController;->mSecondPointerDownX:F

    iget v7, p0, Lcom/android/server/policy/EnableAccessibilityController;->mSecondPointerDownY:F

    .line 196
    invoke-static {v4, v5, v6, v7}, Landroid/util/MathUtils;->dist(FFFF)F

    move-result v3

    .line 198
    .local v3, "secondPointerMove":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/server/policy/EnableAccessibilityController;->mTouchSlop:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 199
    invoke-direct {p0}, Lcom/android/server/policy/EnableAccessibilityController;->cancel()V

    goto :goto_0

    .line 204
    .end local v1    # "firstPointerMove":F
    .end local v3    # "secondPointerMove":F
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/policy/EnableAccessibilityController;->cancel()V

    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
