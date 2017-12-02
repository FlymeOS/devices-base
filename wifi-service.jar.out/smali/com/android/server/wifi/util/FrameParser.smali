.class public Lcom/android/server/wifi/util/FrameParser;
.super Ljava/lang/Object;
.source "FrameParser.java"


# static fields
.field private static final ARP_HWADDR_LEN_LEN:B = 0x1t

.field private static final ARP_HWTYPE_LEN:B = 0x2t

.field private static final ARP_OPCODE_REPLY:B = 0x2t

.field private static final ARP_OPCODE_REQUEST:B = 0x1t

.field private static final ARP_PROTOADDR_LEN_LEN:B = 0x1t

.field private static final ARP_PROTOTYPE_LEN:B = 0x2t

.field private static final BOOTP_BOOT_FILENAME_LEN:S = 0x80s

.field private static final BOOTP_CLIENT_HWADDR_LEN:B = 0x10t

.field private static final BOOTP_ELAPSED_SECONDS_LEN:B = 0x2t

.field private static final BOOTP_FLAGS_LEN:B = 0x2t

.field private static final BOOTP_HOPCOUNT_LEN:B = 0x1t

.field private static final BOOTP_HWADDR_LEN_LEN:B = 0x1t

.field private static final BOOTP_HWTYPE_LEN:B = 0x1t

.field private static final BOOTP_MAGIC_COOKIE_LEN:B = 0x4t

.field private static final BOOTP_OPCODE_LEN:B = 0x1t

.field private static final BOOTP_SERVER_HOSTNAME_LEN:B = 0x40t

.field private static final BOOTP_TRANSACTION_ID_LEN:B = 0x4t

.field private static final BYTES_PER_OCT:B = 0x8t

.field private static final BYTES_PER_QUAD:B = 0x4t

.field private static final DHCP_MESSAGE_TYPE_ACK:B = 0x5t

.field private static final DHCP_MESSAGE_TYPE_DECLINE:B = 0x4t

.field private static final DHCP_MESSAGE_TYPE_DISCOVER:B = 0x1t

.field private static final DHCP_MESSAGE_TYPE_INFORM:B = 0x8t

.field private static final DHCP_MESSAGE_TYPE_NAK:B = 0x6t

.field private static final DHCP_MESSAGE_TYPE_OFFER:B = 0x2t

.field private static final DHCP_MESSAGE_TYPE_RELEASE:B = 0x7t

.field private static final DHCP_MESSAGE_TYPE_REQUEST:B = 0x3t

.field private static final DHCP_OPTION_TAG_END:S = 0xffs

.field private static final DHCP_OPTION_TAG_MESSAGE_TYPE:S = 0x35s

.field private static final DHCP_OPTION_TAG_PAD:S = 0x0s

.field private static final EAPOL_KEY_DESCRIPTOR_RSN_KEY:B = 0x2t

.field private static final EAPOL_LENGTH_LEN:B = 0x2t

.field private static final EAPOL_TYPE_KEY:B = 0x3t

.field private static final ETHERNET_DST_MAC_ADDR_LEN:I = 0x6

.field private static final ETHERNET_SRC_MAC_ADDR_LEN:I = 0x6

.field private static final ETHERTYPE_ARP:S = 0x806s

.field private static final ETHERTYPE_EAPOL:S = -0x7772s

.field private static final ETHERTYPE_IP_V4:S = 0x800s

.field private static final ETHERTYPE_IP_V6:S = -0x7923s

.field private static final HTTPS_PORT:I = 0x1bb

.field private static final HTTP_PORTS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ICMP_TYPE_DEST_UNREACHABLE:B = 0x3t

.field private static final ICMP_TYPE_ECHO_REPLY:B = 0x0t

.field private static final ICMP_TYPE_ECHO_REQUEST:B = 0x8t

.field private static final ICMP_TYPE_REDIRECT:B = 0x5t

.field private static final ICMP_V6_TYPE_ECHO_REPLY:S = 0x81s

.field private static final ICMP_V6_TYPE_ECHO_REQUEST:S = 0x80s

.field private static final ICMP_V6_TYPE_MULTICAST_LISTENER_DISCOVERY:S = 0x8fs

.field private static final ICMP_V6_TYPE_NEIGHBOR_ADVERTISEMENT:S = 0x88s

.field private static final ICMP_V6_TYPE_NEIGHBOR_SOLICITATION:S = 0x87s

.field private static final ICMP_V6_TYPE_ROUTER_ADVERTISEMENT:S = 0x86s

.field private static final ICMP_V6_TYPE_ROUTER_SOLICITATION:S = 0x85s

.field private static final IEEE_80211_ADDR1_LEN:B = 0x6t

.field private static final IEEE_80211_ADDR2_LEN:B = 0x6t

.field private static final IEEE_80211_ADDR3_LEN:B = 0x6t

