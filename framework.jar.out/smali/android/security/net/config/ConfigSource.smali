.class public interface abstract Landroid/security/net/config/ConfigSource;
.super Ljava/lang/Object;
.source "ConfigSource.java"


# virtual methods
.method public abstract getDefaultConfig()Landroid/security/net/config/NetworkSecurityConfig;
.end method

.method public abstract getPerDomainConfigs()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/security/net/config/Domain;",
            "Landroid/security/net/config/NetworkSecurityConfig;",
            ">;>;"
        }
    .end annotation
.end method
