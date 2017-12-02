.class final Landroid/security/keymaster/KeymasterCertificateChain$1;
.super Ljava/lang/Object;
.source "KeymasterCertificateChain.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keymaster/KeymasterCertificateChain;
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
        "Landroid/security/keymaster/KeymasterCertificateChain;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/security/keymaster/KeymasterCertificateChain;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 38
    new-instance v0, Landroid/security/keymaster/KeymasterCertificateChain;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>(Landroid/os/Parcel;Landroid/security/keymaster/KeymasterCertificateChain;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Landroid/security/keymaster/KeymasterCertificateChain$1;->createFromParcel(Landroid/os/Parcel;)Landroid/security/keymaster/KeymasterCertificateChain;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/security/keymaster/KeymasterCertificateChain;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 41
    new-array v0, p1, [Landroid/security/keymaster/KeymasterCertificateChain;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Landroid/security/keymaster/KeymasterCertificateChain$1;->newArray(I)[Landroid/security/keymaster/KeymasterCertificateChain;

    move-result-object v0

    return-object v0
.end method
