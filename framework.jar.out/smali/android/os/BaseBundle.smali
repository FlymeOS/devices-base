.class public Landroid/os/BaseBundle;
.super Ljava/lang/Object;
.source "BaseBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BaseBundle$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field static final BUNDLE_MAGIC:I = 0x4c444e42

.field static final DEBUG:Z = false

.field static final FLAG_DEFUSABLE:I = 0x1

.field private static final LOG_DEFUSABLE:Z = false

.field private static final TAG:Ljava/lang/String; = "Bundle"

.field private static volatile sShouldDefuse:Z


# instance fields
.field private mClassLoader:Ljava/lang/ClassLoader;

.field mFlags:I

.field mMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mParcelledData:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/BaseBundle;->sShouldDefuse:Z

    .line 34
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/ClassLoader;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;I)V

    .line 113
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 149
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/ClassLoader;

    invoke-direct {p0, v0, p1}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;I)V

    .line 148
    return-void
.end method

.method constructor <init>(Landroid/os/BaseBundle;)V
    .locals 5
    .param p1, "b"    # Landroid/os/BaseBundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 86
    iput-object v3, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 159
    iget-object v0, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmptyParcel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    sget-object v0, Landroid/os/BaseBundle$NoImagePreloadHolder;->EMPTY_PARCEL:Landroid/os/Parcel;

    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 171
    :goto_0
    iget-object v0, p1, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2

    .line 172
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 177
    :goto_1
    iget-object v0, p1, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    iput-object v0, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 158
    return-void

    .line 163
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 164
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v1, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    iget-object v2, p1, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->dataSize()I

    move-result v2

    invoke-virtual {v0, v1, v4, v2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 165
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0

    .line 168
    :cond_1
    iput-object v3, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    goto :goto_0

    .line 174
    :cond_2
    iput-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    goto :goto_1
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcelledData"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 86
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 124
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;)V

    .line 123
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcelledData"    # Landroid/os/Parcel;
    .param p2, "length"    # I

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 86
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 128
    invoke-direct {p0, p1, p2}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    .line 127
    return-void
.end method

.method constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/BaseBundle;-><init>(Ljava/lang/ClassLoader;I)V

    .line 138
    return-void
.end method

.method constructor <init>(Ljava/lang/ClassLoader;I)V
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .param p2, "capacity"    # I

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 86
    iput-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 105
    if-lez p2, :cond_1

    .line 106
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, p2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 105
    :goto_0
    iput-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 107
    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/os/BaseBundle;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .end local p1    # "loader":Ljava/lang/ClassLoader;
    :cond_0
    iput-object p1, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 104
    return-void

    .line 106
    .restart local p1    # "loader":Ljava/lang/ClassLoader;
    :cond_1
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    goto :goto_0
.end method

