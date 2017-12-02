.class public Landroid/net/wifi/PasspointManagementObjectDefinition;
.super Ljava/lang/Object;
.source "PasspointManagementObjectDefinition.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/PasspointManagementObjectDefinition$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/PasspointManagementObjectDefinition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBaseUri:Ljava/lang/String;

.field private final mMoTree:Ljava/lang/String;

.field private final mUrn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Landroid/net/wifi/PasspointManagementObjectDefinition$1;

    invoke-direct {v0}, Landroid/net/wifi/PasspointManagementObjectDefinition$1;-><init>()V

    .line 66
    sput-object v0, Landroid/net/wifi/PasspointManagementObjectDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "baseUri"    # Ljava/lang/String;
    .param p2, "urn"    # Ljava/lang/String;
    .param p3, "moTree"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroid/net/wifi/PasspointManagementObjectDefinition;->mBaseUri:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Landroid/net/wifi/PasspointManagementObjectDefinition;->mUrn:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Landroid/net/wifi/PasspointManagementObjectDefinition;->mMoTree:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getBaseUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Landroid/net/wifi/PasspointManagementObjectDefinition;->mBaseUri:Ljava/lang/String;

    return-object v0
.end method

.method public getMoTree()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Landroid/net/wifi/PasspointManagementObjectDefinition;->mMoTree:Ljava/lang/String;

    return-object v0
.end method

.method public getUrn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Landroid/net/wifi/PasspointManagementObjectDefinition;->mUrn:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 58
    iget-object v0, p0, Landroid/net/wifi/PasspointManagementObjectDefinition;->mBaseUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Landroid/net/wifi/PasspointManagementObjectDefinition;->mUrn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Landroid/net/wifi/PasspointManagementObjectDefinition;->mMoTree:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return-void
.end method
