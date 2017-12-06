.class final Lcom/android/server/am/ActivityStackSupervisor$FlymeInjector;
.super Ljava/lang/Object;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# static fields
.field private static final AUTORITY_OF_INTERCEPT_INTENT:Ljava/lang/String; = "details"

.field private static final GOOGLE_PLAY_PACKAGENAME:Ljava/lang/String; = "com.android.vending"

.field private static final HOTAPPS_ACTION:Ljava/lang/String; = "google.gms.install"

.field private static final HOTAPPS_PACKAGENAME:Ljava/lang/String; = "com.xrom.intl.appcenter"

.field private static final SCHEMA_OF_INTERCEPT_INTENT:Ljava/lang/String; = "market"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static interceptAcquireGooglePlayServiceIntent(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .locals 8
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "rInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v7, 0x0

    .line 4622
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v5

    if-nez v5, :cond_0

    .line 4623
    return-void

    .line 4626
    :cond_0
    if-eqz p1, :cond_1

    iget v4, p1, Landroid/content/pm/ResolveInfo;->targetUserId:I

    .line 4628
    .local v4, "userId":I
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const-string/jumbo v6, "com.android.vending"

    invoke-interface {v5, v6, v4}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_2

    .line 4630
    return-void

    .line 4626
    .end local v4    # "userId":I
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "userId":I
    goto :goto_0

    .line 4632
    :catch_0
    move-exception v2

    .line 4635
    :cond_2
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 4636
    .local v1, "data":Landroid/net/Uri;
    if-nez v1, :cond_3

    .line 4637
    return-void

    .line 4640
    :cond_3
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4641
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 4642
    .local v3, "packageName":Ljava/lang/String;
    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "com.android.vending"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4643
    const-string/jumbo v5, "market"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 4642
    if-eqz v5, :cond_4

    .line 4644
    const-string/jumbo v5, "details"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 4642
    if-eqz v5, :cond_4

    .line 4645
    const-string/jumbo v5, "google.gms.install"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4646
    invoke-virtual {p0, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4647
    const-string/jumbo v5, "com.xrom.intl.appcenter"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4620
    :cond_4
    return-void
.end method
