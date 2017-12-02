.class Lcom/android/internal/telephony/uicc/UiccCard$ClickListener;
.super Ljava/lang/Object;
.source "UiccCard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UiccCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickListener"
.end annotation


# instance fields
.field pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCard$ClickListener;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCard$ClickListener;->pkgName:Ljava/lang/String;

    .line 421
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 426
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard$ClickListener;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->-get1(Lcom/android/internal/telephony/uicc/UiccCard;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 427
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 428
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 429
    .local v0, "market":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "market://details?id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCard$ClickListener;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 430
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 431
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard$ClickListener;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->-get0(Lcom/android/internal/telephony/uicc/UiccCard;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "market":Landroid/content/Intent;
    :cond_0
    :goto_0
    monitor-exit v2

    .line 425
    return-void

    .line 432
    :cond_1
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    .line 433
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCard$ClickListener;->this$0:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string/jumbo v3, "Not now clicked for carrier app dialog."

    invoke-static {v1, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->-wrap0(Lcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 426
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
