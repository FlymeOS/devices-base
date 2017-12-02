.class final Landroid/net/metrics/DhcpErrorEvent$Decoder;
.super Ljava/lang/Object;
.source "DhcpErrorEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/DhcpErrorEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Decoder"
.end annotation


# static fields
.field static final constants:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 123
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Landroid/net/metrics/DhcpErrorEvent;

    aput-object v1, v0, v3

    .line 124
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "L2_"

    aput-object v2, v1, v3

    const-string/jumbo v2, "L3_"

    aput-object v2, v1, v4

    const-string/jumbo v2, "L4_"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "BOOTP_"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string/jumbo v2, "DHCP_"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string/jumbo v2, "BUFFER_"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string/jumbo v2, "RECEIVE_"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 125
    const-string/jumbo v2, "PARSING_"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 122
    invoke-static {v0, v1}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Landroid/net/metrics/DhcpErrorEvent$Decoder;->constants:Landroid/util/SparseArray;

    .line 121
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