.field private static final IEEE_80211_AUTH_ALG_FAST_BSS_TRANSITION:S = 0x2s

.field private static final IEEE_80211_AUTH_ALG_OPEN:S = 0x0s

.field private static final IEEE_80211_AUTH_ALG_SHARED_KEY:S = 0x1s

.field private static final IEEE_80211_AUTH_ALG_SIMUL_AUTH_OF_EQUALS:S = 0x3s

.field private static final IEEE_80211_CAPABILITY_INFO_LEN:B = 0x2t

.field private static final IEEE_80211_DURATION_LEN:B = 0x2t

.field private static final IEEE_80211_FRAME_CTRL_FLAG_ORDER:B = -0x80t

.field private static final IEEE_80211_FRAME_CTRL_SUBTYPE_ASSOC_REQ:B = 0x0t

.field private static final IEEE_80211_FRAME_CTRL_SUBTYPE_ASSOC_RESP:B = 0x1t

.field private static final IEEE_80211_FRAME_CTRL_SUBTYPE_AUTH:B = 0xbt

.field private static final IEEE_80211_FRAME_CTRL_SUBTYPE_PROBE_REQ:B = 0x4t

.field private static final IEEE_80211_FRAME_CTRL_SUBTYPE_PROBE_RESP:B = 0x5t

.field private static final IEEE_80211_FRAME_CTRL_TYPE_MGMT:B = 0x0t

.field private static final IEEE_80211_HT_CONTROL_LEN:B = 0x4t

.field private static final IEEE_80211_SEQUENCE_CONTROL_LEN:B = 0x2t

.field private static final IP_PROTO_ICMP:B = 0x1t

.field private static final IP_PROTO_TCP:B = 0x6t

.field private static final IP_PROTO_UDP:B = 0x11t

.field private static final IP_V4_ADDR_LEN:B = 0x4t

.field private static final IP_V4_DSCP_AND_ECN_LEN:B = 0x1t

.field private static final IP_V4_DST_ADDR_LEN:B = 0x4t

.field private static final IP_V4_FLAGS_AND_FRAG_OFFSET_LEN:B = 0x2t

.field private static final IP_V4_HEADER_CHECKSUM_LEN:B = 0x2t

.field private static final IP_V4_ID_LEN:B = 0x2t

.field private static final IP_V4_IHL_BYTE_MASK:B = 0xft

.field private static final IP_V4_SRC_ADDR_LEN:B = 0x4t

.field private static final IP_V4_TOTAL_LEN_LEN:B = 0x2t

.field private static final IP_V4_TTL_LEN:B = 0x1t

.field private static final IP_V4_VERSION_BYTE_MASK:B = -0x10t

.field private static final IP_V6_ADDR_LEN:B = 0x10t

.field private static final IP_V6_HEADER_TYPE_HOP_BY_HOP_OPTION:B = 0x0t

.field private static final IP_V6_HEADER_TYPE_ICMP_V6:B = 0x3at

.field private static final IP_V6_HOP_LIMIT_LEN:B = 0x1t

.field private static final IP_V6_PAYLOAD_LENGTH_LEN:B = 0x2t

.field private static final TAG:Ljava/lang/String; = "FrameParser"

.field private static final TCP_SRC_PORT_LEN:B = 0x2t

.field private static final UDP_CHECKSUM_LEN:B = 0x2t

.field private static final UDP_PORT_BOOTPC:B = 0x44t

.field private static final UDP_PORT_BOOTPS:B = 0x43t

.field private static final UDP_PORT_NTP:B = 0x7bt

.field private static final WPA_KEYLEN_LEN:B = 0x2t

.field private static final WPA_KEY_IDENTIFIER_LEN:B = 0x8t

.field private static final WPA_KEY_INFO_FLAG_INSTALL:S = 0x40s

.field private static final WPA_KEY_INFO_FLAG_MIC:S = 0x100s

.field private static final WPA_KEY_INFO_FLAG_PAIRWISE:S = 0x8s

.field private static final WPA_KEY_IV_LEN:B = 0x10t

.field private static final WPA_KEY_MIC_LEN:B = 0x10t

.field private static final WPA_KEY_NONCE_LEN:B = 0x20t

.field private static final WPA_KEY_RECEIVE_SEQUENCE_COUNTER_LEN:B = 0x8t

.field private static final WPA_REPLAY_COUNTER_LEN:B = 0x8t


# instance fields
.field public mMostSpecificProtocolString:Ljava/lang/String;

.field public mResultString:Ljava/lang/String;

