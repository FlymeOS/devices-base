.class public Lcom/android/server/hips/intercept/UsbInstallInterception;
.super Ljava/lang/Object;
.source "UsbInstallInterception.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hips/intercept/UsbInstallInterception$1;,
        Lcom/android/server/hips/intercept/UsbInstallInterception$2;
    }
.end annotation


# static fields
.field private static final ICON_SAVE_PATH:Ljava/lang/String; = "/data/system/usb_install"

.field public static final MODE_ALLOW:I = 0x1

.field public static final MODE_ASK:I = 0x0

.field public static final MODE_DELETE:I = -0x2

.field public static final MODE_DENY:I = -0x1

.field public static final MODE_ERROR:I = -0x3

.field private static final MSG_GET_APK_ACHIVE_INFO:I = 0x0

.field private static final MSG_RECEIVE_APK_ACHIVE_INFO:I = 0x1

.field private static final MSG_SHOW_ALERT_DIALOG:I = 0x2

.field private static final PREFIX:Ljava/lang/String; = "usb_install_item_"

.field private static final SWITCH:Ljava/lang/String; = "switch"

.field private static final SWITCH_OFF:I = -0x1

.field private static final SWITCH_ON:I = 0x1

.field public static final TAG:Ljava/lang/String; = "UsbInstallInterception"

.field private static final TYPE_DELETE:I = 0x2

.field private static final TYPE_UPDATE:I = 0x1

.field private static mIsUsbInstallSwitchOn:Z

.field private static volatile mUsbInstallInterception:Lcom/android/server/hips/intercept/UsbInstallInterception;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mCurrentApkIcon:Landroid/graphics/drawable/Drawable;

.field private mCurrentApkName:Ljava/lang/String;

.field private mCurrentApkPath:Ljava/lang/String;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mDataHasBeenReceived:Z

