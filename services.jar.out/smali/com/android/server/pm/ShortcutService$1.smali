.class final Lcom/android/server/pm/ShortcutService$1;
.super Ljava/lang/Object;
.source "ShortcutService.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Landroid/content/pm/ResolveInfo;)Z
    .locals 1
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 244
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "ri"    # Ljava/lang/Object;

    .prologue
    .line 243
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1    # "ri":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService$1;->test(Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    return v0
.end method
