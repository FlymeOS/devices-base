.class final synthetic Lcom/android/server/pm/ShortcutService$-void_checkPackageChanges_int_ownerUserId_LambdaImpl0;
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
    name = "-void_checkPackageChanges_int_ownerUserId_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$gonePackages:Ljava/util/ArrayList;

.field private synthetic val$this:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$-void_checkPackageChanges_int_ownerUserId_LambdaImpl0;->val$this:Lcom/android/server/pm/ShortcutService;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutService$-void_checkPackageChanges_int_ownerUserId_LambdaImpl0;->val$gonePackages:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$-void_checkPackageChanges_int_ownerUserId_LambdaImpl0;->val$this:Lcom/android/server/pm/ShortcutService;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$-void_checkPackageChanges_int_ownerUserId_LambdaImpl0;->val$gonePackages:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/pm/ShortcutPackageItem;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/ShortcutService;->-com_android_server_pm_ShortcutService_lambda$14(Ljava/util/ArrayList;Lcom/android/server/pm/ShortcutPackageItem;)V

    return-void
.end method