.field public mTypeString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 163
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    .line 165
    sget-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    const/16 v1, 0x50

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    const/16 v1, 0xc38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    const/16 v1, 0xc3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    const/16 v1, 0x1761

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    const/16 v1, 0x1f90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    const/16 v1, 0x1f98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    const/16 v1, 0x2c6b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    const/16 v1, 0x76c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    const/16 v1, 0xb35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v0, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    const/16 v1, 0xa96

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method public constructor <init>(B[B)V
    .locals 5
    .param p1, "frameType"    # B
    .param p2, "frameBytes"    # [B

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string/jumbo v2, "N/A"

    iput-object v2, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    .line 42
    const-string/jumbo v2, "N/A"

    iput-object v2, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    .line 43
    const-string/jumbo v2, "N/A"

    iput-object v2, p0, Lcom/android/server/wifi/util/FrameParser;->mResultString:Ljava/lang/String;

    .line 54
    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 55
    .local v1, "frameBuffer":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 56
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 57
    invoke-direct {p0, v1}, Lcom/android/server/wifi/util/FrameParser;->parseEthernetFrame(Ljava/nio/ByteBuffer;)V

    .line 52
    .end local v1    # "frameBuffer":Ljava/nio/ByteBuffer;
    :cond_0
    :goto_0
    return-void

    .line 58
    .restart local v1    # "frameBuffer":Ljava/nio/ByteBuffer;
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 59
    invoke-direct {p0, v1}, Lcom/android/server/wifi/util/FrameParser;->parseManagementFrame(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    .end local v1    # "frameBuffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "FrameParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Dissection aborted mid-frame: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static decodeDhcpMessageType(S)Ljava/lang/String;
    .locals 2
    .param p0, "messageType"    # S

    .prologue
    .line 266
    packed-switch p0, :pswitch_data_0

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 268
    :pswitch_0
    const-string/jumbo v0, "Discover"

    return-object v0

    .line 270
    :pswitch_1
    const-string/jumbo v0, "Offer"

    return-object v0

    .line 272
    :pswitch_2
    const-string/jumbo v0, "Request"

    return-object v0

    .line 274
    :pswitch_3
    const-string/jumbo v0, "Decline"

    return-object v0

    .line 276
    :pswitch_4
    const-string/jumbo v0, "Ack"

    return-object v0

    .line 278
    :pswitch_5
    const-string/jumbo v0, "Nak"

    return-object v0

    .line 280
    :pswitch_6
    const-string/jumbo v0, "Release"

    return-object v0

    .line 282
    :pswitch_7
    const-string/jumbo v0, "Inform"

    return-object v0

    .line 266
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private decodeIeee80211StatusCode(S)Ljava/lang/String;
    .locals 1
    .param p1, "statusCode"    # S

    .prologue
    .line 600
    packed-switch p1, :pswitch_data_0

    .line 795
    const-string/jumbo v0, "Reserved"

    return-object v0

    .line 602
    :pswitch_0
    const-string/jumbo v0, "Success"

    return-object v0

    .line 604
    :pswitch_1
    const-string/jumbo v0, "Unspecified failure"

    return-object v0

    .line 606
    :pswitch_2
    const-string/jumbo v0, "TDLS wakeup schedule rejected; alternative provided"

    return-object v0

    .line 608
    :pswitch_3
    const-string/jumbo v0, "TDLS wakeup schedule rejected"

    return-object v0

    .line 610
    :pswitch_4
    const-string/jumbo v0, "Reserved"

    return-object v0

    .line 612
    :pswitch_5
    const-string/jumbo v0, "Security disabled"

    return-object v0

    .line 614
    :pswitch_6
    const-string/jumbo v0, "Unacceptable lifetime"

    return-object v0

    .line 616
    :pswitch_7
    const-string/jumbo v0, "Not in same BSS"

    return-object v0

    .line 619
    :pswitch_8
    const-string/jumbo v0, "Reserved"

    return-object v0

    .line 621
    :pswitch_9
    const-string/jumbo v0, "Capabilities mismatch"

    return-object v0

    .line 623
    :pswitch_a
    const-string/jumbo v0, "Reassociation denied; could not confirm association exists"

    return-object v0

    .line 625
    :pswitch_b
    const-string/jumbo v0, "Association denied for reasons outside standard"

    return-object v0

    .line 627
    :pswitch_c
    const-string/jumbo v0, "Unsupported authentication algorithm"

    return-object v0

    .line 629
    :pswitch_d
    const-string/jumbo v0, "Authentication sequence number of of sequence"

    return-object v0

    .line 631
    :pswitch_e
    const-string/jumbo v0, "Authentication challenge failure"

    return-object v0

    .line 633
    :pswitch_f
    const-string/jumbo v0, "Authentication timeout"

    return-object v0

    .line 635
    :pswitch_10
    const-string/jumbo v0, "Association denied; too many STAs"

    return-object v0

    .line 637
    :pswitch_11
    const-string/jumbo v0, "Association denied; must support BSSBasicRateSet"

    return-object v0

    .line 639
    :pswitch_12
    const-string/jumbo v0, "Association denied; must support short preamble"

    return-object v0

    .line 641
    :pswitch_13
    const-string/jumbo v0, "Association denied; must support PBCC"

    return-object v0

    .line 643
    :pswitch_14
    const-string/jumbo v0, "Association denied; must support channel agility"

    return-object v0

    .line 645
    :pswitch_15
    const-string/jumbo v0, "Association rejected; must support spectrum management"

    return-object v0

    .line 647
    :pswitch_16
    const-string/jumbo v0, "Association rejected; unacceptable power capability"

    return-object v0

    .line 649
    :pswitch_17
    const-string/jumbo v0, "Association rejected; unacceptable supported channels"

    return-object v0

    .line 651
    :pswitch_18
    const-string/jumbo v0, "Association denied; must support short slot time"

    return-object v0

    .line 653
    :pswitch_19
    const-string/jumbo v0, "Association denied; must support DSSS-OFDM"

    return-object v0

    .line 655
    :pswitch_1a
    const-string/jumbo v0, "Association denied; must support HT"

    return-object v0

    .line 657
    :pswitch_1b
    const-string/jumbo v0, "R0 keyholder unreachable (802.11r)"

    return-object v0

    .line 659
    :pswitch_1c
    const-string/jumbo v0, "Association denied; must support PCO transition time"

    return-object v0

    .line 661
    :pswitch_1d
    const-string/jumbo v0, "Refused temporarily"

    return-object v0

    .line 663
    :pswitch_1e
    const-string/jumbo v0, "Robust management frame policy violation"

    return-object v0

    .line 665
    :pswitch_1f
    const-string/jumbo v0, "Unspecified QoS failure"

    return-object v0

    .line 667
    :pswitch_20
    const-string/jumbo v0, "Association denied; insufficient bandwidth for QoS"

    return-object v0

    .line 669
    :pswitch_21
    const-string/jumbo v0, "Association denied; poor channel"

    return-object v0

    .line 671
    :pswitch_22
    const-string/jumbo v0, "Association denied; must support QoS"

    return-object v0

    .line 673
    :pswitch_23
    const-string/jumbo v0, "Reserved"

    return-object v0

    .line 675
    :pswitch_24
    const-string/jumbo v0, "Declined"

    return-object v0

    .line 677
    :pswitch_25
    const-string/jumbo v0, "Invalid parameters"

    return-object v0

    .line 679
    :pswitch_26
    const-string/jumbo v0, "TS cannot be honored; changes suggested"

    return-object v0

    .line 681
    :pswitch_27
    const-string/jumbo v0, "Invalid element"

    return-object v0

    .line 683
    :pswitch_28
    const-string/jumbo v0, "Invalid group cipher"

    return-object v0

    .line 685
    :pswitch_29
    const-string/jumbo v0, "Invalid pairwise cipher"

    return-object v0

    .line 687
    :pswitch_2a
    const-string/jumbo v0, "Invalid auth/key mgmt proto (AKMP)"

    return-object v0

    .line 689
    :pswitch_2b
    const-string/jumbo v0, "Unsupported RSNE version"

    return-object v0

    .line 691
    :pswitch_2c
    const-string/jumbo v0, "Invalid RSNE capabilities"

    return-object v0

    .line 693
    :pswitch_2d
    const-string/jumbo v0, "Cipher suite rejected by policy"

    return-object v0

    .line 695
    :pswitch_2e
    const-string/jumbo v0, "TS cannot be honored now; try again later"

    return-object v0

    .line 697
    :pswitch_2f
    const-string/jumbo v0, "Direct link rejected by policy"

    return-object v0

    .line 699
    :pswitch_30
    const-string/jumbo v0, "Destination STA not in BSS"

    return-object v0

    .line 701
    :pswitch_31
    const-string/jumbo v0, "Destination STA not configured for QoS"

    return-object v0

    .line 703
    :pswitch_32
    const-string/jumbo v0, "Association denied; listen interval too large"

    return-object v0

    .line 705
    :pswitch_33
    const-string/jumbo v0, "Invalid fast transition action frame count"

    return-object v0

    .line 707
    :pswitch_34
    const-string/jumbo v0, "Invalid PMKID"

    return-object v0

    .line 709
    :pswitch_35
    const-string/jumbo v0, "Invalid MDE"

    return-object v0

    .line 711
    :pswitch_36
    const-string/jumbo v0, "Invalid FTE"

    return-object v0

    .line 713
    :pswitch_37
    const-string/jumbo v0, "Unsupported TCLAS"

    return-object v0

    .line 715
    :pswitch_38
    const-string/jumbo v0, "Requested TCLAS exceeds resources"

    return-object v0

    .line 717
    :pswitch_39
    const-string/jumbo v0, "TS cannot be honored; try another BSS"

    return-object v0

    .line 719
    :pswitch_3a
    const-string/jumbo v0, "GAS Advertisement not supported"

    return-object v0

    .line 721
    :pswitch_3b
    const-string/jumbo v0, "No outstanding GAS request"

    return-object v0

    .line 723
    :pswitch_3c
    const-string/jumbo v0, "No query response from GAS server"

    return-object v0

    .line 725
    :pswitch_3d
    const-string/jumbo v0, "GAS query timeout"

    return-object v0

    .line 727
    :pswitch_3e
    const-string/jumbo v0, "GAS response too large"

    return-object v0

    .line 729
    :pswitch_3f
    const-string/jumbo v0, "Home network does not support request"

    return-object v0

    .line 731
    :pswitch_40
    const-string/jumbo v0, "Advertisement server unreachable"

    return-object v0

    .line 733
    :pswitch_41
    const-string/jumbo v0, "Reserved"

    return-object v0

    .line 735
    :pswitch_42
    const-string/jumbo v0, "Rejected for SSP permissions"

    return-object v0

    .line 737
    :pswitch_43
    const-string/jumbo v0, "Authentication required"

    return-object v0

    .line 741
    :pswitch_44
    const-string/jumbo v0, "Reserved"

    return-object v0

    .line 743
    :pswitch_45
    const-string/jumbo v0, "Invalid RSNE contents"

    return-object v0

    .line 745
    :pswitch_46
    const-string/jumbo v0, "U-APSD coexistence unsupported"

    return-object v0

    .line 747
    :pswitch_47
    const-string/jumbo v0, "Requested U-APSD coex mode unsupported"

    return-object v0

    .line 749
    :pswitch_48
    const-string/jumbo v0, "Requested parameter unsupported with U-APSD coex"

    return-object v0

    .line 751
    :pswitch_49
    const-string/jumbo v0, "Auth rejected; anti-clogging token required"

    return-object v0

    .line 753
    :pswitch_4a
    const-string/jumbo v0, "Auth rejected; offered group is not supported"

    return-object v0

    .line 755
    :pswitch_4b
    const-string/jumbo v0, "Cannot find alternative TBTT"

    return-object v0

    .line 757
    :pswitch_4c
    const-string/jumbo v0, "Transmission failure"

    return-object v0

    .line 759
    :pswitch_4d
    const-string/jumbo v0, "Requested TCLAS not supported"

    return-object v0

    .line 761
    :pswitch_4e
    const-string/jumbo v0, "TCLAS resources exhausted"

    return-object v0

    .line 763
    :pswitch_4f
    const-string/jumbo v0, "Rejected with suggested BSS transition"

    return-object v0

    .line 765
    :pswitch_50
    const-string/jumbo v0, "Reserved"

    return-object v0

    .line 774
    :pswitch_51
    const-string/jumbo v0, "<unspecified>"

    return-object v0

    .line 776
    :pswitch_52
    const-string/jumbo v0, "Refused due to external reason"

    return-object v0

    .line 778
    :pswitch_53
    const-string/jumbo v0, "Refused; AP out of memory"

    return-object v0

    .line 780
    :pswitch_54
    const-string/jumbo v0, "Refused; emergency services not supported"

    return-object v0

    .line 782
    :pswitch_55
    const-string/jumbo v0, "GAS query response outstanding"

    return-object v0

    .line 787
    :pswitch_56
    const-string/jumbo v0, "Reserved"

    return-object v0

    .line 789
    :pswitch_57
    const-string/jumbo v0, "Failed; reservation conflict"

    return-object v0

    .line 791
    :pswitch_58
    const-string/jumbo v0, "Failed; exceeded MAF limit"

    return-object v0

    .line 793
    :pswitch_59
    const-string/jumbo v0, "Failed; exceeded MCCA track limit"

    return-object v0

    .line 600
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_45
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_52
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
    .end packed-switch
.end method

.method private static getUnsignedByte(Ljava/nio/ByteBuffer;)S
    .locals 1
    .param p0, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 71
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private static getUnsignedShort(Ljava/nio/ByteBuffer;)I
    .locals 2
    .param p0, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 78
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private parseArpPacket(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 323
    const-string/jumbo v1, "ARP"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    .line 324
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 326
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedShort(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 327
    .local v0, "opCode":I
    packed-switch v0, :pswitch_data_0

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    .line 322
    :goto_0
    return-void

    .line 329
    :pswitch_0
    const-string/jumbo v1, "Request"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    goto :goto_0

    .line 332
    :pswitch_1
    const-string/jumbo v1, "Reply"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    goto :goto_0

    .line 327
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private parseAssociationResponse(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 557
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 558
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 560
    .local v0, "resultCode":S
    const-string/jumbo v1, "%d: %s"

    .line 559
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 560
    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {p0, v0}, Lcom/android/server/wifi/util/FrameParser;->decodeIeee80211StatusCode(S)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 559
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mResultString:Ljava/lang/String;

    .line 556
    return-void
.end method

.method private parseAuthenticationFrame(Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v5, 0x2

    .line 569
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 570
    .local v0, "algorithm":S
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 571
    .local v3, "sequenceNum":S
    const/4 v1, 0x0

    .line 572
    .local v1, "hasResultCode":Z
    packed-switch v0, :pswitch_data_0

    .line 591
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 592
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 594
    .local v2, "resultCode":S
    const-string/jumbo v4, "%d: %s"

    .line 593
    new-array v5, v5, [Ljava/lang/Object;

    .line 594
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-direct {p0, v2}, Lcom/android/server/wifi/util/FrameParser;->decodeIeee80211StatusCode(S)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 593
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/util/FrameParser;->mResultString:Ljava/lang/String;

    .line 568
    .end local v2    # "resultCode":S
    :cond_1
    return-void

    .line 575
    :pswitch_0
    if-ne v3, v5, :cond_0

    .line 576
    const/4 v1, 0x1

    goto :goto_0

    .line 580
    :pswitch_1
    if-eq v3, v5, :cond_2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 581
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 585
    :pswitch_2
    const/4 v1, 0x1

    .line 586
    goto :goto_0

    .line 572
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseDhcpPacket(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 228
    const-string/jumbo v2, "DHCP"

    iput-object v2, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x40

    add-int/lit16 v2, v2, 0x80

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 233
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_1

    .line 234
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    move-result v1

    .line 235
    .local v1, "dhcpOptionTag":S
    if-eqz v1, :cond_0

    .line 238
    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    .line 227
    .end local v1    # "dhcpOptionTag":S
    :cond_1
    return-void

    .line 241
    .restart local v1    # "dhcpOptionTag":S
    :cond_2
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    move-result v0

    .line 242
    .local v0, "dhcpOptionLen":S
    packed-switch v1, :pswitch_data_0

    .line 251
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 244
    :pswitch_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    .line 245
    const-string/jumbo v2, "FrameParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DHCP option len: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " (expected |1|)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void

    .line 248
    :cond_3
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    move-result v2

    invoke-static {v2}, Lcom/android/server/wifi/util/FrameParser;->decodeDhcpMessageType(S)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    .line 249
    return-void

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_0
    .end packed-switch
.end method

.method private parseEapolPacket(Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v6, 0x2

    .line 430
    const-string/jumbo v5, "EAPOL"

    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    .line 431
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    move-result v2

    .line 432
    .local v2, "eapolVersion":S
    const/4 v5, 0x1

    if-lt v2, v5, :cond_0

    if-le v2, v6, :cond_1

    .line 433
    :cond_0
    const-string/jumbo v5, "FrameParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unrecognized EAPOL version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return-void

    .line 437
    :cond_1
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    move-result v1

    .line 438
    .local v1, "eapolType":S
    const/4 v5, 0x3

    if-eq v1, v5, :cond_2

    .line 439
    const-string/jumbo v5, "FrameParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unrecognized EAPOL type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    return-void

    .line 443
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 444
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    move-result v0

    .line 445
    .local v0, "eapolKeyDescriptorType":S
    if-eq v0, v6, :cond_3

    .line 446
    const-string/jumbo v5, "FrameParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unrecognized key descriptor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return-void

    .line 450
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 451
    .local v4, "wpaKeyInfo":S
    and-int/lit8 v5, v4, 0x8

    if-nez v5, :cond_4

    .line 452
    const-string/jumbo v5, "Group Key"

    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    .line 458
    :goto_0
    and-int/lit16 v5, v4, 0x100

    if-nez v5, :cond_5

    .line 459
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " message 1/4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    .line 460
    return-void

    .line 454
    :cond_4
    const-string/jumbo v5, "Pairwise Key"

    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    goto :goto_0

    .line 463
    :cond_5
    and-int/lit8 v5, v4, 0x40

    if-eqz v5, :cond_6

    .line 464
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " message 3/4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    .line 465
    return-void

    .line 468
    :cond_6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, 0x20

    add-int/lit8 v5, v5, 0x10

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, 0x8

    add-int/lit8 v5, v5, 0x10

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 471
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedShort(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 472
    .local v3, "wpaKeyDataLen":I
    if-lez v3, :cond_7

    .line 473
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " message 2/4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    .line 429
    :goto_1
    return-void

    .line 475
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " message 4/4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    goto :goto_1
.end method

.method private parseEthernetFrame(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 89
    const-string/jumbo v1, "Ethernet"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 91
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 92
    .local v0, "etherType":S
    sparse-switch v0, :sswitch_data_0

    .line 106
    return-void

    .line 94
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseIpv4Packet(Ljava/nio/ByteBuffer;)V

    .line 95
    return-void

    .line 97
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseArpPacket(Ljava/nio/ByteBuffer;)V

    .line 98
    return-void

    .line 100
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseIpv6Packet(Ljava/nio/ByteBuffer;)V

    .line 101
    return-void

    .line 103
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseEapolPacket(Ljava/nio/ByteBuffer;)V

    .line 104
    return-void

    .line 92
    :sswitch_data_0
    .sparse-switch
        -0x7923 -> :sswitch_2
        -0x7772 -> :sswitch_3
        0x800 -> :sswitch_0
        0x806 -> :sswitch_1
    .end sparse-switch
.end method

.method private parseIcmpPacket(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 294
    const-string/jumbo v1, "ICMP"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    .line 295
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    move-result v0

    .line 296
    .local v0, "messageType":S
    packed-switch v0, :pswitch_data_0

    .line 310
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    .line 311
    return-void

    .line 298
    :pswitch_1
    const-string/jumbo v1, "Echo Reply"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    .line 299
    return-void

    .line 301
    :pswitch_2
    const-string/jumbo v1, "Destination Unreachable"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    .line 302
    return-void

    .line 304
    :pswitch_3
    const-string/jumbo v1, "Redirect"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    .line 305
    return-void

    .line 307
    :pswitch_4
    const-string/jumbo v1, "Echo Request"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    .line 308
    return-void

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private parseIcmpV6Packet(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 385
    const-string/jumbo v1, "ICMPv6"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    .line 386
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    move-result v0

    .line 387
    .local v0, "icmpV6Type":S
    packed-switch v0, :pswitch_data_0

    .line 410
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    .line 411
    return-void

    .line 389
    :pswitch_1
    const-string/jumbo v1, "Echo Request"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    .line 390
    return-void

    .line 392
    :pswitch_2
    const-string/jumbo v1, "Echo Reply"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    .line 393
    return-void

    .line 395
    :pswitch_3
    const-string/jumbo v1, "Router Solicitation"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    .line 396
    return-void

    .line 398
    :pswitch_4
    const-string/jumbo v1, "Router Advertisement"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    .line 399
    return-void

    .line 401
    :pswitch_5
    const-string/jumbo v1, "Neighbor Solicitation"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    .line 402
    return-void

    .line 404
    :pswitch_6
    const-string/jumbo v1, "Neighbor Advertisement"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    .line 405
    return-void

    .line 407
    :pswitch_7
    const-string/jumbo v1, "MLDv2 report"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    .line 408
    return-void

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method private static parseIeee80211FrameCtrlSubtype(B)B
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 500
    and-int/lit16 v0, p0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    return v0
.end method

.method private static parseIeee80211FrameCtrlType(B)B
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 497
    and-int/lit8 v0, p0, 0xc

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    return v0
.end method

.method private static parseIeee80211FrameCtrlVersion(B)B
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 494
    and-int/lit8 v0, p0, 0x3

    int-to-byte v0, v0

    return v0
.end method

.method private parseIpv4Packet(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 127
    const-string/jumbo v4, "IPv4"

    iput-object v4, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 129
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 130
    .local v3, "versionAndHeaderLen":B
    and-int/lit8 v4, v3, -0x10

    shr-int/lit8 v2, v4, 0x4

    .line 131
    .local v2, "version":I
    const/4 v4, 0x4

    if-eq v2, v4, :cond_0

    .line 132
    const-string/jumbo v4, "FrameParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IPv4 header: Unrecognized protocol version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    return-void

    .line 136
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 138
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    move-result v1

    .line 139
    .local v1, "protocolNumber":S
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 142
    and-int/lit8 v4, v3, 0xf

    mul-int/lit8 v0, v4, 0x4

    .line 143
    .local v0, "headerLen":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 144
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 146
    sparse-switch v1, :sswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 148
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseIcmpPacket(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 151
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseTcpPacket(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 154
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseUdpPacket(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 146
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method private parseIpv6Packet(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 347
    const-string/jumbo v4, "IPv6"

    iput-object v4, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    .line 348
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 349
    .local v3, "versionClassAndLabel":I
    const/high16 v4, -0x10000000

    and-int/2addr v4, v3

    shr-int/lit8 v2, v4, 0x1c

    .line 350
    .local v2, "version":I
    const/4 v4, 0x6

    if-eq v2, v4, :cond_0

    .line 351
    const-string/jumbo v4, "FrameParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IPv6 header: invalid IP version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return-void

    .line 354
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 356
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    move-result v0

    .line 357
    .local v0, "nextHeaderType":S
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x20

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 358
    :goto_0
    if-nez v0, :cond_1

    .line 360
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 361
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    move-result v0

    .line 362
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedByte(Ljava/nio/ByteBuffer;)S

    move-result v4

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v1, v4, 0x8

    .line 363
    .local v1, "thisHeaderLen":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 364
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 366
    .end local v1    # "thisHeaderLen":I
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 371
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Option/Protocol "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    .line 372
    return-void

    .line 368
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseIcmpV6Packet(Ljava/nio/ByteBuffer;)V

    .line 369
    return-void

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method private parseManagementFrame(Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 503
    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 505
    const-string/jumbo v5, "802.11 Mgmt"

    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    .line 506
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 507
    .local v1, "frameControlVersionTypeSubtype":B
    invoke-static {v1}, Lcom/android/server/wifi/util/FrameParser;->parseIeee80211FrameCtrlVersion(B)B

    move-result v4

    .line 508
    .local v4, "ieee80211Version":B
    if-eqz v4, :cond_0

    .line 509
    const-string/jumbo v5, "FrameParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unrecognized 802.11 version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return-void

    .line 513
    :cond_0
    invoke-static {v1}, Lcom/android/server/wifi/util/FrameParser;->parseIeee80211FrameCtrlType(B)B

    move-result v3

    .line 514
    .local v3, "ieee80211FrameType":B
    if-eqz v3, :cond_1

    .line 515
    const-string/jumbo v5, "FrameParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unexpected frame type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    return-void

    .line 519
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 521
    .local v0, "frameControlFlags":B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x6

    add-int/lit8 v5, v5, 0x6

    add-int/lit8 v5, v5, 0x6

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 524
    and-int/lit8 v5, v0, -0x80

    if-eqz v5, :cond_2

    .line 526
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 529
    :cond_2
    invoke-static {v1}, Lcom/android/server/wifi/util/FrameParser;->parseIeee80211FrameCtrlSubtype(B)B

    move-result v2

    .line 530
    .local v2, "ieee80211FrameSubtype":B
    sparse-switch v2, :sswitch_data_0

    .line 549
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected subtype "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    .line 550
    return-void

    .line 532
    :sswitch_0
    const-string/jumbo v5, "Association Request"

    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    .line 533
    return-void

    .line 535
    :sswitch_1
    const-string/jumbo v5, "Association Response"

    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    .line 536
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseAssociationResponse(Ljava/nio/ByteBuffer;)V

    .line 537
    return-void

    .line 539
    :sswitch_2
    const-string/jumbo v5, "Probe Request"

    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    .line 540
    return-void

    .line 542
    :sswitch_3
    const-string/jumbo v5, "Probe Response"

    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    .line 543
    return-void

    .line 545
    :sswitch_4
    const-string/jumbo v5, "Authentication"

    iput-object v5, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    .line 546
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseAuthenticationFrame(Ljava/nio/ByteBuffer;)V

    .line 547
    return-void

    .line 530
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0xb -> :sswitch_4
    .end sparse-switch
.end method

.method private parseTcpPacket(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 178
    const-string/jumbo v1, "TCP"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 180
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedShort(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 182
    .local v0, "dstPort":I
    const/16 v1, 0x1bb

    if-ne v0, v1, :cond_1

    .line 183
    const-string/jumbo v1, "HTTPS"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    sget-object v1, Lcom/android/server/wifi/util/FrameParser;->HTTP_PORTS:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    const-string/jumbo v1, "HTTP"

    iput-object v1, p0, Lcom/android/server/wifi/util/FrameParser;->mTypeString:Ljava/lang/String;

    goto :goto_0
.end method

.method private parseUdpPacket(Ljava/nio/ByteBuffer;)V
    .locals 7
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .prologue
    const/16 v6, 0x7b

    const/16 v5, 0x44

    const/16 v4, 0x43

    .line 195
    const-string/jumbo v3, "UDP"

    iput-object v3, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    .line 196
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedShort(Ljava/nio/ByteBuffer;)I

    move-result v2

    .line 197
    .local v2, "srcPort":I
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedShort(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 198
    .local v0, "dstPort":I
    invoke-static {p1}, Lcom/android/server/wifi/util/FrameParser;->getUnsignedShort(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 200
    .local v1, "length":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 201
    if-ne v2, v5, :cond_1

    if-ne v0, v4, :cond_1

    .line 203
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/util/FrameParser;->parseDhcpPacket(Ljava/nio/ByteBuffer;)V

    .line 204
    return-void

    .line 202
    :cond_1
    if-ne v2, v4, :cond_2

    if-eq v0, v5, :cond_0

    .line 206
    :cond_2
    if-eq v2, v6, :cond_3

    if-ne v0, v6, :cond_4

    .line 207
    :cond_3
    const-string/jumbo v3, "NTP"

    iput-object v3, p0, Lcom/android/server/wifi/util/FrameParser;->mMostSpecificProtocolString:Ljava/lang/String;

    .line 208
    return-void

    .line 194
    :cond_4
    return-void
.end method
