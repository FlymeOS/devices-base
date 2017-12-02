.class final synthetic Lcom/android/server/pm/ShortcutPackage$-void__init__com_android_server_pm_ShortcutUser_shortcutUser_int_packageUserId_java_lang_String_packageName_com_android_server_pm_ShortcutPackageInfo_spi_LambdaImpl0;
.super Ljava/lang/Object;
.source "ShortcutPackage.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutPackage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void__init__com_android_server_pm_ShortcutUser_shortcutUser_int_packageUserId_java_lang_String_packageName_com_android_server_pm_ShortcutPackageInfo_spi_LambdaImpl0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/ShortcutInfo;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {p1, p2}, Lcom/android/server/pm/ShortcutPackage;->-com_android_server_pm_ShortcutPackage_lambda$1(Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;)I

    move-result v0

    return v0
.end method
