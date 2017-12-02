.class public Landroid/net/NetworkStats;
.super Ljava/lang/Object;
.source "NetworkStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStats$1;,
        Landroid/net/NetworkStats$Entry;,
        Landroid/net/NetworkStats$NonMonotonicObserver;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field public static final IFACE_ALL:Ljava/lang/String; = null

.field public static final ROAMING_ALL:I = -0x1

.field public static final ROAMING_NO:I = 0x0

.field public static final ROAMING_YES:I = 0x1

.field public static final SET_ALL:I = -0x1

.field public static final SET_DBG_VPN_IN:I = 0x3e9

.field public static final SET_DBG_VPN_OUT:I = 0x3ea

.field public static final SET_DEBUG_START:I = 0x3e8

.field public static final SET_DEFAULT:I = 0x0

.field public static final SET_FOREGROUND:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NetworkStats"

.field public static final TAG_ALL:I = -0x1

.field public static final TAG_NONE:I = 0x0

.field public static final UID_ALL:I = -0x1


# instance fields
.field private capacity:I

.field private elapsedRealtime:J

.field private iface:[Ljava/lang/String;

.field private operations:[J

.field private roaming:[I

.field private rxBytes:[J

.field private rxPackets:[J

.field private set:[I

.field private size:I

.field private tag:[I

.field private txBytes:[J

.field private txPackets:[J

.field private uid:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 860
    new-instance v0, Landroid/net/NetworkStats$1;

    invoke-direct {v0}, Landroid/net/NetworkStats$1;-><init>()V

    sput-object v0, Landroid/net/NetworkStats;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 45
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "elapsedRealtime"    # J
    .param p3, "initialSize"    # I

    .prologue
    const/4 v0, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-wide p1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 192
    iput v0, p0, Landroid/net/NetworkStats;->size:I

    .line 193
    if-ltz p3, :cond_0

    .line 194
    iput p3, p0, Landroid/net/NetworkStats;->capacity:I

    .line 195
    new-array v0, p3, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 196
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .line 197
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    .line 198
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    .line 199
    new-array v0, p3, [I

    iput-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    .line 200
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 201
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 202
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 203
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 204
    new-array v0, p3, [J

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    .line 190
    :goto_0
    return-void

    .line 207
    :cond_0
    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    .line 208
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 209
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .line 210
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    .line 211
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    .line 212
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    .line 213
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 214
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 215
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 216
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 217
    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStats;->size:I

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->set:[I

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    .line 221
    return-void
.end method

.method private addTrafficToApplications(ILjava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 10
    .param p1, "tunUid"    # I
    .param p2, "tunIface"    # Ljava/lang/String;
    .param p3, "underlyingIface"    # Ljava/lang/String;
    .param p4, "tunIfaceTotal"    # Landroid/net/NetworkStats$Entry;
    .param p5, "pool"    # Landroid/net/NetworkStats$Entry;

    .prologue
    const-wide/16 v8, 0x0

    .line 965
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 966
    .local v1, "moved":Landroid/net/NetworkStats$Entry;
    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 967
    .local v2, "tmpEntry":Landroid/net/NetworkStats$Entry;
    iput-object p3, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 968
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v3, :cond_6

    .line 971
    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v0

    if-eq v3, p1, :cond_0

    .line 972
    iget-wide v4, p4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_1

    .line 973
    iget-wide v4, p5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v6, v3, v0

    mul-long/2addr v4, v6

    iget-wide v6, p4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    div-long/2addr v4, v6

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 977
    :goto_1
    iget-wide v4, p4, Landroid/net/NetworkStats$Entry;->rxPackets:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_2

    .line 978
    iget-wide v4, p5, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v6, v3, v0

    mul-long/2addr v4, v6

    iget-wide v6, p4, Landroid/net/NetworkStats$Entry;->rxPackets:J

    div-long/2addr v4, v6

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 982
    :goto_2
    iget-wide v4, p4, Landroid/net/NetworkStats$Entry;->txBytes:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_3

    .line 983
    iget-wide v4, p5, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v6, v3, v0

    mul-long/2addr v4, v6

    iget-wide v6, p4, Landroid/net/NetworkStats$Entry;->txBytes:J

    div-long/2addr v4, v6

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 987
    :goto_3
    iget-wide v4, p4, Landroid/net/NetworkStats$Entry;->txPackets:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_4

    .line 988
    iget-wide v4, p5, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v6, v3, v0

    mul-long/2addr v4, v6

    iget-wide v6, p4, Landroid/net/NetworkStats$Entry;->txPackets:J

    div-long/2addr v4, v6

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 992
    :goto_4
    iget-wide v4, p4, Landroid/net/NetworkStats$Entry;->operations:J

    cmp-long v3, v4, v8

    if-lez v3, :cond_5

    .line 994
    iget-wide v4, p5, Landroid/net/NetworkStats$Entry;->operations:J

    iget-object v3, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v6, v3, v0

    mul-long/2addr v4, v6

    iget-wide v6, p4, Landroid/net/NetworkStats$Entry;->operations:J

    div-long/2addr v4, v6

    .line 993
    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->operations:J

    .line 998
    :goto_5
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v0

    iput v3, v2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 999
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v0

    iput v3, v2, Landroid/net/NetworkStats$Entry;->tag:I

    .line 1000
    iget-object v3, p0, Landroid/net/NetworkStats;->set:[I

    aget v3, v3, v0

    iput v3, v2, Landroid/net/NetworkStats$Entry;->set:I

    .line 1001
    iget-object v3, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v3, v3, v0

    iput v3, v2, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 1002
    invoke-virtual {p0, v2}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 1003
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v0

    if-nez v3, :cond_0

    .line 1004
    invoke-virtual {v1, v2}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    .line 1006
    const/16 v3, 0x3e9

    iput v3, v2, Landroid/net/NetworkStats$Entry;->set:I

    .line 1007
    invoke-virtual {p0, v2}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 968
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 975
    :cond_1
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    goto :goto_1

    .line 980
    :cond_2
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    goto :goto_2

    .line 985
    :cond_3
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    goto :goto_3

    .line 990
    :cond_4
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    goto :goto_4

    .line 996
    :cond_5
    iput-wide v8, v2, Landroid/net/NetworkStats$Entry;->operations:J

    goto :goto_5

    .line 1011
    :cond_6
    return-object v1
.end method

.method private deductTrafficFromVpnApp(ILjava/lang/String;Landroid/net/NetworkStats$Entry;)V
    .locals 8
    .param p1, "tunUid"    # I
    .param p2, "underlyingIface"    # Ljava/lang/String;
    .param p3, "moved"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 1016
    iput p1, p3, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1017
    const/16 v0, 0x3ea

    iput v0, p3, Landroid/net/NetworkStats$Entry;->set:I

    .line 1018
    const/4 v0, 0x0

    iput v0, p3, Landroid/net/NetworkStats$Entry;->tag:I

    .line 1019
    iput-object p2, p3, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 1020
    const/4 v0, -0x1

    iput v0, p3, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 1021
    invoke-virtual {p0, p3}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 1030
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1031
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p1

    .line 1030
    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIII)I

    move-result v6

    .line 1032
    .local v6, "idxVpnBackground":I
    const/4 v0, -0x1

    if-eq v6, v0, :cond_0

    .line 1033
    invoke-static {v6, p0, p3}, Landroid/net/NetworkStats;->tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V

    .line 1036
    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1037
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move v2, p1

    .line 1036
    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIII)I

    move-result v7

    .line 1038
    .local v7, "idxVpnForeground":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_1

    .line 1039
    invoke-static {v7, p0, p3}, Landroid/net/NetworkStats;->tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V

    .line 1014
    :cond_1
    return-void
.end method

.method private getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;
    .locals 9
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;
    .param p3, "limitUid"    # I
    .param p4, "includeTags"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats$Entry;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;IZ)",
            "Landroid/net/NetworkStats$Entry;"
        }
    .end annotation

    .prologue
    .local p2, "limitIface":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v5, 0x0

    const/4 v8, -0x1

    const-wide/16 v6, 0x0

    .line 539
    if-eqz p1, :cond_3

    move-object v0, p1

    .line 541
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    :goto_0
    sget-object v4, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v4, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 542
    iput p3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 543
    iput v8, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 544
    iput v5, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 545
    iput v8, v0, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 546
    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 547
    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 548
    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 549
    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 550
    iput-wide v6, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 552
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v4, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v4, :cond_6

    .line 553
    if-eq p3, v8, :cond_0

    iget-object v4, p0, Landroid/net/NetworkStats;->uid:[I

    aget v4, v4, v1

    if-ne p3, v4, :cond_4

    :cond_0
    const/4 v3, 0x1

    .line 554
    .local v3, "matchesUid":Z
    :goto_2
    if-eqz p2, :cond_5

    iget-object v4, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {p2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 556
    :goto_3
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 558
    iget-object v4, p0, Landroid/net/NetworkStats;->tag:[I

    aget v4, v4, v1

    if-eqz v4, :cond_1

    if-eqz p4, :cond_2

    .line 560
    :cond_1
    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-object v6, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 561
    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-object v6, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 562
    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-object v6, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 563
    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-object v6, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 564
    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->operations:J

    iget-object v6, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 552
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 539
    .end local v0    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v1    # "i":I
    .end local v3    # "matchesUid":Z
    :cond_3
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .restart local v0    # "entry":Landroid/net/NetworkStats$Entry;
    goto :goto_0

    .line 553
    .restart local v1    # "i":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "matchesUid":Z
    goto :goto_2

    .line 554
    :cond_5
    const/4 v2, 0x1

    .local v2, "matchesIface":Z
    goto :goto_3

    .line 567
    .end local v2    # "matchesIface":Z
    .end local v3    # "matchesUid":Z
    :cond_6
    return-object v0
.end method

.method public static roamingToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "roaming"    # I

    .prologue
    .line 836
    packed-switch p0, :pswitch_data_0

    .line 844
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 838
    :pswitch_0
    const-string/jumbo v0, "ALL"

    return-object v0

    .line 840
    :pswitch_1
    const-string/jumbo v0, "NO"

    return-object v0

    .line 842
    :pswitch_2
    const-string/jumbo v0, "YES"

    return-object v0

    .line 836
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setMatches(II)Z
    .locals 3
    .param p0, "querySet"    # I
    .param p1, "dataSet"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 818
    if-ne p0, p1, :cond_0

    .line 819
    return v0

    .line 822
    :cond_0
    const/4 v2, -0x1

    if-ne p0, v2, :cond_1

    const/16 v2, 0x3e8

    if-ge p1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static setToCheckinString(I)Ljava/lang/String;
    .locals 1
    .param p0, "set"    # I

    .prologue
    .line 798
    sparse-switch p0, :sswitch_data_0

    .line 810
    const-string/jumbo v0, "unk"

    return-object v0

    .line 800
    :sswitch_0
    const-string/jumbo v0, "all"

    return-object v0

    .line 802
    :sswitch_1
    const-string/jumbo v0, "def"

    return-object v0

    .line 804
    :sswitch_2
    const-string/jumbo v0, "fg"

    return-object v0

    .line 806
    :sswitch_3
    const-string/jumbo v0, "vpnin"

    return-object v0

    .line 808
    :sswitch_4
    const-string/jumbo v0, "vpnout"

    return-object v0

    .line 798
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x3e9 -> :sswitch_3
        0x3ea -> :sswitch_4
    .end sparse-switch
.end method

.method public static setToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "set"    # I

    .prologue
    .line 778
    sparse-switch p0, :sswitch_data_0

    .line 790
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 780
    :sswitch_0
    const-string/jumbo v0, "ALL"

    return-object v0

    .line 782
    :sswitch_1
    const-string/jumbo v0, "DEFAULT"

    return-object v0

    .line 784
    :sswitch_2
    const-string/jumbo v0, "FOREGROUND"

    return-object v0

    .line 786
    :sswitch_3
    const-string/jumbo v0, "DBG_VPN_IN"

    return-object v0

    .line 788
    :sswitch_4
    const-string/jumbo v0, "DBG_VPN_OUT"

    return-object v0

    .line 778
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x3e9 -> :sswitch_3
        0x3ea -> :sswitch_4
    .end sparse-switch
.end method

.method public static subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;
    .locals 1
    .param p0, "left"    # Landroid/net/NetworkStats;
    .param p1, "right"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats$NonMonotonicObserver",
            "<TC;>;TC;)",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    .prologue
    .line 600
    .local p2, "observer":Landroid/net/NetworkStats$NonMonotonicObserver;, "Landroid/net/NetworkStats$NonMonotonicObserver<TC;>;"
    .local p3, "cookie":Ljava/lang/Object;, "TC;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public static subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 16
    .param p0, "left"    # Landroid/net/NetworkStats;
    .param p1, "right"    # Landroid/net/NetworkStats;
    .param p4, "recycle"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats;",
            "Landroid/net/NetworkStats$NonMonotonicObserver",
            "<TC;>;TC;",
            "Landroid/net/NetworkStats;",
            ")",
            "Landroid/net/NetworkStats;"
        }
    .end annotation

    .prologue
    .line 617
    .local p2, "observer":Landroid/net/NetworkStats$NonMonotonicObserver;, "Landroid/net/NetworkStats$NonMonotonicObserver<TC;>;"
    .local p3, "cookie":Ljava/lang/Object;, "TC;"
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/net/NetworkStats;->elapsedRealtime:J

    move-object/from16 v0, p1

    iget-wide v4, v0, Landroid/net/NetworkStats;->elapsedRealtime:J

    sub-long v12, v2, v4

    .line 618
    .local v12, "deltaRealtime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-gez v2, :cond_1

    .line 619
    if-eqz p2, :cond_0

    .line 620
    const/4 v4, -0x1

    const/4 v6, -0x1

    move-object/from16 v2, p2

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    invoke-interface/range {v2 .. v7}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V

    .line 622
    :cond_0
    const-wide/16 v12, 0x0

    .line 626
    :cond_1
    new-instance v14, Landroid/net/NetworkStats$Entry;

    invoke-direct {v14}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 628
    .local v14, "entry":Landroid/net/NetworkStats$Entry;
    if-eqz p4, :cond_3

    move-object/from16 v0, p4

    iget v2, v0, Landroid/net/NetworkStats;->capacity:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/net/NetworkStats;->size:I

    if-lt v2, v3, :cond_3

    .line 629
    move-object/from16 v15, p4

    .line 630
    .local v15, "result":Landroid/net/NetworkStats;
    const/4 v2, 0x0

    move-object/from16 v0, p4

    iput v2, v0, Landroid/net/NetworkStats;->size:I

    .line 631
    move-object/from16 v0, p4

    iput-wide v12, v0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 635
    :goto_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/net/NetworkStats;->size:I

    if-ge v8, v2, :cond_8

    .line 636
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v2, v2, v8

    iput-object v2, v14, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->uid:[I

    aget v2, v2, v8

    iput v2, v14, Landroid/net/NetworkStats$Entry;->uid:I

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->set:[I

    aget v2, v2, v8

    iput v2, v14, Landroid/net/NetworkStats$Entry;->set:I

    .line 639
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->tag:[I

    aget v2, v2, v8

    iput v2, v14, Landroid/net/NetworkStats$Entry;->tag:I

    .line 640
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->roaming:[I

    aget v2, v2, v8

    iput v2, v14, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 643
    iget-object v3, v14, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v4, v14, Landroid/net/NetworkStats$Entry;->uid:I

    iget v5, v14, Landroid/net/NetworkStats$Entry;->set:I

    iget v6, v14, Landroid/net/NetworkStats$Entry;->tag:I

    .line 644
    iget v7, v14, Landroid/net/NetworkStats$Entry;->roaming:I

    move-object/from16 v2, p1

    .line 643
    invoke-virtual/range {v2 .. v8}, Landroid/net/NetworkStats;->findIndexHinted(Ljava/lang/String;IIIII)I

    move-result v10

    .line 645
    .local v10, "j":I
    const/4 v2, -0x1

    if-ne v10, v2, :cond_4

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v2, v8

    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v2, v8

    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 649
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v2, v8

    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v2, v8

    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 651
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v2, v8

    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->operations:J

    .line 673
    :cond_2
    :goto_2
    invoke-virtual {v15, v14}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 635
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 633
    .end local v8    # "i":I
    .end local v10    # "j":I
    .end local v15    # "result":Landroid/net/NetworkStats;
    :cond_3
    new-instance v15, Landroid/net/NetworkStats;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/net/NetworkStats;->size:I

    invoke-direct {v15, v12, v13, v2}, Landroid/net/NetworkStats;-><init>(JI)V

    .restart local v15    # "result":Landroid/net/NetworkStats;
    goto :goto_0

    .line 654
    .restart local v8    # "i":I
    .restart local v10    # "j":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v2, v8

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v4, v4, v10

    sub-long/2addr v2, v4

    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v2, v8

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v4, v4, v10

    sub-long/2addr v2, v4

    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 656
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v2, v8

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v4, v4, v10

    sub-long/2addr v2, v4

    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v2, v8

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v4, v4, v10

    sub-long/2addr v2, v4

    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 658
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v2, v8

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v4, v4, v10

    sub-long/2addr v2, v4

    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->operations:J

    .line 660
    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_7

    .line 662
    :cond_5
    :goto_3
    if-eqz p2, :cond_6

    move-object/from16 v6, p2

    move-object/from16 v7, p0

    move-object/from16 v9, p1

    move-object/from16 v11, p3

    .line 663
    invoke-interface/range {v6 .. v11}, Landroid/net/NetworkStats$NonMonotonicObserver;->foundNonMonotonic(Landroid/net/NetworkStats;ILandroid/net/NetworkStats;ILjava/lang/Object;)V

    .line 665
    :cond_6
    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 666
    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 667
    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 668
    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 669
    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->operations:J

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v14, Landroid/net/NetworkStats$Entry;->operations:J

    goto/16 :goto_2

    .line 660
    :cond_7
    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    .line 661
    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_5

    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->operations:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    goto :goto_3

    .line 676
    .end local v10    # "j":I
    :cond_8
    return-object v15
.end method

.method public static tagToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # I

    .prologue
    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private tunAdjustmentInit(ILjava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)V
    .locals 4
    .param p1, "tunUid"    # I
    .param p2, "tunIface"    # Ljava/lang/String;
    .param p3, "underlyingIface"    # Ljava/lang/String;
    .param p4, "tunIfaceTotal"    # Landroid/net/NetworkStats$Entry;
    .param p5, "underlyingIfaceTotal"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 929
    new-instance v1, Landroid/net/NetworkStats$Entry;

    invoke-direct {v1}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 930
    .local v1, "recycle":Landroid/net/NetworkStats$Entry;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v2, :cond_5

    .line 931
    invoke-virtual {p0, v0, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    .line 932
    iget v2, v1, Landroid/net/NetworkStats$Entry;->uid:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 933
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 934
    const-string/jumbo v3, "Cannot adjust VPN accounting on an iface aggregated NetworkStats."

    .line 933
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 935
    :cond_0
    iget v2, v1, Landroid/net/NetworkStats$Entry;->set:I

    const/16 v3, 0x3e9

    if-eq v2, v3, :cond_1

    iget v2, v1, Landroid/net/NetworkStats$Entry;->set:I

    const/16 v3, 0x3ea

    if-ne v2, v3, :cond_2

    .line 936
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 937
    const-string/jumbo v3, "Cannot adjust VPN accounting on a NetworkStats containing SET_DBG_VPN_*"

    .line 936
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 940
    :cond_2
    iget v2, v1, Landroid/net/NetworkStats$Entry;->uid:I

    if-ne v2, p1, :cond_3

    iget v2, v1, Landroid/net/NetworkStats$Entry;->tag:I

    if-nez v2, :cond_3

    .line 941
    iget-object v2, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-static {p3, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 940
    if-eqz v2, :cond_3

    .line 942
    invoke-virtual {p5, v1}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    .line 945
    :cond_3
    iget v2, v1, Landroid/net/NetworkStats$Entry;->uid:I

    if-eq v2, p1, :cond_4

    iget v2, v1, Landroid/net/NetworkStats$Entry;->tag:I

    if-nez v2, :cond_4

    .line 946
    iget-object v2, v1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-static {p2, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 945
    if-eqz v2, :cond_4

    .line 948
    invoke-virtual {p4, v1}, Landroid/net/NetworkStats$Entry;->add(Landroid/net/NetworkStats$Entry;)V

    .line 930
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 928
    :cond_5
    return-void
.end method

.method private static tunGetPool(Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 6
    .param p0, "tunIfaceTotal"    # Landroid/net/NetworkStats$Entry;
    .param p1, "underlyingIfaceTotal"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 954
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 955
    .local v0, "pool":Landroid/net/NetworkStats$Entry;
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 956
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 957
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 958
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 959
    iget-wide v2, p0, Landroid/net/NetworkStats$Entry;->operations:J

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->operations:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 960
    return-object v0
.end method

.method private static tunSubtract(ILandroid/net/NetworkStats;Landroid/net/NetworkStats$Entry;)V
    .locals 12
    .param p0, "i"    # I
    .param p1, "left"    # Landroid/net/NetworkStats;
    .param p2, "right"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 1044
    iget-object v8, p1, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v8, v8, p0

    iget-wide v10, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 1045
    .local v0, "rxBytes":J
    iget-object v8, p1, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v10, v8, p0

    sub-long/2addr v10, v0

    aput-wide v10, v8, p0

    .line 1046
    iget-wide v8, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    sub-long/2addr v8, v0

    iput-wide v8, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1048
    iget-object v8, p1, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v8, v8, p0

    iget-wide v10, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 1049
    .local v2, "rxPackets":J
    iget-object v8, p1, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v10, v8, p0

    sub-long/2addr v10, v2

    aput-wide v10, v8, p0

    .line 1050
    iget-wide v8, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    sub-long/2addr v8, v2

    iput-wide v8, p2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 1052
    iget-object v8, p1, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v8, v8, p0

    iget-wide v10, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 1053
    .local v4, "txBytes":J
    iget-object v8, p1, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v10, v8, p0

    sub-long/2addr v10, v4

    aput-wide v10, v8, p0

    .line 1054
    iget-wide v8, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    sub-long/2addr v8, v4

    iput-wide v8, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1056
    iget-object v8, p1, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v8, v8, p0

    iget-wide v10, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 1057
    .local v6, "txPackets":J
    iget-object v8, p1, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v10, v8, p0

    sub-long/2addr v10, v6

    aput-wide v10, v8, p0

    .line 1058
    iget-wide v8, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    sub-long/2addr v8, v6

    iput-wide v8, p2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 1043
    return-void
.end method


# virtual methods
.method public addIfaceValues(Ljava/lang/String;JJJJ)Landroid/net/NetworkStats;
    .locals 16
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "rxBytes"    # J
    .param p4, "rxPackets"    # J
    .param p6, "txBytes"    # J
    .param p8, "txPackets"    # J

    .prologue
    .line 269
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    .line 268
    invoke-virtual/range {v1 .. v15}, Landroid/net/NetworkStats;->addValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .locals 6
    .param p1, "entry"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 291
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    iget v2, p0, Landroid/net/NetworkStats;->capacity:I

    if-lt v1, v2, :cond_0

    .line 292
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v0, v1, 0x2

    .line 293
    .local v0, "newLength":I
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    .line 294
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    .line 295
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->set:[I

    .line 296
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    .line 297
    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    .line 298
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    .line 299
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    .line 300
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    .line 301
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    .line 302
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    .line 303
    iput v0, p0, Landroid/net/NetworkStats;->capacity:I

    .line 306
    .end local v0    # "newLength":I
    :cond_0
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-object v3, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 307
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->uid:I

    aput v3, v1, v2

    .line 308
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->set:I

    aput v3, v1, v2

    .line 309
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->tag:I

    aput v3, v1, v2

    .line 310
    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->roaming:I

    aput v3, v1, v2

    .line 311
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    aput-wide v4, v1, v2

    .line 312
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    aput-wide v4, v1, v2

    .line 313
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    aput-wide v4, v1, v2

    .line 314
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    aput-wide v4, v1, v2

    .line 315
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    iget v2, p0, Landroid/net/NetworkStats;->size:I

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->operations:J

    aput-wide v4, v1, v2

    .line 316
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/NetworkStats;->size:I

    .line 318
    return-object p0
.end method

.method public addValues(Ljava/lang/String;IIIIJJJJJ)Landroid/net/NetworkStats;
    .locals 18
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "roaming"    # I
    .param p6, "rxBytes"    # J
    .param p8, "rxPackets"    # J
    .param p10, "txBytes"    # J
    .param p12, "txPackets"    # J
    .param p14, "operations"    # J

    .prologue
    .line 282
    new-instance v2, Landroid/net/NetworkStats$Entry;

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    move-wide/from16 v16, p14

    invoke-direct/range {v2 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIJJJJJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v2

    return-object v2
.end method

.method public addValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    .locals 19
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "rxBytes"    # J
    .param p7, "rxPackets"    # J
    .param p9, "txBytes"    # J
    .param p11, "txPackets"    # J
    .param p13, "operations"    # J

    .prologue
    .line 275
    new-instance v3, Landroid/net/NetworkStats$Entry;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    invoke-direct/range {v3 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v2

    return-object v2
.end method

.method public clone()Landroid/net/NetworkStats;
    .locals 6

    .prologue
    .line 256
    new-instance v0, Landroid/net/NetworkStats;

    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    iget v3, p0, Landroid/net/NetworkStats;->size:I

    invoke-direct {v0, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 257
    .local v0, "clone":Landroid/net/NetworkStats;
    const/4 v1, 0x0

    .line 258
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .end local v1    # "entry":Landroid/net/NetworkStats$Entry;
    .local v2, "i":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_0

    .line 259
    invoke-virtual {p0, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 260
    .local v1, "entry":Landroid/net/NetworkStats$Entry;
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 258
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 262
    .end local v1    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p0}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public combineAllValues(Landroid/net/NetworkStats;)V
    .locals 3
    .param p1, "another"    # Landroid/net/NetworkStats;

    .prologue
    .line 402
    const/4 v0, 0x0

    .line 403
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    .end local v0    # "entry":Landroid/net/NetworkStats$Entry;
    .local v1, "i":I
    :goto_0
    iget v2, p1, Landroid/net/NetworkStats;->size:I

    if-ge v1, v2, :cond_0

    .line 404
    invoke-virtual {p1, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 405
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 403
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 401
    .end local v0    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_0
    return-void
.end method

.method public combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;
    .locals 7
    .param p1, "entry"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 384
    iget-object v1, p1, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    iget v2, p1, Landroid/net/NetworkStats$Entry;->uid:I

    iget v3, p1, Landroid/net/NetworkStats$Entry;->set:I

    iget v4, p1, Landroid/net/NetworkStats$Entry;->tag:I

    iget v5, p1, Landroid/net/NetworkStats$Entry;->roaming:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIII)I

    move-result v6

    .line 385
    .local v6, "i":I
    const/4 v0, -0x1

    if-ne v6, v0, :cond_0

    .line 387
    invoke-virtual {p0, p1}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 395
    :goto_0
    return-object p0

    .line 389
    :cond_0
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v0, v6

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    add-long/2addr v2, v4

    aput-wide v2, v0, v6

    .line 390
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v0, v6

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    add-long/2addr v2, v4

    aput-wide v2, v0, v6

    .line 391
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v0, v6

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v2, v4

    aput-wide v2, v0, v6

    .line 392
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v0, v6

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->txPackets:J

    add-long/2addr v2, v4

    aput-wide v2, v0, v6

    .line 393
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v0, v6

    iget-wide v4, p1, Landroid/net/NetworkStats$Entry;->operations:J

    add-long/2addr v2, v4

    aput-wide v2, v0, v6

    goto :goto_0
.end method

.method public combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;
    .locals 19
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "rxBytes"    # J
    .param p7, "rxPackets"    # J
    .param p9, "txBytes"    # J
    .param p11, "txPackets"    # J
    .param p13, "operations"    # J

    .prologue
    .line 374
    new-instance v3, Landroid/net/NetworkStats$Entry;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    invoke-direct/range {v3 .. v17}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIJJJJJ)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    move-result-object v2

    return-object v2
.end method

.method public combineValues(Ljava/lang/String;IIJJJJJ)Landroid/net/NetworkStats;
    .locals 16
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "tag"    # I
    .param p4, "rxBytes"    # J
    .param p6, "rxPackets"    # J
    .param p8, "txBytes"    # J
    .param p10, "txPackets"    # J
    .param p12, "operations"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 368
    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    .line 367
    invoke-virtual/range {v1 .. v15}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 857
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 756
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 757
    const-string/jumbo v1, "NetworkStats: elapsedRealtime="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 758
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_0

    .line 759
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 760
    const-string/jumbo v1, "  ["

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, "]"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 761
    const-string/jumbo v1, " iface="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 762
    const-string/jumbo v1, " uid="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, v0

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 763
    const-string/jumbo v1, " set="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->setToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 764
    const-string/jumbo v1, " tag="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->tagToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 765
    const-string/jumbo v1, " roaming="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v1, v1, v0

    invoke-static {v1}, Landroid/net/NetworkStats;->roamingToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 766
    const-string/jumbo v1, " rxBytes="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 767
    const-string/jumbo v1, " rxPackets="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 768
    const-string/jumbo v1, " txBytes="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 769
    const-string/jumbo v1, " txPackets="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 770
    const-string/jumbo v1, " operations="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v1, v0

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 758
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 755
    :cond_0
    return-void
.end method

.method public findIndex(Ljava/lang/String;IIII)I
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "roaming"    # I

    .prologue
    .line 413
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    if-ge v0, v1, :cond_1

    .line 414
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, v0

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, v0

    if-ne p3, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, v0

    if-ne p4, v1, :cond_0

    .line 415
    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v1, v1, v0

    if-ne p5, v1, :cond_0

    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 414
    if-eqz v1, :cond_0

    .line 416
    return v0

    .line 413
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public findIndexHinted(Ljava/lang/String;IIIII)I
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I
    .param p5, "roaming"    # I
    .param p6, "hintIndex"    # I

    .prologue
    .line 429
    const/4 v2, 0x0

    .local v2, "offset":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v2, v3, :cond_2

    .line 430
    div-int/lit8 v0, v2, 0x2

    .line 434
    .local v0, "halfOffset":I
    rem-int/lit8 v3, v2, 0x2

    if-nez v3, :cond_0

    .line 435
    add-int v3, p6, v0

    iget v4, p0, Landroid/net/NetworkStats;->size:I

    rem-int v1, v3, v4

    .line 440
    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v1

    if-ne p2, v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->set:[I

    aget v3, v3, v1

    if-ne p3, v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v1

    if-ne p4, v3, :cond_1

    .line 441
    iget-object v3, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v3, v3, v1

    if-ne p5, v3, :cond_1

    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 440
    if-eqz v3, :cond_1

    .line 442
    return v1

    .line 437
    .end local v1    # "i":I
    :cond_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    add-int/2addr v3, p6

    sub-int/2addr v3, v0

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Landroid/net/NetworkStats;->size:I

    rem-int v1, v3, v4

    .restart local v1    # "i":I
    goto :goto_1

    .line 429
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 445
    .end local v0    # "halfOffset":I
    .end local v1    # "i":I
    :cond_2
    const/4 v3, -0x1

    return v3
.end method

.method public getElapsedRealtime()J
    .locals 2

    .prologue
    .line 340
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    return-wide v0
.end method

.method public getElapsedRealtimeAge()J
    .locals 4

    .prologue
    .line 352
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 3
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 507
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;I)Landroid/net/NetworkStats$Entry;
    .locals 2
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;
    .param p2, "limitUid"    # I

    .prologue
    .line 515
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;)Landroid/net/NetworkStats$Entry;
    .locals 2
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkStats$Entry;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/NetworkStats$Entry;"
        }
    .end annotation

    .prologue
    .line 523
    .local p2, "limitIface":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotalBytes()J
    .locals 6

    .prologue
    .line 499
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 500
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    iget-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v2, v4

    return-wide v2
.end method

.method public getTotalIncludingTags(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 3
    .param p1, "recycle"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 527
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;IZ)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    return-object v0
.end method

.method public getTotalPackets()J
    .locals 8

    .prologue
    .line 574
    const-wide/16 v2, 0x0

    .line 575
    .local v2, "total":J
    iget v1, p0, Landroid/net/NetworkStats;->size:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 576
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v4, v1, v0

    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v6, v1, v0

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 575
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 578
    :cond_0
    return-wide v2
.end method

.method public getUniqueIfaces()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 468
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 469
    .local v1, "ifaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 470
    .local v0, "iface":Ljava/lang/String;
    sget-object v5, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    if-eq v0, v5, :cond_0

    .line 471
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 469
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 474
    .end local v0    # "iface":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public getUniqueUids()[I
    .locals 9

    .prologue
    .line 481
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 482
    .local v4, "uids":Landroid/util/SparseBooleanArray;
    iget-object v6, p0, Landroid/net/NetworkStats;->uid:[I

    const/4 v5, 0x0

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_0

    aget v3, v6, v5

    .line 483
    .local v3, "uid":I
    const/4 v8, 0x1

    invoke-virtual {v4, v3, v8}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 482
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 486
    .end local v3    # "uid":I
    :cond_0
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 487
    .local v2, "size":I
    new-array v1, v2, [I

    .line 488
    .local v1, "result":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 489
    invoke-virtual {v4, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    aput v5, v1, v0

    .line 488
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 491
    :cond_1
    return-object v1
.end method

.method public getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;
    .locals 4
    .param p1, "i"    # I
    .param p2, "recycle"    # Landroid/net/NetworkStats$Entry;

    .prologue
    .line 325
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 326
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    :goto_0
    iget-object v1, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v1, p1

    iput-object v1, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 327
    iget-object v1, p0, Landroid/net/NetworkStats;->uid:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 328
    iget-object v1, p0, Landroid/net/NetworkStats;->set:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 329
    iget-object v1, p0, Landroid/net/NetworkStats;->tag:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 330
    iget-object v1, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v1, v1, p1

    iput v1, v0, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 331
    iget-object v1, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 332
    iget-object v1, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 333
    iget-object v1, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 334
    iget-object v1, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 335
    iget-object v1, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v1, p1

    iput-wide v2, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 336
    return-object v0

    .line 325
    .end local v0    # "entry":Landroid/net/NetworkStats$Entry;
    :cond_0
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .restart local v0    # "entry":Landroid/net/NetworkStats$Entry;
    goto :goto_0
.end method

.method public groupedByIface()Landroid/net/NetworkStats;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 684
    new-instance v2, Landroid/net/NetworkStats;

    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v3, 0xa

    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 686
    .local v2, "stats":Landroid/net/NetworkStats;
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 687
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    iput v6, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 688
    iput v6, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 689
    iput v7, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 690
    iput v6, v0, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 691
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 693
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v3, :cond_1

    .line 695
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    .line 693
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 697
    :cond_0
    iget-object v3, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v3, v3, v1

    iput-object v3, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 698
    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 699
    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 700
    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 701
    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 702
    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_1

    .line 705
    :cond_1
    return-object v2
.end method

.method public groupedByUid()Landroid/net/NetworkStats;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 713
    new-instance v2, Landroid/net/NetworkStats;

    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v3, 0xa

    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 715
    .local v2, "stats":Landroid/net/NetworkStats;
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 716
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    sget-object v3, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v3, v0, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 717
    iput v6, v0, Landroid/net/NetworkStats$Entry;->set:I

    .line 718
    iput v7, v0, Landroid/net/NetworkStats$Entry;->tag:I

    .line 719
    iput v6, v0, Landroid/net/NetworkStats$Entry;->roaming:I

    .line 721
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v3, :cond_1

    .line 723
    iget-object v3, p0, Landroid/net/NetworkStats;->tag:[I

    aget v3, v3, v1

    if-eqz v3, :cond_0

    .line 721
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 725
    :cond_0
    iget-object v3, p0, Landroid/net/NetworkStats;->uid:[I

    aget v3, v3, v1

    iput v3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    .line 726
    iget-object v3, p0, Landroid/net/NetworkStats;->rxBytes:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 727
    iget-object v3, p0, Landroid/net/NetworkStats;->rxPackets:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 728
    iget-object v3, p0, Landroid/net/NetworkStats;->txBytes:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 729
    iget-object v3, p0, Landroid/net/NetworkStats;->txPackets:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 730
    iget-object v3, p0, Landroid/net/NetworkStats;->operations:[J

    aget-wide v4, v3, v1

    iput-wide v4, v0, Landroid/net/NetworkStats$Entry;->operations:J

    .line 731
    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    goto :goto_1

    .line 734
    :cond_1
    return-object v2
.end method

.method public internalSize()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Landroid/net/NetworkStats;->capacity:I

    return v0
.end method

.method public migrateTun(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .param p1, "tunUid"    # I
    .param p2, "tunIface"    # Ljava/lang/String;
    .param p3, "underlyingIface"    # Ljava/lang/String;

    .prologue
    .line 895
    new-instance v5, Landroid/net/NetworkStats$Entry;

    invoke-direct {v5}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 896
    .local v5, "tunIfaceTotal":Landroid/net/NetworkStats$Entry;
    new-instance v6, Landroid/net/NetworkStats$Entry;

    invoke-direct {v6}, Landroid/net/NetworkStats$Entry;-><init>()V

    .local v6, "underlyingIfaceTotal":Landroid/net/NetworkStats$Entry;
    move-object v1, p0

    move v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 898
    invoke-direct/range {v1 .. v6}, Landroid/net/NetworkStats;->tunAdjustmentInit(ILjava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)V

    .line 903
    invoke-static {v5, v6}, Landroid/net/NetworkStats;->tunGetPool(Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v12

    .line 904
    .local v12, "pool":Landroid/net/NetworkStats$Entry;
    invoke-virtual {v12}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 905
    const/4 v1, 0x1

    return v1

    :cond_0
    move-object v7, p0

    move v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object v11, v5

    .line 908
    invoke-direct/range {v7 .. v12}, Landroid/net/NetworkStats;->addTrafficToApplications(ILjava/lang/String;Ljava/lang/String;Landroid/net/NetworkStats$Entry;Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v13

    .line 909
    .local v13, "moved":Landroid/net/NetworkStats$Entry;
    move-object/from16 v0, p3

    invoke-direct {p0, p1, v0, v13}, Landroid/net/NetworkStats;->deductTrafficFromVpnApp(ILjava/lang/String;Landroid/net/NetworkStats$Entry;)V

    .line 911
    invoke-virtual {v13}, Landroid/net/NetworkStats$Entry;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 912
    const-string/jumbo v1, "NetworkStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to deduct underlying network traffic from VPN package. Moved="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const/4 v1, 0x0

    return v1

    .line 916
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public setElapsedRealtime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 344
    iput-wide p1, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    .line 343
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    return v0
.end method

.method public spliceOperationsFrom(Landroid/net/NetworkStats;)V
    .locals 8
    .param p1, "stats"    # Landroid/net/NetworkStats;

    .prologue
    .line 454
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    if-ge v6, v0, :cond_1

    .line 455
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    aget-object v1, v0, v6

    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    aget v2, v0, v6

    iget-object v0, p0, Landroid/net/NetworkStats;->set:[I

    aget v3, v0, v6

    iget-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    aget v4, v0, v6

    iget-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    aget v5, v0, v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/net/NetworkStats;->findIndex(Ljava/lang/String;IIII)I

    move-result v7

    .line 456
    .local v7, "j":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_0

    .line 457
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v6

    .line 454
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 459
    :cond_0
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    iget-object v1, p1, Landroid/net/NetworkStats;->operations:[J

    aget-wide v2, v1, v7

    aput-wide v2, v0, v6

    goto :goto_1

    .line 453
    .end local v7    # "j":I
    :cond_1
    return-void
.end method

.method public subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 1
    .param p1, "right"    # Landroid/net/NetworkStats;

    .prologue
    const/4 v0, 0x0

    .line 587
    invoke-static {p0, p1, v0, v0}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/net/NetworkStats$NonMonotonicObserver;Ljava/lang/Object;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 850
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 851
    .local v0, "writer":Ljava/io/CharArrayWriter;
    const-string/jumbo v1, ""

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1, v2}, Landroid/net/NetworkStats;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 852
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withoutUids([I)Landroid/net/NetworkStats;
    .locals 6
    .param p1, "uids"    # [I

    .prologue
    .line 742
    new-instance v2, Landroid/net/NetworkStats;

    iget-wide v4, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    const/16 v3, 0xa

    invoke-direct {v2, v4, v5, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 744
    .local v2, "stats":Landroid/net/NetworkStats;
    new-instance v0, Landroid/net/NetworkStats$Entry;

    invoke-direct {v0}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 745
    .local v0, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/net/NetworkStats;->size:I

    if-ge v1, v3, :cond_1

    .line 746
    invoke-virtual {p0, v1, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 747
    iget v3, v0, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {p1, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 748
    invoke-virtual {v2, v0}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 745
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 752
    :cond_1
    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 239
    iget-wide v0, p0, Landroid/net/NetworkStats;->elapsedRealtime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 240
    iget v0, p0, Landroid/net/NetworkStats;->size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    iget v0, p0, Landroid/net/NetworkStats;->capacity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    iget-object v0, p0, Landroid/net/NetworkStats;->iface:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Landroid/net/NetworkStats;->uid:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 244
    iget-object v0, p0, Landroid/net/NetworkStats;->set:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 245
    iget-object v0, p0, Landroid/net/NetworkStats;->tag:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 246
    iget-object v0, p0, Landroid/net/NetworkStats;->roaming:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 247
    iget-object v0, p0, Landroid/net/NetworkStats;->rxBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 248
    iget-object v0, p0, Landroid/net/NetworkStats;->rxPackets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 249
    iget-object v0, p0, Landroid/net/NetworkStats;->txBytes:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 250
    iget-object v0, p0, Landroid/net/NetworkStats;->txPackets:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 251
    iget-object v0, p0, Landroid/net/NetworkStats;->operations:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 238
    return-void
.end method
