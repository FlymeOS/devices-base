.class final Landroid/app/ActivityThread$FlymeInjector;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityThread$FlymeInjector$ScrollActivityData;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static handleFlymePauseActivity(Landroid/app/ActivityThread;)V
    .locals 5
    .param p0, "at"    # Landroid/app/ActivityThread;

    .prologue
    .line 6274
    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v0

    const-string/jumbo v1, "AppEvent"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "pause"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/alphame/AlphaMe;->collect(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6273
    return-void
.end method

.method static handleFlymeResumeActivity(Landroid/app/ActivityThread;)V
    .locals 5
    .param p0, "at"    # Landroid/app/ActivityThread;

    .prologue
    .line 6270
    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v0

    const-string/jumbo v1, "AppEvent"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "resume"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/alphame/AlphaMe;->collect(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6269
    return-void
.end method

.method static setFlymeThemeResource(Landroid/app/LoadedApk;Landroid/content/res/Resources;)V
    .locals 1
    .param p0, "pkgInfo"    # Landroid/app/LoadedApk;
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 6264
    if-eqz p1, :cond_0

    .line 6265
    invoke-virtual {p0}, Landroid/app/LoadedApk;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->setFlymeThemeResource(Ljava/lang/String;)V

    .line 6263
    :cond_0
    return-void
.end method
