.class public Landroid/net/NetworkRequest$Builder;
.super Ljava/lang/Object;
.source "NetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mNetworkCapabilities:Landroid/net/NetworkCapabilities;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 137
    return-void
.end method


# virtual methods
.method public addCapability(I)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 165
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 166
    return-object p0
.end method

.method public addTransportType(I)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .param p1, "transportType"    # I

    .prologue
    .line 203
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 204
    return-object p0
.end method

.method public build()Landroid/net/NetworkRequest;
    .locals 5

    .prologue
    .line 147
    new-instance v0, Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 148
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->maybeMarkCapabilitiesRestricted()V

    .line 149
    new-instance v1, Landroid/net/NetworkRequest;

    .line 150
    sget-object v2, Landroid/net/NetworkRequest$Type;->NONE:Landroid/net/NetworkRequest$Type;

    .line 149
    const/4 v3, -0x1

    .line 150
    const/4 v4, 0x0

    .line 149
    invoke-direct {v1, v0, v3, v4, v2}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    return-object v1
.end method

.method public clearCapabilities()Landroid/net/NetworkRequest$Builder;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->clearAll()V

    .line 189
    return-object p0
.end method

.method public removeCapability(I)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 176
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 177
    return-object p0
.end method

.method public removeTransportType(I)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .param p1, "transportType"    # I

    .prologue
    .line 214
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->removeTransportType(I)Landroid/net/NetworkCapabilities;

    .line 215
    return-object p0
.end method

.method public setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .param p1, "downKbps"    # I

    .prologue
    .line 229
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)V

    .line 230
    return-object p0
.end method

.method public setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .param p1, "upKbps"    # I

    .prologue
    .line 222
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)V

    .line 223
    return-object p0
.end method

.method public setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;
    .locals 2
    .param p1, "networkSpecifier"    # Ljava/lang/String;

    .prologue
    .line 248
    const-string/jumbo v0, "*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid network specifier - must not be \'*\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_0
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    .line 253
    return-object p0
.end method

.method public setSignalStrength(I)Landroid/net/NetworkRequest$Builder;
    .locals 1
    .param p1, "signalStrength"    # I

    .prologue
    .line 270
    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setSignalStrength(I)V

    .line 271
    return-object p0
.end method
