.class public Lcom/android/server/notification/CloudNotificationHelper;
.super Ljava/lang/Object;
.source "CloudNotificationHelper.java"


# static fields
.field private static CLOUD_PACKAGE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string/jumbo v0, "com.meizu.cloud"

    sput-object v0, Lcom/android/server/notification/CloudNotificationHelper;->CLOUD_PACKAGE_NAME:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrigPackageName(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "notification"    # Landroid/app/Notification;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 15
    sget-object v1, Lcom/android/server/notification/CloudNotificationHelper;->CLOUD_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 16
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "android.originalPackageName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "originalName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 18
    return-object v0

    .line 21
    .end local v0    # "originalName":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public static getPackageUid(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 27
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 28
    :catch_0
    move-exception v1

    .line 29
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    const/4 v2, 0x0

    return v2
.end method
