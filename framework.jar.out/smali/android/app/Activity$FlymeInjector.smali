.class final Landroid/app/Activity$FlymeInjector;
.super Ljava/lang/Object;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Activity$FlymeInjector$FlymeDecorView;,
        Landroid/app/Activity$FlymeInjector$TintBarInject;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static onConfigurationChanged(Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 7789
    iget-object v0, p0, Landroid/app/Activity;->mFlymeTintBarInject:Landroid/app/Activity$FlymeInjector$TintBarInject;

    invoke-virtual {v0, p1}, Landroid/app/Activity$FlymeInjector$TintBarInject;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7787
    return-void
.end method

.method static onCreate(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 7783
    iget-object v0, p0, Landroid/app/Activity;->mFlymeTintBarInject:Landroid/app/Activity$FlymeInjector$TintBarInject;

    invoke-virtual {v0}, Landroid/app/Activity$FlymeInjector$TintBarInject;->onCreate()V

    .line 7781
    return-void
.end method

.method static onStart(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 7799
    iget-object v0, p0, Landroid/app/Activity;->mFlymeTintBarInject:Landroid/app/Activity$FlymeInjector$TintBarInject;

    invoke-virtual {v0}, Landroid/app/Activity$FlymeInjector$TintBarInject;->onStart()V

    .line 7797
    return-void
.end method

.method static onWindowAttributesChanged(Landroid/app/Activity;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 7794
    iget-object v0, p0, Landroid/app/Activity;->mFlymeTintBarInject:Landroid/app/Activity$FlymeInjector$TintBarInject;

    invoke-virtual {v0, p1}, Landroid/app/Activity$FlymeInjector$TintBarInject;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static setTranslucentStatus(Landroid/app/Activity;Z)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "on"    # Z

    .prologue
    .line 7808
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 7809
    .local v1, "win":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 7810
    .local v2, "winParams":Landroid/view/WindowManager$LayoutParams;
    const/high16 v0, 0x4000000

    .line 7811
    .local v0, "bits":I
    if-eqz p1, :cond_0

    .line 7812
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x4000000

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 7816
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 7807
    return-void

    .line 7814
    :cond_0
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x4000001

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method
