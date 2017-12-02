.class Landroid/view/animation/Animation$NoImagePreloadHolder;
.super Ljava/lang/Object;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoImagePreloadHolder"
.end annotation


# static fields
.field public static final USE_CLOSEGUARD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 100
    const-string/jumbo v0, "log.closeguard.Animation"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 99
    sput-boolean v0, Landroid/view/animation/Animation$NoImagePreloadHolder;->USE_CLOSEGUARD:Z

    .line 98
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
