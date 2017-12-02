.class final Landroid/net/LinkProperties$1;
.super Ljava/lang/Object;
.source "LinkProperties.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/LinkProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkProperties;
    .locals 11
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v10, 0x0

    .line 1151
    new-instance v4, Landroid/net/LinkProperties;

    invoke-direct {v4}, Landroid/net/LinkProperties;-><init>()V

    .line 1153
    .local v4, "netProp":Landroid/net/LinkProperties;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1154
    .local v3, "iface":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1155
    invoke-virtual {v4, v3}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 1157
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1158
    .local v0, "addressCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1159
    invoke-virtual {p1, v10}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/LinkAddress;

    invoke-virtual {v4, v8}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 1158
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1161
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1162
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    .line 1164
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    invoke-static {v8}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1162
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1167
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 1168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 1169
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1171
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_3

    .line 1172
    invoke-virtual {p1, v10}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/RouteInfo;

    invoke-virtual {v4, v8}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 1171
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1174
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 1175
    invoke-virtual {p1, v10}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/ProxyInfo;

    invoke-virtual {v4, v8}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 1177
    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1178
    .local v7, "stackedLinks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/LinkProperties;>;"
    const-class v8, Landroid/net/LinkProperties;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 1179
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "stackedLink$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/LinkProperties;

    .line 1180
    .local v5, "stackedLink":Landroid/net/LinkProperties;
    invoke-virtual {v4, v5}, Landroid/net/LinkProperties;->addStackedLink(Landroid/net/LinkProperties;)Z

    goto :goto_4

    .line 1182
    .end local v5    # "stackedLink":Landroid/net/LinkProperties;
    :cond_5
    return-object v4

    .line 1165
    .end local v6    # "stackedLink$iterator":Ljava/util/Iterator;
    .end local v7    # "stackedLinks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/LinkProperties;>;"
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/net/UnknownHostException;
    goto :goto_2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1150
    invoke-virtual {p0, p1}, Landroid/net/LinkProperties$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/LinkProperties;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1186
    new-array v0, p1, [Landroid/net/LinkProperties;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1185
    invoke-virtual {p0, p1}, Landroid/net/LinkProperties$1;->newArray(I)[Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method