.method private readFromParcelInner(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "length"    # I

    .prologue
    const/4 v4, 0x0

    .line 1432
    if-gez p2, :cond_0

    .line 1433
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bad length in parcel: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1435
    :cond_0
    if-nez p2, :cond_1

    .line 1437
    sget-object v3, Landroid/os/BaseBundle$NoImagePreloadHolder;->EMPTY_PARCEL:Landroid/os/Parcel;

    iput-object v3, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 1438
    return-void

    .line 1441
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1442
    .local v0, "magic":I
    const v3, 0x4c444e42    # 5.146036E7f

    if-eq v0, v3, :cond_2

    .line 1443
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Bad magic number for Bundle: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1444
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 1443
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1448
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 1449
    .local v1, "offset":I
    invoke-static {v1, p2}, Landroid/util/MathUtils;->addOrThrow(II)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1451
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1452
    .local v2, "p":Landroid/os/Parcel;
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1453
    invoke-virtual {v2, p1, v1, p2}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 1456
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1458
    iput-object v2, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 1431
    return-void
.end method

.method public static setShouldDefuse(Z)V
    .locals 0
    .param p0, "shouldDefuse"    # Z

    .prologue
    .line 65
    sput-boolean p0, Landroid/os/BaseBundle;->sShouldDefuse:Z

    .line 64
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 330
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 328
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 341
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 342
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 353
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 354
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 694
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 697
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 731
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 732
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 733
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 734
    return p2

    .line 737
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 738
    :catch_0
    move-exception v6

    .line 739
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v4, "Boolean"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 740
    return p2
.end method

.method public getBooleanArray(Ljava/lang/String;)[Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1156
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1157
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1158
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1159
    return-object v3

    .line 1162
    :cond_0
    :try_start_0
    check-cast v1, [Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1163
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1164
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "byte[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1165
    return-object v3
.end method

.method getByte(Ljava/lang/String;)B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 752
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 753
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method getByte(Ljava/lang/String;B)Ljava/lang/Byte;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # B

    .prologue
    .line 765
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 766
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 767
    .local v2, "o":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 768
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 771
    :cond_0
    :try_start_0
    check-cast v2, Ljava/lang/Byte;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "o":Ljava/lang/Object;
    return-object v2

    .line 772
    .restart local v2    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v5

    .line 773
    .local v5, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "Byte"

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 774
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method getByteArray(Ljava/lang/String;)[B
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1179
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1180
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1181
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1182
    return-object v3

    .line 1185
    :cond_0
    :try_start_0
    check-cast v1, [B
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1186
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1187
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "byte[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1188
    return-object v3
.end method

.method getChar(Ljava/lang/String;)C
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 786
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 787
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getChar(Ljava/lang/String;C)C

    move-result v0

    return v0
.end method

.method getChar(Ljava/lang/String;C)C
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # C

    .prologue
    .line 799
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 800
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 801
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 802
    return p2

    .line 805
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Character;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 806
    :catch_0
    move-exception v6

    .line 807
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v4, "Character"

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 808
    return p2
.end method

.method getCharArray(Ljava/lang/String;)[C
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1225
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1226
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1227
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1228
    return-object v3

    .line 1231
    :cond_0
    :try_start_0
    check-cast v1, [C
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1232
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1233
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "char[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1234
    return-object v3
.end method

.method getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1028
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1029
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1031
    .local v1, "o":Ljava/lang/Object;
    :try_start_0
    check-cast v1, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1032
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1033
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "CharSequence"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1034
    const/4 v2, 0x0

    return-object v2
.end method

.method getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/CharSequence;

    .prologue
    .line 1050
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1051
    .local v0, "cs":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .end local p2    # "defaultValue":Ljava/lang/CharSequence;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/CharSequence;
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1363
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1364
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1365
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1366
    return-object v3

    .line 1369
    :cond_0
    :try_start_0
    check-cast v1, [Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1370
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1371
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "CharSequence[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1372
    return-object v3
.end method

.method getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1133
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1134
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1135
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1136
    return-object v3

    .line 1139
    :cond_0
    :try_start_0
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1140
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1141
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "ArrayList<CharSequence>"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1142
    return-object v3
.end method

.method getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 956
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 957
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 969
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 970
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 971
    .local v4, "o":Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 972
    return-wide p2

    .line 975
    :cond_0
    :try_start_0
    move-object v0, v4

    check-cast v0, Ljava/lang/Double;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 976
    :catch_0
    move-exception v7

    .line 977
    .local v7, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v5, "Double"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 978
    return-wide p2
.end method

.method public getDoubleArray(Ljava/lang/String;)[D
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1317
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1318
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1319
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1320
    return-object v3

    .line 1323
    :cond_0
    :try_start_0
    check-cast v1, [D
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1324
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1325
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "double[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1326
    return-object v3
.end method

.method getFloat(Ljava/lang/String;)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 922
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 923
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method getFloat(Ljava/lang/String;F)F
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .prologue
    .line 935
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 936
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 937
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 938
    return p2

    .line 941
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Float;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 942
    :catch_0
    move-exception v6

    .line 943
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v4, "Float"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 944
    return p2
.end method

.method getFloatArray(Ljava/lang/String;)[F
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1294
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1295
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1296
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1297
    return-object v3

    .line 1300
    :cond_0
    :try_start_0
    check-cast v1, [F
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1301
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1302
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "float[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1303
    return-object v3
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 854
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 855
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 867
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 868
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 869
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 870
    return p2

    .line 873
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 874
    :catch_0
    move-exception v6

    .line 875
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v4, "Integer"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 876
    return p2
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1248
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1249
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1250
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1251
    return-object v3

    .line 1254
    :cond_0
    :try_start_0
    check-cast v1, [I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1255
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1256
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "int[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1257
    return-object v3
.end method

.method getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1087
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1088
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1089
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1090
    return-object v3

    .line 1093
    :cond_0
    :try_start_0
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1094
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1095
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "ArrayList<Integer>"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1096
    return-object v3
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 888
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 889
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 901
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 902
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 903
    .local v4, "o":Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 904
    return-wide p2

    .line 907
    :cond_0
    :try_start_0
    move-object v0, v4

    check-cast v0, Ljava/lang/Long;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 908
    :catch_0
    move-exception v7

    .line 909
    .local v7, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v5, "Long"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 910
    return-wide p2
.end method

.method public getLongArray(Ljava/lang/String;)[J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1271
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1272
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1273
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1274
    return-object v3

    .line 1277
    :cond_0
    :try_start_0
    check-cast v1, [J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1278
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1279
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "long[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1280
    return-object v3
.end method

.method getMap()Landroid/util/ArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 304
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getPairValue()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 190
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 191
    iget-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 192
    .local v2, "size":I
    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 193
    const-string/jumbo v3, "Bundle"

    const-string/jumbo v4, "getPairValue() used on Bundle with multiple pairs."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_0
    if-nez v2, :cond_1

    .line 196
    return-object v6

    .line 198
    :cond_1
    iget-object v3, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 200
    .local v1, "o":Ljava/lang/Object;
    :try_start_0
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 201
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v3, "getPairValue()"

    const-string/jumbo v4, "String"

    invoke-virtual {p0, v3, v1, v4, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 203
    return-object v6
.end method

.method getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1064
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1065
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1066
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1067
    return-object v3

    .line 1070
    :cond_0
    :try_start_0
    check-cast v1, Ljava/io/Serializable;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1071
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1072
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "Serializable"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1073
    return-object v3
.end method

.method getShort(Ljava/lang/String;)S
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 820
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 821
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getShort(Ljava/lang/String;S)S

    move-result v0

    return v0
.end method

.method getShort(Ljava/lang/String;S)S
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # S

    .prologue
    .line 833
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 834
    iget-object v1, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 835
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 836
    return p2

    .line 839
    :cond_0
    :try_start_0
    move-object v0, v3

    check-cast v0, Ljava/lang/Short;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 840
    :catch_0
    move-exception v6

    .line 841
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v4, "Short"

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 842
    return p2
.end method

.method getShortArray(Ljava/lang/String;)[S
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1202
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1203
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1204
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1205
    return-object v3

    .line 1208
    :cond_0
    :try_start_0
    check-cast v1, [S
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1209
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1210
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "short[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1211
    return-object v3
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 992
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 993
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 995
    .local v1, "o":Ljava/lang/Object;
    :try_start_0
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 996
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 997
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "String"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 998
    const/4 v2, 0x0

    return-object v2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 1014
    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1015
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1340
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1341
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1342
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1343
    return-object v3

    .line 1346
    :cond_0
    :try_start_0
    check-cast v1, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1347
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1348
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "String[]"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1349
    return-object v3
.end method

.method getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1110
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 1111
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1112
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 1113
    return-object v3

    .line 1116
    :cond_0
    :try_start_0
    check-cast v1, Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "o":Ljava/lang/Object;
    return-object v1

    .line 1117
    .restart local v1    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1118
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v2, "ArrayList<String>"

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V

    .line 1119
    return-object v3
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 321
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 322
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEmptyParcel()Z
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    sget-object v1, Landroid/os/BaseBundle$NoImagePreloadHolder;->EMPTY_PARCEL:Landroid/os/Parcel;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isParcelled()Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 394
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 395
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Landroid/os/PersistableBundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .prologue
    .line 373
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 374
    invoke-virtual {p1}, Landroid/os/PersistableBundle;->unparcel()V

    .line 375
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/os/PersistableBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 372
    return-void
.end method

.method putAll(Landroid/util/ArrayMap;)V
    .locals 1
    .param p1, "map"    # Landroid/util/ArrayMap;

    .prologue
    .line 384
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 385
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 383
    return-void
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 406
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 407
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    return-void
.end method

.method public putBooleanArray(Ljava/lang/String;[Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Z

    .prologue
    .line 574
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 575
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    return-void
.end method

.method putByte(Ljava/lang/String;B)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # B

    .prologue
    .line 418
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 419
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    return-void
.end method

.method putByteArray(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 586
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 587
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    return-void
.end method

.method putChar(Ljava/lang/String;C)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # C

    .prologue
    .line 430
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 431
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    return-void
.end method

.method putCharArray(Ljava/lang/String;[C)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [C

    .prologue
    .line 610
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 611
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    return-void
.end method

.method putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 514
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 515
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    return-void
.end method

.method putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/CharSequence;

    .prologue
    .line 682
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 683
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    return-void
.end method

.method putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 550
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 551
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 490
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 491
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    return-void
.end method

.method public putDoubleArray(Ljava/lang/String;[D)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [D

    .prologue
    .line 658
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 659
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    return-void
.end method

.method putFloat(Ljava/lang/String;F)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 478
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 479
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    return-void
.end method

.method putFloatArray(Ljava/lang/String;[F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [F

    .prologue
    .line 646
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 647
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 454
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 455
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    return-void
.end method

.method public putIntArray(Ljava/lang/String;[I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [I

    .prologue
    .line 622
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 623
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    return-void
.end method

.method putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 526
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 527
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 466
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 467
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    return-void
.end method

.method public putLongArray(Ljava/lang/String;[J)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [J

    .prologue
    .line 634
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 635
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    return-void
.end method

.method putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/io/Serializable;

    .prologue
    .line 562
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 563
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    return-void
.end method

.method putShort(Ljava/lang/String;S)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S

    .prologue
    .line 442
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 443
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    return-void
.end method

.method putShortArray(Ljava/lang/String;[S)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [S

    .prologue
    .line 598
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 599
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 502
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 503
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    return-void
.end method

.method public putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;

    .prologue
    .line 670
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 671
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    return-void
.end method

.method putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 538
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 539
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    return-void
.end method

.method readFromParcelInner(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 1427
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1428
    .local v0, "length":I
    invoke-direct {p0, p1, v0}, Landroid/os/BaseBundle;->readFromParcelInner(Landroid/os/Parcel;I)V

    .line 1424
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 363
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 364
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    return-void
.end method

.method setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 214
    iput-object p1, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    .line 213
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 313
    invoke-virtual {p0}, Landroid/os/BaseBundle;->unparcel()V

    .line 314
    iget-object v0, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/ClassCastException;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "e"    # Ljava/lang/ClassCastException;

    .prologue
    .line 719
    const-string/jumbo v4, "<null>"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/BaseBundle;->typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V

    .line 718
    return-void
.end method

.method typeWarning(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassCastException;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "className"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/Object;
    .param p5, "e"    # Ljava/lang/ClassCastException;

    .prologue
    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 704
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "Key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    const-string/jumbo v1, " expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    const-string/jumbo v1, " but value was a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    const-string/jumbo v1, ".  The default value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 712
    const-string/jumbo v1, " was returned."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    const-string/jumbo v1, "Bundle"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    const-string/jumbo v1, "Bundle"

    const-string/jumbo v2, "Attempt to cast generated internal exception:"

    invoke-static {v1, v2, p5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 702
    return-void
.end method

.method declared-synchronized unparcel()V
    .locals 6

    .prologue
    monitor-enter p0

    .line 229
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 230
    :try_start_1
    iget-object v3, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    .local v3, "parcelledData":Landroid/os/Parcel;
    if-nez v3, :cond_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 235
    return-void

    .line 243
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isEmptyParcel()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 246
    iget-object v4, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    if-nez v4, :cond_1

    .line 247
    new-instance v4, Landroid/util/ArrayMap;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v4, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 251
    :goto_0
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    .line 252
    return-void

    .line 249
    :cond_1
    :try_start_5
    iget-object v4, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->erase()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 229
    .end local v3    # "parcelledData":Landroid/os/Parcel;
    :catchall_0
    move-exception v4

    :try_start_6
    monitor-exit p0

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v4

    monitor-exit p0

    throw v4

    .line 255
    .restart local v3    # "parcelledData":Landroid/os/Parcel;
    :cond_2
    :try_start_7
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v0

    .line 258
    .local v0, "N":I
    if-gez v0, :cond_3

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit p0

    .line 259
    return-void

    .line 261
    :cond_3
    :try_start_9
    iget-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 262
    .local v2, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v2, :cond_4

    .line 263
    new-instance v2, Landroid/util/ArrayMap;

    .end local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v2, v0}, Landroid/util/ArrayMap;-><init>(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 269
    .restart local v2    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    :try_start_a
    iget-object v4, p0, Landroid/os/BaseBundle;->mClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v2, v0, v4}, Landroid/os/Parcel;->readArrayMapInternal(Landroid/util/ArrayMap;ILjava/lang/ClassLoader;)V
    :try_end_a
    .catch Landroid/os/BadParcelableException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 278
    :try_start_b
    iput-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 279
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 280
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_2
    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    monitor-exit p0

    .line 228
    return-void

    .line 265
    :cond_4
    :try_start_d
    invoke-virtual {v2}, Landroid/util/ArrayMap;->erase()V

    .line 266
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_1

    .line 270
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Landroid/os/BadParcelableException;
    :try_start_e
    sget-boolean v4, Landroid/os/BaseBundle;->sShouldDefuse:Z

    if-eqz v4, :cond_5

    .line 272
    const-string/jumbo v4, "Bundle"

    const-string/jumbo v5, "Failed to parse Bundle, but defusing quietly"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 273
    invoke-virtual {v2}, Landroid/util/ArrayMap;->erase()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 278
    :try_start_f
    iput-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 279
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 280
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_2

    .line 275
    :cond_5
    :try_start_10
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 277
    .end local v1    # "e":Landroid/os/BadParcelableException;
    :catchall_2
    move-exception v4

    .line 278
    :try_start_11
    iput-object v2, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    .line 279
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 280
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;

    .line 277
    throw v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
.end method

.method writeToParcelInner(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const v7, 0x4c444e42    # 5.146036E7f

    const/4 v6, 0x0

    .line 1385
    monitor-enter p0

    .line 1386
    :try_start_0
    iget-object v3, p0, Landroid/os/BaseBundle;->mParcelledData:Landroid/os/Parcel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v3, "parcelledData":Landroid/os/Parcel;
    monitor-exit p0

    .line 1388
    if-eqz v3, :cond_1

    .line 1389
    invoke-virtual {p0}, Landroid/os/BaseBundle;->isEmptyParcel()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1390
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1381
    :goto_0
    return-void

    .line 1385
    .end local v3    # "parcelledData":Landroid/os/Parcel;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1392
    .restart local v3    # "parcelledData":Landroid/os/Parcel;
    :cond_0
    invoke-virtual {v3}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    .line 1393
    .local v1, "length":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1394
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1395
    invoke-virtual {p1, v3, v6, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    goto :goto_0

    .line 1399
    .end local v1    # "length":I
    :cond_1
    iget-object v5, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-gtz v5, :cond_3

    .line 1400
    :cond_2
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1401
    return-void

    .line 1403
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    .line 1404
    .local v2, "lengthPos":I
    const/4 v5, -0x1

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1405
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1407
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    .line 1408
    .local v4, "startPos":I
    iget-object v5, p0, Landroid/os/BaseBundle;->mMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeArrayMapInternal(Landroid/util/ArrayMap;)V

    .line 1409
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 1412
    .local v0, "endPos":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1413
    sub-int v1, v0, v4

    .line 1414
    .restart local v1    # "length":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1415
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    goto :goto_0
.end method
