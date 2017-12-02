.class public final Landroid/net/util/NetworkConstants;
.super Ljava/lang/Object;
.source "NetworkConstants.java"


# static fields
.field public static final ARP_HWTYPE_ETHER:I = 0x1

.field public static final ARP_HWTYPE_RESERVED_HI:I = 0xffff

.field public static final ARP_HWTYPE_RESERVED_LO:I = 0x0

.field public static final ARP_PAYLOAD_LEN:I = 0x1c

.field public static final ARP_REPLY:I = 0x2

.field public static final ARP_REQUEST:I = 0x1

.field public static final DHCP4_CLIENT_PORT:I = 0x44

.field public static final DHCP4_SERVER_PORT:I = 0x43

.field public static final ETHER_ADDR_BROADCAST:[B

.field public static final ETHER_ADDR_LEN:I = 0x6

.field public static final ETHER_DST_ADDR_OFFSET:I = 0x0

.field public static final ETHER_HEADER_LEN:I = 0xe

.field public static final ETHER_SRC_ADDR_OFFSET:I = 0x6

.field public static final ETHER_TYPE_ARP:I = 0x806

.field public static final ETHER_TYPE_IPV4:I = 0x800

.field public static final ETHER_TYPE_IPV6:I = 0x86dd

.field public static final ETHER_TYPE_LENGTH:I = 0x2

.field public static final ETHER_TYPE_OFFSET:I = 0xc

.field private static final FF:B

.field public static final ICMPV6_HEADER_MIN_LEN:I = 0x4

.field public static final ICMPV6_ND_OPTION_LENGTH_SCALING_FACTOR:I = 0x8

.field public static final ICMPV6_ND_OPTION_MIN_LENGTH:I = 0x8

.field public static final ICMPV6_ND_OPTION_MTU:I = 0x5

.field public static final ICMPV6_ND_OPTION_SLLA:I = 0x1

.field public static final ICMPV6_ND_OPTION_TLLA:I = 0x2

.field public static final ICMPV6_NEIGHBOR_ADVERTISEMENT:I = 0x88

.field public static final ICMPV6_NEIGHBOR_SOLICITATION:I = 0x87

.field public static final ICMPV6_ROUTER_ADVERTISEMENT:I = 0x86

.field public static final ICMPV6_ROUTER_SOLICITATION:I = 0x85

.field public static final IPV4_ADDR_LEN:I = 0x4

.field public static final IPV4_DST_ADDR_OFFSET:I = 0x10

.field public static final IPV4_FLAGS_OFFSET:I = 0x6

.field public static final IPV4_FRAGMENT_MASK:I = 0x1fff

.field public static final IPV4_HEADER_MIN_LEN:I = 0x14

.field public static final IPV4_IHL_MASK:I = 0xf

.field public static final IPV4_PROTOCOL_OFFSET:I = 0x9

.field public static final IPV4_SRC_ADDR_OFFSET:I = 0xc

.field public static final IPV6_ADDR_LEN:I = 0x10

.field public static final IPV6_DST_ADDR_OFFSET:I = 0x18

.field public static final IPV6_HEADER_LEN:I = 0x28

.field public static final IPV6_PROTOCOL_OFFSET:I = 0x6

.field public static final IPV6_SRC_ADDR_OFFSET:I = 0x8

.field public static final UDP_HEADER_LEN:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/16 v0, 0xff

    invoke-static {v0}, Landroid/net/util/NetworkConstants;->asByte(I)B

    move-result v0

    sput-byte v0, Landroid/net/util/NetworkConstants;->FF:B

    .line 56
    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 57
    sget-byte v1, Landroid/net/util/NetworkConstants;->FF:B

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    sget-byte v1, Landroid/net/util/NetworkConstants;->FF:B

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    sget-byte v1, Landroid/net/util/NetworkConstants;->FF:B

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    sget-byte v1, Landroid/net/util/NetworkConstants;->FF:B

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    sget-byte v1, Landroid/net/util/NetworkConstants;->FF:B

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    sget-byte v1, Landroid/net/util/NetworkConstants;->FF:B

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    .line 56
    sput-object v0, Landroid/net/util/NetworkConstants;->ETHER_ADDR_BROADCAST:[B

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "no instance permitted"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static asByte(I)B
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 140
    int-to-byte v0, p0

    return v0
.end method

.method public static asString(I)Ljava/lang/String;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 142
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static asUint(B)I
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 144
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static asUint(S)I
    .locals 1
    .param p0, "s"    # S

    .prologue
    .line 145
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method
