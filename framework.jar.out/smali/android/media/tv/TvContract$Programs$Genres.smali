.class public final Landroid/media/tv/TvContract$Programs$Genres;
.super Ljava/lang/Object;
.source "TvContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvContract$Programs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Genres"
.end annotation


# static fields
.field public static final ANIMAL_WILDLIFE:Ljava/lang/String; = "ANIMAL_WILDLIFE"

.field public static final ARTS:Ljava/lang/String; = "ARTS"

.field private static final CANONICAL_GENRES:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final COMEDY:Ljava/lang/String; = "COMEDY"

.field private static final COMMA:C = ','

.field private static final DELIMITER:Ljava/lang/String; = ","

.field private static final DOUBLE_QUOTE:C = '\"'

.field public static final DRAMA:Ljava/lang/String; = "DRAMA"

.field public static final EDUCATION:Ljava/lang/String; = "EDUCATION"

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final ENTERTAINMENT:Ljava/lang/String; = "ENTERTAINMENT"

.field public static final FAMILY_KIDS:Ljava/lang/String; = "FAMILY_KIDS"

.field public static final GAMING:Ljava/lang/String; = "GAMING"

.field public static final LIFE_STYLE:Ljava/lang/String; = "LIFE_STYLE"

.field public static final MOVIES:Ljava/lang/String; = "MOVIES"

.field public static final MUSIC:Ljava/lang/String; = "MUSIC"

.field public static final NEWS:Ljava/lang/String; = "NEWS"

.field public static final PREMIER:Ljava/lang/String; = "PREMIER"

.field public static final SHOPPING:Ljava/lang/String; = "SHOPPING"

.field public static final SPORTS:Ljava/lang/String; = "SPORTS"

.field public static final TECH_SCIENCE:Ljava/lang/String; = "TECH_SCIENCE"

.field public static final TRAVEL:Ljava/lang/String; = "TRAVEL"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1468
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    .line 1470
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string/jumbo v1, "FAMILY_KIDS"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1471
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string/jumbo v1, "SPORTS"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1472
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string/jumbo v1, "SHOPPING"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1473
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string/jumbo v1, "MOVIES"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1474
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string/jumbo v1, "COMEDY"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1475
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string/jumbo v1, "TRAVEL"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1476
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string/jumbo v1, "DRAMA"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1477
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string/jumbo v1, "EDUCATION"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1478
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string/jumbo v1, "ANIMAL_WILDLIFE"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1479
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string/jumbo v1, "NEWS"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1480
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string/jumbo v1, "GAMING"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1481
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string/jumbo v1, "ARTS"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1482
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string/jumbo v1, "ENTERTAINMENT"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1483
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string/jumbo v1, "LIFE_STYLE"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1484
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string/jumbo v1, "MUSIC"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1485
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string/jumbo v1, "PREMIER"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1486
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    const-string/jumbo v1, "TECH_SCIENCE"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1493
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/media/tv/TvContract$Programs$Genres;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 1416
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p0, "genres"    # Ljava/lang/String;

    .prologue
    const/4 v8, -0x1

    const/4 v9, 0x0

    .line 1544
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1546
    sget-object v7, Landroid/media/tv/TvContract$Programs$Genres;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v7

    .line 1548
    :cond_0
    const/16 v7, 0x2c

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v7, v8, :cond_1

    const/16 v7, 0x22

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v7, v8, :cond_1

    .line 1549
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    return-object v7

    .line 1551
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1552
    .local v5, "sb":Ljava/lang/StringBuilder;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1553
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1554
    .local v3, "length":I
    const/4 v1, 0x0

    .line 1555
    .local v1, "escape":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_4

    .line 1556
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1557
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 1575
    :cond_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1576
    const/4 v1, 0x0

    .line 1555
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1559
    :sswitch_0
    if-nez v1, :cond_2

    .line 1560
    const/4 v1, 0x1

    .line 1561
    goto :goto_1

    .line 1565
    :sswitch_1
    if-nez v1, :cond_2

    .line 1566
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1567
    .local v6, "string":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 1568
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1570
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1571
    .restart local v5    # "sb":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 1578
    .end local v0    # "c":C
    .end local v6    # "string":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1579
    .restart local v6    # "string":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 1580
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1582
    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v4, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    return-object v7

    .line 1557
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2c -> :sswitch_1
    .end sparse-switch
.end method

.method public static varargs encode([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "genres"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1505
    if-nez p0, :cond_0

    .line 1507
    return-object v3

    .line 1509
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1510
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, ""

    .line 1511
    .local v2, "separator":Ljava/lang/String;
    const/4 v3, 0x0

    array-length v4, p0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, p0, v3

    .line 1512
    .local v0, "genre":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/media/tv/TvContract$Programs$Genres;->encodeToCsv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1513
    const-string/jumbo v2, ","

    .line 1511
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1515
    .end local v0    # "genre":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static encodeToCsv(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "genre"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x22

    .line 1519
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1520
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1521
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1522
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1523
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 1531
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1521
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1525
    :sswitch_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1528
    :sswitch_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1533
    .end local v0    # "c":C
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1523
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x2c -> :sswitch_1
    .end sparse-switch
.end method

.method public static isCanonical(Ljava/lang/String;)Z
    .locals 1
    .param p0, "genre"    # Ljava/lang/String;

    .prologue
    .line 1592
    sget-object v0, Landroid/media/tv/TvContract$Programs$Genres;->CANONICAL_GENRES:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
