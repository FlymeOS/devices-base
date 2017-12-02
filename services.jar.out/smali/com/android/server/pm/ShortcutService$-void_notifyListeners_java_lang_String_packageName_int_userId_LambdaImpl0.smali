.class final synthetic Lcom/android/server/pm/ShortcutService$-void_notifyListeners_java_lang_String_packageName_int_userId_LambdaImpl0;
.super Ljava/lang/Object;
.source "ShortcutService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_notifyListeners_java_lang_String_packageName_int_userId_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$packageName:Ljava/lang/String;

.field private synthetic val$this:Lcom/android/server/pm/ShortcutService;

.field private synthetic val$userId:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;ILjava/lang/String;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$-void_notifyListeners_java_lang_String_packageName_int_userId_LambdaImpl0;->val$this:Lcom/android/server/pm/ShortcutService;

    iput p2, p0, Lcom/android/server/pm/ShortcutService$-void_notifyListeners_java_lang_String_packageName_int_userId_LambdaImpl0;->val$userId:I

    iput-object p3, p0, Lcom/android/server/pm/ShortcutService$-void_notifyListeners_java_lang_String_packageName_int_userId_LambdaImpl0;->val$packageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$-void_notifyListeners_java_lang_String_packageName_int_userId_LambdaImpl0;->val$this:Lcom/android/server/pm/ShortcutService;

    iget v1, p0, Lcom/android/server/pm/ShortcutService$-void_notifyListeners_java_lang_String_packageName_int_userId_LambdaImpl0;->val$userId:I

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$-void_notifyListeners_java_lang_String_packageName_int_userId_LambdaImpl0;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->-com_android_server_pm_ShortcutService_lambda$6(ILjava/lang/String;)V

    return-void
.end method
