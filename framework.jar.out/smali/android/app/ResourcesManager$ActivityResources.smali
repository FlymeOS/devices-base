.class Landroid/app/ResourcesManager$ActivityResources;
.super Ljava/lang/Object;
.source "ResourcesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityResources"
.end annotation


# instance fields
.field public final activityResources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field public final overrideConfig:Landroid/content/res/Configuration;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager$ActivityResources;->overrideConfig:Landroid/content/res/Configuration;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ResourcesManager$ActivityResources;->activityResources:Ljava/util/ArrayList;

    .line 94
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ResourcesManager$ActivityResources;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/ResourcesManager$ActivityResources;-><init>()V

    return-void
.end method
