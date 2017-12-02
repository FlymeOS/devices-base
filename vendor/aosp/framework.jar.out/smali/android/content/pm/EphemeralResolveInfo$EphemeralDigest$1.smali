.class final Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest$1;
.super Ljava/lang/Object;
.source "EphemeralResolveInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 229
    new-instance v0, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;

    invoke-direct {v0, p1}, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 233
    new-array v0, p1, [Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest$1;->newArray(I)[Landroid/content/pm/EphemeralResolveInfo$EphemeralDigest;

    move-result-object v0

    return-object v0
.end method
