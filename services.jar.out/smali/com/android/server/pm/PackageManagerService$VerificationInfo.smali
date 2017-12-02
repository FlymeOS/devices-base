.class Lcom/android/server/pm/PackageManagerService$VerificationInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VerificationInfo"
.end annotation


# static fields
.field public static final NO_UID:I = -0x1


# instance fields
.field final installerUid:I

.field final originatingUid:I

.field final originatingUri:Landroid/net/Uri;

.field final referrer:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;Landroid/net/Uri;II)V
    .locals 0
    .param p1, "originatingUri"    # Landroid/net/Uri;
    .param p2, "referrer"    # Landroid/net/Uri;
    .param p3, "originatingUid"    # I
    .param p4, "installerUid"    # I

    .prologue
    .line 12830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12831
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    .line 12832
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    .line 12833
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    .line 12834
    iput p4, p0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    .line 12830
    return-void
.end method
