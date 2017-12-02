.class public Landroid/net/ip/IpManager$ProvisioningConfiguration;
.super Ljava/lang/Object;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProvisioningConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT_MS:I = 0x8ca0


# instance fields
.field mApfCapabilities:Landroid/net/apf/ApfCapabilities;

.field mEnableIPv4:Z

.field mEnableIPv6:Z

.field mProvisioningTimeoutMs:I

.field mRequestedPreDhcpActionMs:I

.field mStaticIpConfig:Landroid/net/StaticIpConfiguration;

.field mUsingIpReachabilityMonitor:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput-boolean v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv4:Z

    .line 328
    iput-boolean v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv6:Z

    .line 329
    iput-boolean v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    .line 333
    const v0, 0x8ca0

    iput v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    .line 335
    return-void
.end method

.method public constructor <init>(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V
    .locals 1
    .param p1, "other"    # Landroid/net/ip/IpManager$ProvisioningConfiguration;

    .prologue
    const/4 v0, 0x1

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput-boolean v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv4:Z

    .line 328
    iput-boolean v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv6:Z

    .line 329
    iput-boolean v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    .line 333
    const v0, 0x8ca0

    iput v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    .line 338
    iget-boolean v0, p1, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv4:Z

    iput-boolean v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv4:Z

    .line 339
    iget-boolean v0, p1, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv6:Z

    iput-boolean v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv6:Z

    .line 340
    iget-boolean v0, p1, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    iput-boolean v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    .line 341
    iget v0, p1, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    iput v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    .line 342
    iget-object v0, p1, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    iput-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 343
    iget-object v0, p1, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iput-object v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 344
    iget v0, p1, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    iput v0, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    .line 337
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 349
    new-instance v0, Ljava/util/StringJoiner;

    const-string/jumbo v1, ", "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/ip/IpManager$ProvisioningConfiguration;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEnableIPv4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv4:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 349
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mEnableIPv6: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mEnableIPv6:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 349
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mUsingIpReachabilityMonitor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 349
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRequestedPreDhcpActionMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 349
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mStaticIpConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 349
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mApfCapabilities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 349
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mProvisioningTimeoutMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/ip/IpManager$ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 349
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
