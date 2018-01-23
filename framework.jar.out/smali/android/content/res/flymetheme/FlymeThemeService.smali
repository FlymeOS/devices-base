.class public Landroid/content/res/flymetheme/FlymeThemeService;
.super Landroid/content/res/flymetheme/IFlymeThemeManager$Stub;
.source "FlymeThemeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/flymetheme/FlymeThemeService$1;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "FlymeThemeService"


# instance fields
.field private final CHANGE_WALLPAPER_MESSAGE:I

.field private final DEBUG:Z

.field private final WAKE_UP_FONT_TRIAL_SERVICE_MESSAGE:I

.field private final WAKE_UP_THEME_TRIAL_SERVICE_MESSAGE:I

.field private mChangeWallpaperIntent:Ljava/lang/String;

.field private mChangeWallpaperTime:J

.field private mChangeWallpaperType:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFontIntervalTime:I

.field private mFontPackageName:Ljava/lang/String;

.field private mFontWakeUpCount:I

.field private mFontWakeUpIntent:Landroid/content/Intent;

.field private final mHandler:Landroid/os/Handler;

.field private mThemeIntervalTime:I

.field private mThemePackageName:Ljava/lang/String;

.field private mThemeWakeUpCount:I

.field private mThemeWakeUpIntent:Landroid/content/Intent;

.field private mTrialFontStartTime:J

.field private mTrialThemeStartTime:J


# direct methods
.method static synthetic -get0(Landroid/content/res/flymetheme/FlymeThemeService;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperIntent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Landroid/content/res/flymetheme/FlymeThemeService;)I
    .locals 1

    iget v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeIntervalTime:I

    return v0
.end method

