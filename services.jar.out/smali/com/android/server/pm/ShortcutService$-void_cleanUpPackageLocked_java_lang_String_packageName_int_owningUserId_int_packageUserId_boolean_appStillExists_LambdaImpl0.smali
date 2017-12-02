.class final synthetic Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageLocked_java_lang_String_packageName_int_owningUserId_int_packageUserId_boolean_appStillExists_LambdaImpl0;
.super Ljava/lang/Object;
.source "ShortcutService.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_cleanUpPackageLocked_java_lang_String_packageName_int_owningUserId_int_packageUserId_boolean_appStillExists_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$packageName:Ljava/lang/String;

.field private synthetic val$packageUserId:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageLocked_java_lang_String_packageName_int_owningUserId_int_packageUserId_boolean_appStillExists_LambdaImpl0;->val$packageName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageLocked_java_lang_String_packageName_int_owningUserId_int_packageUserId_boolean_appStillExists_LambdaImpl0;->val$packageUserId:I

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageLocked_java_lang_String_packageName_int_owningUserId_int_packageUserId_boolean_appStillExists_LambdaImpl0;->val$packageName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/pm/ShortcutService$-void_cleanUpPackageLocked_java_lang_String_packageName_int_owningUserId_int_packageUserId_boolean_appStillExists_LambdaImpl0;->val$packageUserId:I

    check-cast p1, Lcom/android/server/pm/ShortcutLauncher;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, v1, p1}, Lcom/android/server/pm/ShortcutService;->-com_android_server_pm_ShortcutService_lambda$11(Ljava/lang/String;ILcom/android/server/pm/ShortcutLauncher;)V

    return-void
.end method
