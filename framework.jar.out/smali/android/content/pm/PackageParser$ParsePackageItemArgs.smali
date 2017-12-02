.class Landroid/content/pm/PackageParser$ParsePackageItemArgs;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParsePackageItemArgs"
.end annotation


# instance fields
.field final bannerRes:I

.field final iconRes:I

.field final labelRes:I

.field final logoRes:I

.field final nameRes:I

.field final outError:[Ljava/lang/String;

.field final owner:Landroid/content/pm/PackageParser$Package;

.field final roundIconRes:I

.field sa:Landroid/content/res/TypedArray;

.field tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;IIIIII)V
    .locals 0
    .param p1, "_owner"    # Landroid/content/pm/PackageParser$Package;
    .param p2, "_outError"    # [Ljava/lang/String;
    .param p3, "_nameRes"    # I
    .param p4, "_labelRes"    # I
    .param p5, "_iconRes"    # I
    .param p6, "_roundIconRes"    # I
    .param p7, "_logoRes"    # I
    .param p8, "_bannerRes"    # I

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p1, p0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->owner:Landroid/content/pm/PackageParser$Package;

    .line 284
    iput-object p2, p0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->outError:[Ljava/lang/String;

    .line 285
    iput p3, p0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->nameRes:I

    .line 286
    iput p4, p0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->labelRes:I

    .line 287
    iput p5, p0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->iconRes:I

    .line 288
    iput p7, p0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->logoRes:I

    .line 289
    iput p8, p0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->bannerRes:I

    .line 290
    iput p6, p0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->roundIconRes:I

    .line 282
    return-void
.end method
