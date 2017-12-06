.class final Landroid/content/res/Resources$FlymeInjector;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/Resources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getFlymeThemeColorValue(Landroid/content/res/Resources;I)I
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 2200
    invoke-virtual {p0}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/ResourcesImpl;->getFlymeThemeColor(I)Landroid/content/res/flymetheme/ColorInfo;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/res/flymetheme/ColorInfo;->mColor:J

    long-to-int v0, v0

    return v0
.end method

.method static initFlymeThemeResource(Landroid/content/res/Resources;)V
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 2190
    invoke-virtual {p0}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->initFlymeThemeResource()V

    .line 2189
    return-void
.end method

.method static isFlymeThemeColor(Landroid/content/res/Resources;I)Z
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "id"    # I

    .prologue
    .line 2205
    invoke-virtual {p0}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/ResourcesImpl;->getFlymeThemeColor(I)Landroid/content/res/flymetheme/ColorInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static setSystemFlymeThemeResource()V
    .locals 1

    .prologue
    .line 2194
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getImpl()Landroid/content/res/ResourcesImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->setSystemFlymeThemeResource()V

    .line 2193
    return-void
.end method
