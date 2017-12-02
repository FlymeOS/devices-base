.class public Landroid/net/wifi/nan/ConfigRequest;
.super Ljava/lang/Object;
.source "ConfigRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nan/ConfigRequest$1;,
        Landroid/net/wifi/nan/ConfigRequest$Builder;
    }
.end annotation


# static fields
.field public static final CLUSTER_ID_MAX:I = 0xffff

.field public static final CLUSTER_ID_MIN:I

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/nan/ConfigRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mClusterHigh:I

.field public final mClusterLow:I

.field public final mMasterPreference:I

.field public final mSupport5gBand:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Landroid/net/wifi/nan/ConfigRequest$1;

    invoke-direct {v0}, Landroid/net/wifi/nan/ConfigRequest$1;-><init>()V

    sput-object v0, Landroid/net/wifi/nan/ConfigRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    return-void
.end method

.method private constructor <init>(ZIII)V
    .locals 0
    .param p1, "support5gBand"    # Z
    .param p2, "masterPreference"    # I
    .param p3, "clusterLow"    # I
    .param p4, "clusterHigh"    # I

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-boolean p1, p0, Landroid/net/wifi/nan/ConfigRequest;->mSupport5gBand:Z

    .line 79
    iput p2, p0, Landroid/net/wifi/nan/ConfigRequest;->mMasterPreference:I

    .line 80
    iput p3, p0, Landroid/net/wifi/nan/ConfigRequest;->mClusterLow:I

    .line 81
    iput p4, p0, Landroid/net/wifi/nan/ConfigRequest;->mClusterHigh:I

    .line 77
    return-void
.end method

.method synthetic constructor <init>(ZIIILandroid/net/wifi/nan/ConfigRequest;)V
    .locals 0
    .param p1, "support5gBand"    # Z
    .param p2, "masterPreference"    # I
    .param p3, "clusterLow"    # I
    .param p4, "clusterHigh"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/wifi/nan/ConfigRequest;-><init>(ZIII)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    if-ne p0, p1, :cond_0

    .line 123
    return v1

    .line 126
    :cond_0
    instance-of v3, p1, Landroid/net/wifi/nan/ConfigRequest;

    if-nez v3, :cond_1

    .line 127
    return v2

    :cond_1
    move-object v0, p1

    .line 130
    nop

    nop

    .line 132
    .local v0, "lhs":Landroid/net/wifi/nan/ConfigRequest;
    iget-boolean v3, p0, Landroid/net/wifi/nan/ConfigRequest;->mSupport5gBand:Z

    iget-boolean v4, v0, Landroid/net/wifi/nan/ConfigRequest;->mSupport5gBand:Z

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/net/wifi/nan/ConfigRequest;->mMasterPreference:I

    iget v4, v0, Landroid/net/wifi/nan/ConfigRequest;->mMasterPreference:I

    if-ne v3, v4, :cond_3

    .line 133
    iget v3, p0, Landroid/net/wifi/nan/ConfigRequest;->mClusterLow:I

    iget v4, v0, Landroid/net/wifi/nan/ConfigRequest;->mClusterLow:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Landroid/net/wifi/nan/ConfigRequest;->mClusterHigh:I

    iget v4, v0, Landroid/net/wifi/nan/ConfigRequest;->mClusterHigh:I

    if-ne v3, v4, :cond_2

    .line 132
    :goto_0
    return v1

    :cond_2
    move v1, v2

    .line 133
    goto :goto_0

    :cond_3
    move v1, v2

    .line 132
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 140
    iget-boolean v1, p0, Landroid/net/wifi/nan/ConfigRequest;->mSupport5gBand:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 141
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/nan/ConfigRequest;->mMasterPreference:I

    add-int v0, v1, v2

    .line 142
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/nan/ConfigRequest;->mClusterLow:I

    add-int v0, v1, v2

    .line 143
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/net/wifi/nan/ConfigRequest;->mClusterHigh:I

    add-int v0, v1, v2

    .line 145
    return v0

    .line 140
    .end local v0    # "result":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ConfigRequest [mSupport5gBand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/nan/ConfigRequest;->mSupport5gBand:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mMasterPreference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    iget v1, p0, Landroid/net/wifi/nan/ConfigRequest;->mMasterPreference:I

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    const-string/jumbo v1, ", mClusterLow="

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    iget v1, p0, Landroid/net/wifi/nan/ConfigRequest;->mClusterLow:I

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 87
    const-string/jumbo v1, ", mClusterHigh="

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    iget v1, p0, Landroid/net/wifi/nan/ConfigRequest;->mClusterHigh:I

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 88
    const-string/jumbo v1, "]"

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 98
    iget-boolean v0, p0, Landroid/net/wifi/nan/ConfigRequest;->mSupport5gBand:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Landroid/net/wifi/nan/ConfigRequest;->mMasterPreference:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget v0, p0, Landroid/net/wifi/nan/ConfigRequest;->mClusterLow:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget v0, p0, Landroid/net/wifi/nan/ConfigRequest;->mClusterHigh:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
