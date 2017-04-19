.class Lcom/android/internal/app/PlatLogoActivity$4$1$1;
.super Ljava/lang/Object;
.source "PlatLogoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/PlatLogoActivity$4$1;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/internal/app/PlatLogoActivity$4$1;


# direct methods
.method constructor <init>(Lcom/android/internal/app/PlatLogoActivity$4$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/internal/app/PlatLogoActivity$4$1;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$4$1$1;->this$2:Lcom/android/internal/app/PlatLogoActivity$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$4$1$1;->this$2:Lcom/android/internal/app/PlatLogoActivity$4$1;

    iget-object v1, v1, Lcom/android/internal/app/PlatLogoActivity$4$1;->this$1:Lcom/android/internal/app/PlatLogoActivity$4;

    iget-object v1, v1, Lcom/android/internal/app/PlatLogoActivity$4;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    const v3, 0x10808000

    .line 152
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 156
    const-string/jumbo v3, "com.android.internal.category.PLATLOGO"

    .line 152
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/PlatLogoActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$4$1$1;->this$2:Lcom/android/internal/app/PlatLogoActivity$4$1;

    iget-object v1, v1, Lcom/android/internal/app/PlatLogoActivity$4$1;->this$1:Lcom/android/internal/app/PlatLogoActivity$4;

    iget-object v1, v1, Lcom/android/internal/app/PlatLogoActivity$4;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v1}, Lcom/android/internal/app/PlatLogoActivity;->finish()V

    .line 150
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v1, "PlatLogoActivity"

    const-string/jumbo v2, "No more eggs."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
