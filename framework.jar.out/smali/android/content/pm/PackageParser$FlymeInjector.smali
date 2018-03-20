.class final Landroid/content/pm/PackageParser$FlymeInjector;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static validateName(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5774
    const-string/jumbo v0, "flyme"

    .line 5775
    .local v0, "FLYME_PACKAGE":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 5776
    :cond_0
    const/4 v1, 0x0

    return v1
.end method
