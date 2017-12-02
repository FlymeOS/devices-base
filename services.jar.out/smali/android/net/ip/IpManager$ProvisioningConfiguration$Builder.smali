.class public Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
.super Ljava/lang/Object;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager$ProvisioningConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    new-instance v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;

    invoke-direct {v0}, Landroid/net/ip/IpManager$ProvisioningConfiguration;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    .line 279
    return-void
.end method


# virtual methods
.method public build()Landroid/net/ip/IpManager$ProvisioningConfiguration;
    .locals 2

    .prologue
    .line 323
    new-instance v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iget-object v1, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    invoke-direct {v0, v1}, Landroid/net/ip/IpManager$ProvisioningConfiguration;-><init>(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V

    return-object v0
.end method

.method public withApfCapabilities(Landroid/net/apf/ApfCapabilities;)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .locals 1
    .param p1, "apfCapabilities"    # Landroid/net/apf/ApfCapabilities;

    .prologue
    .line 313
    iget-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 314
    return-object p0
.end method

.method public withPreDhcpAction()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    const v1, 0x8ca0

    iput v1, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    .line 299
    return-object p0
.end method

.method public withPreDhcpAction(I)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .locals 1
    .param p1, "dhcpActionTimeoutMs"    # I

    .prologue
    .line 303
    iget-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iput p1, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    .line 304
    return-object p0
.end method

.method public withProvisioningTimeoutMs(I)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .locals 1
    .param p1, "timeoutMs"    # I

    .prologue
    .line 318
    iget-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iput p1, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    .line 319
    return-object p0
.end method

.method public withStaticConfiguration(Landroid/net/StaticIpConfiguration;)Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .locals 1
    .param p1, "staticConfig"    # Landroid/net/StaticIpConfiguration;

    .prologue
    .line 308
    iget-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 309
    return-object p0
.end method

.method public withoutIPv4()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv4:Z

    .line 284
    return-object p0
.end method

.method public withoutIPv6()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv6:Z

    .line 289
    return-object p0
.end method

.method public withoutIpReachabilityMonitor()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;->mConfig:Landroid/net/ip/IpManager$ProvisioningConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    .line 294
    return-object p0
.end method
