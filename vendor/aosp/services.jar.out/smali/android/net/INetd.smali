.class public interface abstract Landroid/net/INetd;
.super Ljava/lang/Object;
.source "INetd.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetd$Stub;
    }
.end annotation


# static fields
.field public static final CONF:I = 0x1

.field public static final IPV4:I = 0x4

.field public static final IPV6:I = 0x6

.field public static final NEIGH:I = 0x2

.field public static final RESOLVER_PARAMS_COUNT:I = 0x4

.field public static final RESOLVER_PARAMS_MAX_SAMPLES:I = 0x3

.field public static final RESOLVER_PARAMS_MIN_SAMPLES:I = 0x2

.field public static final RESOLVER_PARAMS_SAMPLE_VALIDITY:I = 0x0

.field public static final RESOLVER_PARAMS_SUCCESS_THRESHOLD:I = 0x1

.field public static final RESOLVER_STATS_COUNT:I = 0x7

.field public static final RESOLVER_STATS_ERRORS:I = 0x1

.field public static final RESOLVER_STATS_INTERNAL_ERRORS:I = 0x3

.field public static final RESOLVER_STATS_LAST_SAMPLE_TIME:I = 0x5

.field public static final RESOLVER_STATS_RTT_AVG:I = 0x4

.field public static final RESOLVER_STATS_SUCCESSES:I = 0x0

.field public static final RESOLVER_STATS_TIMEOUTS:I = 0x2

.field public static final RESOLVER_STATS_USABLE:I = 0x6


# virtual methods
.method public abstract bandwidthEnableDataSaver(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract firewallReplaceUidChain(Ljava/lang/String;Z[I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getMetricsReportingLevel()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getResolverInfo(I[Ljava/lang/String;[Ljava/lang/String;[I[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isAlive()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract networkRejectNonSecureVpn(Z[Landroid/net/UidRange;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setMetricsReportingLevel(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setResolverConfiguration(I[Ljava/lang/String;[Ljava/lang/String;[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract socketDestroy([Landroid/net/UidRange;[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract tetherApplyDnsInterfaces()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
