.class public final Landroid/content/pm/EphemeralResolveInfo;
.super Ljava/lang/Object;
.source "EphemeralResolveInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/EphemeralResolveInfo$1;,
        Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;,
        Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/EphemeralResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHA_ALGORITHM:Ljava/lang/String; = "SHA-256"


# instance fields
.field private final mDigest:Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;

.field private final mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Landroid/content/pm/EphemeralResolveInfo$1;

    invoke-direct {v0}, Landroid/content/pm/EphemeralResolveInfo$1;-><init>()V

    .line 95
    sput-object v0, Landroid/content/pm/EphemeralResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    const/4 v1, -0x1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mFilters:Ljava/util/List;

    .line 49
    if-eqz p1, :cond_0

    .line 50
    if-nez p2, :cond_1

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 51
    :cond_1
    if-eqz p3, :cond_0

    .line 52
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;

    invoke-direct {v0, p1, v1, v1}, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;-><init>(Landroid/net/Uri;II)V

    iput-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigest:Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;

    .line 57
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mFilters:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    iput-object p2, p0, Landroid/content/pm/EphemeralResolveInfo;->mPackageName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mFilters:Ljava/util/List;

    .line 62
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;

    iput-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigest:Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mPackageName:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mFilters:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 61
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public getDigestBytes()[B
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigest:Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;

    invoke-virtual {v0}, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->getDigestBytes()[[B

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getDigestPrefix()I
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigest:Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;

    invoke-virtual {v0}, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;->getDigestPrefix()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mFilters:Ljava/util/List;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 90
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mDigest:Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 91
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo;->mFilters:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 89
    return-void
.end method
