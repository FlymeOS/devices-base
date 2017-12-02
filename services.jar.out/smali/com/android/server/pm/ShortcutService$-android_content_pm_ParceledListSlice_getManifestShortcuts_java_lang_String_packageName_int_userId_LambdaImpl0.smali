.class final synthetic Lcom/android/server/pm/ShortcutService$-android_content_pm_ParceledListSlice_getManifestShortcuts_java_lang_String_packageName_int_userId_LambdaImpl0;
.super Ljava/lang/Object;
.source "ShortcutService.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-android_content_pm_ParceledListSlice_getManifestShortcuts_java_lang_String_packageName_int_userId_LambdaImpl0"
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Landroid/content/pm/ShortcutInfo;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/server/pm/ShortcutService;->-com_android_server_pm_ShortcutService-mthref-2(Landroid/content/pm/ShortcutInfo;)Z

    move-result v0

    return v0
.end method
