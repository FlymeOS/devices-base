.class public Landroid/app/FragmentManagerNonConfig;
.super Ljava/lang/Object;
.source "FragmentManagerNonConfig.java"


# instance fields
.field private final mChildNonConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/FragmentManagerNonConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/Fragment;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/app/FragmentManagerNonConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    .local p2, "childNonConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/app/FragmentManagerNonConfig;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/app/FragmentManagerNonConfig;->mFragments:Ljava/util/List;

    .line 38
    iput-object p2, p0, Landroid/app/FragmentManagerNonConfig;->mChildNonConfigs:Ljava/util/List;

    .line 36
    return-void
.end method


# virtual methods
.method getChildNonConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/FragmentManagerNonConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Landroid/app/FragmentManagerNonConfig;->mChildNonConfigs:Ljava/util/List;

    return-object v0
.end method

.method getFragments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Landroid/app/FragmentManagerNonConfig;->mFragments:Ljava/util/List;

    return-object v0
.end method
