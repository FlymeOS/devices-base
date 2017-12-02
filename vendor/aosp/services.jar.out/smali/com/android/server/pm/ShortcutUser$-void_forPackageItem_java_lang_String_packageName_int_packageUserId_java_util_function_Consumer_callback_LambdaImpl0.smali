.class final synthetic Lcom/android/server/pm/ShortcutUser$-void_forPackageItem_java_lang_String_packageName_int_packageUserId_java_util_function_Consumer_callback_LambdaImpl0;
.super Ljava/lang/Object;
.source "ShortcutUser.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_forPackageItem_java_lang_String_packageName_int_packageUserId_java_util_function_Consumer_callback_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$callback:Ljava/util/function/Consumer;

.field private synthetic val$packageName:Ljava/lang/String;

.field private synthetic val$packageUserId:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/util/function/Consumer;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/ShortcutUser$-void_forPackageItem_java_lang_String_packageName_int_packageUserId_java_util_function_Consumer_callback_LambdaImpl0;->val$packageUserId:I

    iput-object p2, p0, Lcom/android/server/pm/ShortcutUser$-void_forPackageItem_java_lang_String_packageName_int_packageUserId_java_util_function_Consumer_callback_LambdaImpl0;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/ShortcutUser$-void_forPackageItem_java_lang_String_packageName_int_packageUserId_java_util_function_Consumer_callback_LambdaImpl0;->val$callback:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget v0, p0, Lcom/android/server/pm/ShortcutUser$-void_forPackageItem_java_lang_String_packageName_int_packageUserId_java_util_function_Consumer_callback_LambdaImpl0;->val$packageUserId:I

    iget-object v1, p0, Lcom/android/server/pm/ShortcutUser$-void_forPackageItem_java_lang_String_packageName_int_packageUserId_java_util_function_Consumer_callback_LambdaImpl0;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutUser$-void_forPackageItem_java_lang_String_packageName_int_packageUserId_java_util_function_Consumer_callback_LambdaImpl0;->val$callback:Ljava/util/function/Consumer;

    check-cast p1, Lcom/android/server/pm/ShortcutPackageItem;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, v1, v2, p1}, Lcom/android/server/pm/ShortcutUser;->-com_android_server_pm_ShortcutUser_lambda$1(ILjava/lang/String;Ljava/util/function/Consumer;Lcom/android/server/pm/ShortcutPackageItem;)V

    return-void
.end method
