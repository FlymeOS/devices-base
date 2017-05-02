.class public Lcom/android/server/hips/security/SecurityPayDispalyActivity;
.super Landroid/app/Activity;
.source "SecurityPayDispalyActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getResources()Landroid/content/res/Resources;
    .locals 3

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 44
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 45
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 46
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 47
    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/hips/security/SecurityPayDispalyActivity;->requestWindowFeature(I)Z

    .line 24
    sget v2, Lcom/flyme/internal/R$layout;->security_pay_display_layout:I

    invoke-virtual {p0, v2}, Lcom/android/server/hips/security/SecurityPayDispalyActivity;->setContentView(I)V

    .line 25
    sget v2, Lcom/flyme/internal/R$id;->security_pay_button:I

    invoke-virtual {p0, v2}, Lcom/android/server/hips/security/SecurityPayDispalyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 26
    .local v0, "button":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 27
    new-instance v2, Lcom/android/server/hips/security/SecurityPayDispalyActivity$1;

    invoke-direct {v2, p0}, Lcom/android/server/hips/security/SecurityPayDispalyActivity$1;-><init>(Lcom/android/server/hips/security/SecurityPayDispalyActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 37
    .local v1, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "click_paysafe_notice"

    const-string/jumbo v3, "1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string/jumbo v2, "click_paysafe_notice"

    invoke-static {v2, v1}, Lcom/android/server/hips/utils/HipsUtils;->saveUsageStatsData(Ljava/lang/String;Ljava/util/Map;)V

    .line 21
    return-void
.end method
