.class public Lcom/android/server/updates/ApnDbInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "ApnDbInstallReceiver.java"


# static fields
.field private static final UPDATE_APN_DB:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    sget-object v0, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 29
    const-string/jumbo v1, "update_db"

    .line 28
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/updates/ApnDbInstallReceiver;->UPDATE_APN_DB:Landroid/net/Uri;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 32
    const-string/jumbo v0, "/data/misc/"

    const-string/jumbo v1, "apns-conf.xml"

    const-string/jumbo v2, "metadata/"

    const-string/jumbo v3, "version"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method


# virtual methods
.method protected postInstall(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 38
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/server/updates/ApnDbInstallReceiver;->UPDATE_APN_DB:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 36
    return-void
.end method
