.class public interface abstract Landroid/net/metrics/INetdEventListener;
.super Ljava/lang/Object;
.source "INetdEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/metrics/INetdEventListener$Stub;
    }
.end annotation


# static fields
.field public static final DNS_REPORTED_IP_ADDRESSES_LIMIT:I = 0xa

.field public static final EVENT_GETADDRINFO:I = 0x1

.field public static final EVENT_GETHOSTBYNAME:I = 0x2

.field public static final REPORTING_LEVEL_FULL:I = 0x2

.field public static final REPORTING_LEVEL_METRICS:I = 0x1

.field public static final REPORTING_LEVEL_NONE:I


# virtual methods
.method public abstract onConnectEvent(IIILjava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