.method static synthetic -get11(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemePackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get12(Landroid/content/res/flymetheme/FlymeThemeService;)I
    .locals 1

    iget v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpCount:I

    return v0
.end method

.method static synthetic -get13(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get14(Landroid/content/res/flymetheme/FlymeThemeService;)J
    .locals 2

    iget-wide v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mTrialFontStartTime:J

    return-wide v0
.end method

.method static synthetic -get15(Landroid/content/res/flymetheme/FlymeThemeService;)J
    .locals 2

    iget-wide v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mTrialThemeStartTime:J

    return-wide v0
.end method

.method static synthetic -get2(Landroid/content/res/flymetheme/FlymeThemeService;)J
    .locals 2

    iget-wide v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperTime:J

    return-wide v0
.end method

.method static synthetic -get3(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Landroid/content/res/flymetheme/FlymeThemeService;)I
    .locals 1

    iget v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontIntervalTime:I

    return v0
.end method

.method static synthetic -get6(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Landroid/content/res/flymetheme/FlymeThemeService;)I
    .locals 1

    iget v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpCount:I

    return v0
.end method

.method static synthetic -get8(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic -get9(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Landroid/content/res/flymetheme/FlymeThemeService;I)I
    .locals 0

    iput p1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpCount:I

    return p1
.end method

.method static synthetic -set1(Landroid/content/res/flymetheme/FlymeThemeService;I)I
    .locals 0

    iput p1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpCount:I

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/content/res/flymetheme/IFlymeThemeManager$Stub;-><init>()V

    .line 23
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->DEBUG:Z

    .line 27
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->WAKE_UP_THEME_TRIAL_SERVICE_MESSAGE:I

    .line 28
    const/16 v0, 0x3ea

    iput v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->CHANGE_WALLPAPER_MESSAGE:I

    .line 29
    const/16 v0, 0x3eb

    iput v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->WAKE_UP_FONT_TRIAL_SERVICE_MESSAGE:I

    .line 31
    iput-wide v4, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mTrialThemeStartTime:J

    .line 32
    iput-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemePackageName:Ljava/lang/String;

    .line 33
    iput v1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpCount:I

    .line 34
    iput v1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeIntervalTime:I

    .line 35
    new-instance v0, Landroid/content/Intent;

    .line 36
    sget-object v2, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_THEME_TRAIL_SERVICE_WAKE_UP_INTENT:Ljava/lang/String;

    .line 35
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpIntent:Landroid/content/Intent;

    .line 38
    iput-wide v4, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperTime:J

    .line 39
    iput-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperIntent:Ljava/lang/String;

    .line 40
    iput-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperType:Ljava/lang/String;

    .line 42
    iput-wide v4, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mTrialFontStartTime:J

    .line 43
    iput-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontPackageName:Ljava/lang/String;

    .line 44
    iput v1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpCount:I

    .line 45
    iput v1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontIntervalTime:I

    .line 46
    new-instance v0, Landroid/content/Intent;

    .line 47
    sget-object v1, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_FONT_TRAIL_SERVICE_WAKE_UP_INTENT:Ljava/lang/String;

    .line 46
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpIntent:Landroid/content/Intent;

    .line 58
    new-instance v0, Landroid/content/res/flymetheme/FlymeThemeService$1;

    invoke-direct {v0, p0}, Landroid/content/res/flymetheme/FlymeThemeService$1;-><init>(Landroid/content/res/flymetheme/FlymeThemeService;)V

    iput-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    .line 50
    iput-object p1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mContext:Landroid/content/Context;

    .line 49
    return-void

    :cond_0
    move v0, v1

    .line 23
    goto :goto_0
.end method

.method private checkSystemApp()Z
    .locals 4

    .prologue
    .line 197
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "mClient":Ljava/lang/String;
    iget-boolean v1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 199
    const-string/jumbo v1, "FlymeThemeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkSystemApp------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v0}, Landroid/content/res/flymetheme/FlymeThemeService;->isSystemApp(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_0
    invoke-direct {p0, v0}, Landroid/content/res/flymetheme/FlymeThemeService;->isSystemApp(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isSystemApp(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 205
    const/4 v1, 0x0

    .line 206
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 207
    return v4

    .line 210
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 211
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 212
    return v5

    .line 213
    :cond_1
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_2

    .line 214
    return v5

    .line 216
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 218
    return v4

    .line 220
    .end local v0    # "e1":Ljava/lang/Exception;
    .restart local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2
    return v4
.end method


# virtual methods
.method public cancelChangeWallpaper()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 187
    iget-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 188
    const-string/jumbo v0, "FlymeThemeService"

    const-string/jumbo v1, "cancelChangeWallpaper------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    invoke-direct {p0}, Landroid/content/res/flymetheme/FlymeThemeService;->checkSystemApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 186
    return-void
.end method

.method public cancelFontWakeUpTrialService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 244
    iget-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 245
    const-string/jumbo v0, "FlymeThemeService"

    const-string/jumbo v1, "cancelFontWakeUpTrialService------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    invoke-direct {p0}, Landroid/content/res/flymetheme/FlymeThemeService;->checkSystemApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 251
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mTrialFontStartTime:J

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontPackageName:Ljava/lang/String;

    .line 253
    iput v2, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpCount:I

    .line 254
    iput v2, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontIntervalTime:I

    .line 243
    return-void
.end method

.method public cancelWakeUpTrialService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 144
    iget-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 145
    const-string/jumbo v0, "FlymeThemeService"

    const-string/jumbo v1, "canceWakeUpTrialService------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    invoke-direct {p0}, Landroid/content/res/flymetheme/FlymeThemeService;->checkSystemApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    return-void

    .line 150
    :cond_1
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mTrialThemeStartTime:J

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemePackageName:Ljava/lang/String;

    .line 153
    iput v2, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpCount:I

    .line 154
    iput v2, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeIntervalTime:I

    .line 143
    return-void
.end method

.method public createChangeWallpaper(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p1, "intentName"    # Ljava/lang/String;
    .param p2, "changeType"    # Ljava/lang/String;
    .param p3, "sendTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x3ea

    .line 166
    iget-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 167
    const-string/jumbo v0, "FlymeThemeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "createChangeWallpaper------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    invoke-direct {p0}, Landroid/content/res/flymetheme/FlymeThemeService;->checkSystemApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    return-void

    .line 173
    :cond_1
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 174
    iput-wide p3, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperTime:J

    .line 175
    iput-object p1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperIntent:Ljava/lang/String;

    .line 176
    iput-object p2, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperType:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperTime:J

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 165
    return-void
.end method

.method public isTrialFontAvailable()Z
    .locals 2

    .prologue
    .line 261
    iget-boolean v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 262
    const-string/jumbo v0, "FlymeThemeService"

    const-string/jumbo v1, "isTrialFontAvailable------"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    invoke-direct {p0}, Landroid/content/res/flymetheme/FlymeThemeService;->checkSystemApp()Z

    move-result v0

    if-nez v0, :cond_1

    .line 265
    const/4 v0, 0x0

    return v0

    .line 267
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public startFontWakeUpTrialService(JLjava/lang/String;II)V
    .locals 5
    .param p1, "startTime"    # J
    .param p3, "fontPackageName"    # Ljava/lang/String;
    .param p4, "wakeUpCount"    # I
    .param p5, "intervalTime"    # I

    .prologue
    const/16 v4, 0x3eb

    .line 228
    invoke-direct {p0}, Landroid/content/res/flymetheme/FlymeThemeService;->checkSystemApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 232
    iput-wide p1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mTrialFontStartTime:J

    .line 233
    iput-object p3, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontPackageName:Ljava/lang/String;

    .line 234
    iput p4, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpCount:I

    .line 235
    iput p5, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontIntervalTime:I

    .line 236
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    iget v1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontIntervalTime:I

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 237
    iget v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpCount:I

    .line 227
    return-void
.end method

.method public startWakeUpTrialService(JLjava/lang/String;II)V
    .locals 5
    .param p1, "startTime"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "wakeUpCount"    # I
    .param p5, "intervalTime"    # I

    .prologue
    const/16 v4, 0x3e9

    .line 125
    invoke-direct {p0}, Landroid/content/res/flymetheme/FlymeThemeService;->checkSystemApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 129
    iput-wide p1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mTrialThemeStartTime:J

    .line 130
    iput-object p3, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemePackageName:Ljava/lang/String;

    .line 131
    iput p4, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpCount:I

    .line 132
    iput p5, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeIntervalTime:I

    .line 133
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;

    iget v1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeIntervalTime:I

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 134
    iget v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpCount:I

    .line 124
    return-void
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 54
    const-string/jumbo v0, "FlymeThemeService"

    const-string/jumbo v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v0, Landroid/content/res/flymetheme/FlymeScreenOffManager;

    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/content/res/flymetheme/FlymeScreenOffManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/content/res/flymetheme/FlymeScreenOffManager;->registerScreenOffBroadcast()V

    .line 53
    return-void
.end method