.field private mDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mIsDialogShowing:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/hips/intercept/UsbInstallInterception;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/hips/intercept/UsbInstallInterception;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/hips/intercept/UsbInstallInterception;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/hips/intercept/UsbInstallInterception;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/hips/intercept/UsbInstallInterception;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/hips/intercept/UsbInstallInterception;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/hips/intercept/UsbInstallInterception;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/hips/intercept/UsbInstallInterception;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentPkgName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/hips/intercept/UsbInstallInterception;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mDataHasBeenReceived:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/hips/intercept/UsbInstallInterception;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mIsDialogShowing:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/hips/intercept/UsbInstallInterception;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "apkName"    # Ljava/lang/String;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/hips/intercept/UsbInstallInterception;->showDialog(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/hips/intercept/UsbInstallInterception;->mUsbInstallInterception:Lcom/android/server/hips/intercept/UsbInstallInterception;

    .line 80
    invoke-static {}, Lcom/android/server/hips/intercept/UsbInstallInterception;->readUsbInstallSwitchState()I

    move-result v0

    .line 81
    .local v0, "state":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/android/server/hips/intercept/UsbInstallInterception;->mIsUsbInstallSwitchOn:Z

    .line 41
    return-void

    .line 81
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v0, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mDataHasBeenReceived:Z

    .line 69
    iput-boolean v0, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mIsDialogShowing:Z

    .line 71
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkPath:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentPkgName:Ljava/lang/String;

    .line 73
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkName:Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/android/server/hips/intercept/UsbInstallInterception$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/hips/intercept/UsbInstallInterception$1;-><init>(Lcom/android/server/hips/intercept/UsbInstallInterception;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mHandler:Landroid/os/Handler;

    .line 111
    new-instance v0, Lcom/android/server/hips/intercept/UsbInstallInterception$2;

    invoke-direct {v0, p0}, Lcom/android/server/hips/intercept/UsbInstallInterception$2;-><init>(Lcom/android/server/hips/intercept/UsbInstallInterception;)V

    iput-object v0, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mConnection:Landroid/content/ServiceConnection;

    .line 132
    return-void
.end method

.method public static getInstance()Lcom/android/server/hips/intercept/UsbInstallInterception;
    .locals 2

    .prologue
    .line 136
    sget-object v0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mUsbInstallInterception:Lcom/android/server/hips/intercept/UsbInstallInterception;

    if-nez v0, :cond_1

    .line 137
    const-class v1, Lcom/android/server/hips/intercept/UsbInstallInterception;

    monitor-enter v1

    .line 138
    :try_start_0
    sget-object v0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mUsbInstallInterception:Lcom/android/server/hips/intercept/UsbInstallInterception;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/android/server/hips/intercept/UsbInstallInterception;

    invoke-direct {v0}, Lcom/android/server/hips/intercept/UsbInstallInterception;-><init>()V

    sput-object v0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mUsbInstallInterception:Lcom/android/server/hips/intercept/UsbInstallInterception;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 144
    :cond_1
    sget-object v0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mUsbInstallInterception:Lcom/android/server/hips/intercept/UsbInstallInterception;

    return-object v0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isDataInitCompletely()Z
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 370
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 371
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 372
    return v9

    .line 375
    :cond_0
    new-instance v3, Landroid/content/Intent;

    .line 376
    const-string/jumbo v6, "com.meizu.safe.permission.UsbInstallService"

    .line 375
    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 377
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "com.meizu.safe"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 381
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mConnection:Landroid/content/ServiceConnection;

    .line 382
    sget-object v7, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v8, 0x1

    .line 381
    invoke-virtual {v0, v3, v6, v8, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 383
    const-string/jumbo v6, "UsbInstallInterception"

    .line 384
    const-string/jumbo v7, "isDataInitCompletely, bind UsbInstallService failed, return false"

    .line 383
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 385
    return v9

    .line 391
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 394
    :goto_0
    monitor-enter p0

    .line 395
    const/4 v2, 0x0

    .line 396
    .local v2, "i":I
    :goto_1
    :try_start_1
    iget-boolean v6, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mDataHasBeenReceived:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v6, :cond_2

    const/16 v6, 0x14

    if-ge v2, v6, :cond_2

    .line 398
    const-wide/16 v6, 0xc8

    :try_start_2
    invoke-virtual {p0, v6, v7}, Lcom/android/server/hips/intercept/UsbInstallInterception;->wait(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 404
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 387
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 388
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v6, "UsbInstallInterception"

    .line 389
    const-string/jumbo v7, "isDataInitCompletely, unable to bind UsbInstallService!"

    .line 388
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 391
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 390
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 391
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 390
    throw v6

    .line 399
    .restart local v2    # "i":I
    :catch_1
    move-exception v1

    .line 400
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v6, "UsbInstallInterception"

    .line 401
    const-string/jumbo v7, "isDataInitCompletely, failed to hang up the process!"

    .line 400
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    .line 402
    return v9

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    monitor-exit p0

    .line 408
    iget-boolean v6, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mDataHasBeenReceived:Z

    if-nez v6, :cond_3

    .line 409
    iget-object v6, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 410
    return v9

    .line 394
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 413
    :cond_3
    iget-object v6, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 414
    iput-boolean v9, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mDataHasBeenReceived:Z

    .line 416
    return v10
.end method

.method private readApkIconFromStorage(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 420
    if-nez p2, :cond_0

    .line 421
    return-object v3

    .line 424
    :cond_0
    const/4 v0, 0x0

    .line 425
    .local v0, "apkIcon":Landroid/graphics/drawable/Drawable;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/data/system/usb_install/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 426
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 427
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 428
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 429
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "apkIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 433
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return-object v0
.end method

.method private static readUsbInstallSwitchState()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 355
    const-string/jumbo v1, "usb_install_item_switch"

    invoke-static {v1}, Lcom/android/server/hips/utils/HipsUtils;->getValueFromSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 357
    :cond_0
    const-string/jumbo v1, "usb_install_item_switch"

    const-string/jumbo v2, "switch:1"

    invoke-static {v1, v2}, Lcom/android/server/hips/utils/HipsUtils;->putValueIntoSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return v3

    .line 362
    :cond_1
    const-string/jumbo v1, "switch:-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 363
    const/4 v1, -0x1

    return v1

    .line 366
    :cond_2
    return v3
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "apkName"    # Ljava/lang/String;
    .param p3, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 438
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 439
    const/4 v5, 0x5

    .line 438
    invoke-direct {v0, p4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 440
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v5, Lcom/flyme/internal/R$layout;->usb_install_dialog_view:I

    .line 441
    const/4 v6, 0x0

    .line 440
    invoke-static {p4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 442
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 444
    sget v5, Lcom/flyme/internal/R$id;->event_title:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 445
    .local v3, "title":Landroid/widget/TextView;
    sget v5, Lcom/flyme/internal/R$string;->usb_install_dialog_title:I

    invoke-virtual {p4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 447
    sget v5, Lcom/flyme/internal/R$id;->event_content:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 448
    .local v2, "message":Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    sget v5, Lcom/flyme/internal/R$id;->event_icon:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 451
    .local v1, "icon":Landroid/widget/ImageView;
    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 454
    sget v5, Lcom/flyme/internal/R$string;->usb_install_dialog_allow:I

    invoke-virtual {p4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 455
    new-instance v6, Lcom/android/server/hips/intercept/UsbInstallInterception$3;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/server/hips/intercept/UsbInstallInterception$3;-><init>(Lcom/android/server/hips/intercept/UsbInstallInterception;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 465
    sget v5, Lcom/flyme/internal/R$string;->usb_install_dialog_deny:I

    invoke-virtual {p4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 466
    new-instance v6, Lcom/android/server/hips/intercept/UsbInstallInterception$4;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/server/hips/intercept/UsbInstallInterception$4;-><init>(Lcom/android/server/hips/intercept/UsbInstallInterception;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 475
    new-instance v5, Lcom/android/server/hips/intercept/UsbInstallInterception$5;

    invoke-direct {v5, p0}, Lcom/android/server/hips/intercept/UsbInstallInterception$5;-><init>(Lcom/android/server/hips/intercept/UsbInstallInterception;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 483
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mDialog:Landroid/app/AlertDialog;

    .line 484
    iget-object v5, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7e0

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 485
    iget-object v5, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mDialog:Landroid/app/AlertDialog;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 486
    iget-object v5, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 437
    return-void
.end method


# virtual methods
.method public getAllUsbInstallItems()Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v7

    .line 281
    .local v7, "context":Landroid/content/Context;
    if-nez v7, :cond_0

    .line 282
    const/4 v2, 0x0

    return-object v2

    .line 285
    :cond_0
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 286
    .local v1, "resolver":Landroid/content/ContentResolver;
    if-nez v1, :cond_1

    .line 287
    const/4 v2, 0x0

    return-object v2

    .line 290
    :cond_1
    sget-object v2, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    .line 291
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "name"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 292
    const-string/jumbo v4, "value"

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 290
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 293
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_3

    .line 294
    :cond_2
    const/4 v2, 0x0

    return-object v2

    .line 297
    :cond_3
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 299
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string/jumbo v2, "name"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 301
    .local v12, "nameIndex":I
    const-string/jumbo v2, "value"

    .line 300
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 310
    .local v17, "valueIndex":I
    :cond_4
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 311
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 312
    .local v11, "name":Ljava/lang/String;
    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 313
    .local v15, "value":Ljava/lang/String;
    if-eqz v11, :cond_4

    if-eqz v15, :cond_4

    .line 317
    const-string/jumbo v2, "usb_install_item_switch"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 321
    const-string/jumbo v2, "usb_install_item_"

    invoke-virtual {v11, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 322
    if-eqz v15, :cond_5

    .line 323
    const-string/jumbo v2, "\\:"

    invoke-virtual {v15, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 324
    .local v16, "valueArray":[Ljava/lang/String;
    if-eqz v16, :cond_4

    move-object/from16 v0, v16

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 328
    const/4 v2, 0x1

    aget-object v14, v16, v2

    .line 329
    .local v14, "stateStr":Ljava/lang/String;
    if-eqz v14, :cond_4

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 333
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 334
    .local v13, "state":I
    const/4 v2, -0x2

    if-eq v13, v2, :cond_4

    .line 338
    .end local v13    # "state":I
    .end local v14    # "stateStr":Ljava/lang/String;
    .end local v16    # "valueArray":[Ljava/lang/String;
    :cond_5
    invoke-interface {v10, v11, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 342
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "nameIndex":I
    .end local v15    # "value":Ljava/lang/String;
    .end local v17    # "valueIndex":I
    :catch_0
    move-exception v9

    .line 343
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v2, "UsbInstallInterception"

    .line 344
    const-string/jumbo v3, "getAllUsbInstallItems, unable to get all usb install items!"

    .line 343
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    if-eqz v8, :cond_6

    .line 347
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 351
    :cond_6
    const/4 v2, 0x0

    return-object v2

    .line 346
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v12    # "nameIndex":I
    .restart local v17    # "valueIndex":I
    :cond_7
    if-eqz v8, :cond_8

    .line 347
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 341
    :cond_8
    return-object v10

    .line 345
    .end local v12    # "nameIndex":I
    .end local v17    # "valueIndex":I
    :catchall_0
    move-exception v2

    .line 346
    if-eqz v8, :cond_9

    .line 347
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 345
    :cond_9
    throw v2
.end method

.method public getUsbInstallItemState(Ljava/lang/String;)I
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x3

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "usb_install_item_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/hips/utils/HipsUtils;->getValueFromSettings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 256
    :cond_0
    return v7

    .line 259
    :cond_1
    const-string/jumbo v5, "\\:"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, "valueArray":[Ljava/lang/String;
    if-eqz v4, :cond_2

    array-length v5, v4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    .line 261
    :cond_2
    return v7

    .line 264
    :cond_3
    const/4 v5, 0x1

    aget-object v2, v4, v5

    .line 265
    .local v2, "stateStr":Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    .line 266
    :cond_4
    return v7

    .line 269
    :cond_5
    const/4 v1, -0x3

    .line 271
    .local v1, "state":I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 276
    :goto_0
    return v1

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "UsbInstallInterception"

    const-string/jumbo v6, "getUsbInstallItemState, unable to parse string to int!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUsbInstallSwitchState()I
    .locals 1

    .prologue
    .line 234
    sget-boolean v0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mIsUsbInstallSwitchOn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isStopUsbInstall(Ljava/lang/String;)I
    .locals 9
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 148
    sget-boolean v4, Lcom/android/server/hips/intercept/UsbInstallInterception;->mIsUsbInstallSwitchOn:Z

    if-nez v4, :cond_0

    .line 149
    const-string/jumbo v4, "UsbInstallInterception"

    .line 150
    const-string/jumbo v5, "isStopUsbInstall, the mIsUsbInstallSwitchOn is false, return allow."

    .line 149
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return v6

    .line 154
    :cond_0
    iput-object p1, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkPath:Ljava/lang/String;

    .line 155
    invoke-direct {p0}, Lcom/android/server/hips/intercept/UsbInstallInterception;->isDataInitCompletely()Z

    move-result v4

    if-nez v4, :cond_1

    .line 156
    const-string/jumbo v4, "UsbInstallInterception"

    const-string/jumbo v5, "isStopUsbInstall, unable to init data, return allow."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return v6

    .line 160
    :cond_1
    iget-object v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 161
    :cond_2
    const-string/jumbo v4, "UsbInstallInterception"

    .line 162
    const-string/jumbo v5, "isStopUsbInstall, the mCurrentPkgName is null or empty, return allow."

    .line 161
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return v6

    .line 166
    :cond_3
    iget-object v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkName:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    .line 167
    :cond_4
    const-string/jumbo v4, "UsbInstallInterception"

    .line 168
    const-string/jumbo v5, "isStopUsbInstall, the mCurrentApkName is null or empty, return allow."

    .line 167
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return v6

    .line 172
    :cond_5
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mContext:Landroid/content/Context;

    .line 173
    iget-object v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mContext:Landroid/content/Context;

    if-nez v4, :cond_6

    .line 174
    const-string/jumbo v4, "UsbInstallInterception"

    const-string/jumbo v5, "isStopUsbInstall, the context is null, return allow."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return v6

    .line 178
    :cond_6
    iget-object v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentPkgName:Ljava/lang/String;

    invoke-static {v4}, Landroid/content/res/flymetheme/FlymeThemeHelper;->getCustomIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkIcon:Landroid/graphics/drawable/Drawable;

    .line 179
    iget-object v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_7

    .line 180
    iget-object v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentPkgName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4, v5}, Lcom/android/server/hips/intercept/UsbInstallInterception;->readApkIconFromStorage(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkIcon:Landroid/graphics/drawable/Drawable;

    .line 182
    :cond_7
    iget-object v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_8

    .line 183
    iget-object v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mContext:Landroid/content/Context;

    .line 184
    const v5, #android:drawable@sym_def_app_icon#t

    .line 183
    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkIcon:Landroid/graphics/drawable/Drawable;

    .line 187
    :cond_8
    iget-object v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/hips/intercept/UsbInstallInterception;->getUsbInstallItemState(Ljava/lang/String;)I

    move-result v2

    .line 188
    .local v2, "mode":I
    if-eq v2, v6, :cond_9

    const/4 v4, -0x1

    if-ne v2, v4, :cond_a

    .line 189
    :cond_9
    return v2

    .line 191
    :cond_a
    iget-object v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentPkgName:Ljava/lang/String;

    .line 192
    iget-object v5, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkName:Ljava/lang/String;

    .line 191
    invoke-virtual {p0, v6, v4, v5, v8}, Lcom/android/server/hips/intercept/UsbInstallInterception;->setUsbInstallItemState(ILjava/lang/String;Ljava/lang/String;I)V

    .line 193
    const/4 v2, 0x0

    .line 196
    monitor-enter p0

    .line 197
    :try_start_0
    iget-object v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 198
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mIsDialogShowing:Z

    .line 199
    const/4 v1, 0x0

    .line 200
    .local v1, "i":I
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mIsDialogShowing:Z

    if-eqz v4, :cond_b

    if-nez v2, :cond_b

    const/16 v4, 0x4b

    if-ge v1, v4, :cond_b

    .line 201
    iget-object v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/hips/intercept/UsbInstallInterception;->getUsbInstallItemState(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 203
    const-wide/16 v4, 0xc8

    :try_start_1
    invoke-virtual {p0, v4, v5}, Lcom/android/server/hips/intercept/UsbInstallInterception;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v4, "UsbInstallInterception"

    .line 206
    const-string/jumbo v5, "isStopUsbInstall, failed to hang up the process!"

    .line 205
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_b
    monitor-exit p0

    .line 213
    iget-boolean v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mIsDialogShowing:Z

    if-eqz v4, :cond_c

    .line 214
    iget-object v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 217
    :cond_c
    iget-object v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/hips/intercept/UsbInstallInterception;->getUsbInstallItemState(Ljava/lang/String;)I

    move-result v3

    .line 219
    .local v3, "realMode":I
    const-string/jumbo v4, ""

    iput-object v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkPath:Ljava/lang/String;

    .line 220
    const-string/jumbo v4, ""

    iput-object v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentPkgName:Ljava/lang/String;

    .line 221
    const-string/jumbo v4, ""

    iput-object v4, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkName:Ljava/lang/String;

    .line 222
    iput-object v7, p0, Lcom/android/server/hips/intercept/UsbInstallInterception;->mCurrentApkIcon:Landroid/graphics/drawable/Drawable;

    .line 224
    return v3

    .line 196
    .end local v1    # "i":I
    .end local v3    # "realMode":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public setUsbInstallItemState(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "apkName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "usb_install_item_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 241
    .local v2, "value":Ljava/lang/String;
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 250
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Lcom/android/server/hips/utils/HipsUtils;->putValueIntoSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void

    .line 243
    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 245
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/data/system/usb_install/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 247
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public setUsbInstallSwitchState(Z)V
    .locals 3
    .param p1, "isOn"    # Z

    .prologue
    .line 228
    const-string/jumbo v1, "usb_install_item_switch"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switch:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 229
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 228
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/hips/utils/HipsUtils;->putValueIntoSettings(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    sput-boolean p1, Lcom/android/server/hips/intercept/UsbInstallInterception;->mIsUsbInstallSwitchOn:Z

    .line 227
    return-void

    .line 229
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
