.class public abstract Lcom/android/server/IntentResolver;
.super Ljava/lang/Object;
.source "IntentResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/IntentResolver$1;,
        Lcom/android/server/IntentResolver$IteratorWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Landroid/content/IntentFilter;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IntentResolver"

.field private static final localLOGV:Z

.field private static final localVerificationLOGV:Z

.field private static final mResolvePrioritySorter:Ljava/util/Comparator;


# instance fields
.field private final mActionToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mBaseTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mFilters:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<TF;>;"
        }
    .end annotation
.end field

.field private final mSchemeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mTypedActionToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field

.field private final mWildTypeToFilter:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 801
    new-instance v0, Lcom/android/server/IntentResolver$1;

    invoke-direct {v0}, Lcom/android/server/IntentResolver$1;-><init>()V

    sput-object v0, Lcom/android/server/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    .line 818
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    .line 825
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    .line 834
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    .line 839
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    .line 845
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    .line 850
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    .line 46
    return-void
.end method

.method private final addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 6
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    .local p3, "filter":Landroid/content/IntentFilter;, "TF;"
    const/4 v5, 0x0

    .line 545
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/IntentFilter;

    .line 546
    .local v1, "array":[Landroid/content/IntentFilter;, "[TF;"
    if-nez v1, :cond_0

    .line 547
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/server/IntentResolver;->newArray(I)[Landroid/content/IntentFilter;

    move-result-object v1

    .line 548
    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    aput-object p3, v1, v5

    .line 544
    :goto_0
    return-void

    .line 551
    :cond_0
    array-length v0, v1

    .line 552
    .local v0, "N":I
    move v2, v0

    .line 553
    .local v2, "i":I
    :goto_1
    if-lez v2, :cond_1

    add-int/lit8 v4, v2, -0x1

    aget-object v4, v1, v4

    if-nez v4, :cond_1

    .line 554
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 556
    :cond_1
    if-ge v2, v0, :cond_2

    .line 557
    aput-object p3, v1, v2

    goto :goto_0

    .line 559
    :cond_2
    mul-int/lit8 v4, v0, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v4}, Lcom/android/server/IntentResolver;->newArray(I)[Landroid/content/IntentFilter;

    move-result-object v3

    .line 560
    .local v3, "newa":[Landroid/content/IntentFilter;, "[TF;"
    invoke-static {v1, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 561
    aput-object p3, v3, v0

    .line 562
    invoke-virtual {p1, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V
    .locals 22
    .param p1, "intent"    # Landroid/content/Intent;
    .param p3, "debug"    # Z
    .param p4, "defaultOnly"    # Z
    .param p5, "resolvedType"    # Ljava/lang/String;
    .param p6, "scheme"    # Ljava/lang/String;
    .param p9, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/util/FastImmutableArraySet",
            "<",
            "Ljava/lang/String;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[TF;",
            "Ljava/util/List",
            "<TR;>;I)V"
        }
    .end annotation

    .prologue
    .line 699
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p2, "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    .local p7, "src":[Landroid/content/IntentFilter;, "[TF;"
    .local p8, "dest":Ljava/util/List;, "Ljava/util/List<TR;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 700
    .local v4, "action":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 701
    .local v7, "data":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v19

    .line 703
    .local v19, "packageName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isExcludingStopped()Z

    move-result v12

    .line 707
    .local v12, "excludingStopped":Z
    if-eqz p3, :cond_2

    .line 708
    new-instance v16, Landroid/util/LogPrinter;

    const-string/jumbo v5, "IntentResolver"

    const/4 v6, 0x2

    const/4 v8, 0x3

    move-object/from16 v0, v16

    invoke-direct {v0, v6, v5, v8}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;I)V

    .line 709
    .local v16, "logPrinter":Landroid/util/Printer;
    new-instance v15, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct/range {v15 .. v16}, Lcom/android/internal/util/FastPrintWriter;-><init>(Landroid/util/Printer;)V

    .line 715
    .end local v16    # "logPrinter":Landroid/util/Printer;
    :goto_0
    if-eqz p7, :cond_3

    move-object/from16 v0, p7

    array-length v10, v0

    .line 716
    .local v10, "N":I
    :goto_1
    const/4 v13, 0x0

    .line 719
    .local v13, "hasNonDefaults":Z
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-ge v14, v10, :cond_d

    aget-object v3, p7, v14

    .local v3, "filter":Landroid/content/IntentFilter;, "TF;"
    if-eqz v3, :cond_d

    .line 721
    if-eqz p3, :cond_0

    const-string/jumbo v5, "IntentResolver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Matching against filter "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_0
    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v3, v1}, Lcom/android/server/IntentResolver;->isFilterStopped(Landroid/content/IntentFilter;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 724
    if-eqz p3, :cond_1

    .line 725
    const-string/jumbo v5, "IntentResolver"

    const-string/jumbo v6, "  Filter\'s target is stopped; skipping"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    :cond_1
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 711
    .end local v3    # "filter":Landroid/content/IntentFilter;, "TF;"
    .end local v10    # "N":I
    .end local v13    # "hasNonDefaults":Z
    .end local v14    # "i":I
    :cond_2
    const/16 v16, 0x0

    .line 712
    .local v16, "logPrinter":Landroid/util/Printer;
    const/4 v15, 0x0

    .local v15, "logPrintWriter":Ljava/io/PrintWriter;
    goto :goto_0

    .line 715
    .end local v15    # "logPrintWriter":Ljava/io/PrintWriter;
    .end local v16    # "logPrinter":Landroid/util/Printer;
    :cond_3
    const/4 v10, 0x0

    .restart local v10    # "N":I
    goto :goto_1

    .line 731
    .restart local v3    # "filter":Landroid/content/IntentFilter;, "TF;"
    .restart local v13    # "hasNonDefaults":Z
    .restart local v14    # "i":I
    :cond_4
    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v3}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 739
    :cond_5
    invoke-virtual {v3}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 740
    if-eqz p3, :cond_7

    .line 741
    const-string/jumbo v5, "IntentResolver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  Filter verified: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/IntentResolver;->isFilterVerified(Landroid/content/IntentFilter;)Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    invoke-virtual {v3}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v11

    .line 743
    .local v11, "authorities":I
    const/16 v21, 0x0

    .local v21, "z":I
    :goto_4
    move/from16 v0, v21

    if-ge v0, v11, :cond_7

    .line 744
    const-string/jumbo v5, "IntentResolver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "   "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 732
    .end local v11    # "authorities":I
    .end local v21    # "z":I
    :cond_6
    if-eqz p3, :cond_1

    .line 733
    const-string/jumbo v5, "IntentResolver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  Filter is not from package "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "; skipping"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 750
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-virtual {v0, v3, v1}, Lcom/android/server/IntentResolver;->allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 751
    if-eqz p3, :cond_1

    .line 752
    const-string/jumbo v5, "IntentResolver"

    const-string/jumbo v6, "  Filter\'s target already added"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 757
    :cond_8
    const-string/jumbo v9, "IntentResolver"

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p2

    invoke-virtual/range {v3 .. v9}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v17

    .line 758
    .local v17, "match":I
    if-ltz v17, :cond_c

    .line 759
    if-eqz p3, :cond_9

    const-string/jumbo v5, "IntentResolver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  Filter matched!  match=0x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 760
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 759
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 760
    const-string/jumbo v8, " hasDefault="

    .line 759
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 761
    const-string/jumbo v8, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v8}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v8

    .line 759
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_9
    if-eqz p4, :cond_a

    const-string/jumbo v5, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 763
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p9

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/IntentResolver;->newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;

    move-result-object v18

    .line 764
    .local v18, "oneResult":Ljava/lang/Object;, "TR;"
    if-eqz v18, :cond_1

    .line 765
    move-object/from16 v0, p8

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    if-eqz p3, :cond_1

    .line 767
    const-string/jumbo v5, "    "

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v5, v3}, Lcom/android/server/IntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 768
    invoke-virtual {v15}, Ljava/io/PrintWriter;->flush()V

    .line 769
    const-string/jumbo v5, "    "

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v5}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 773
    .end local v18    # "oneResult":Ljava/lang/Object;, "TR;"
    :cond_b
    const/4 v13, 0x1

    goto/16 :goto_3

    .line 776
    :cond_c
    if-eqz p3, :cond_1

    .line 778
    packed-switch v17, :pswitch_data_0

    .line 783
    const-string/jumbo v20, "unknown reason"

    .line 785
    .local v20, "reason":Ljava/lang/String;
    :goto_5
    const-string/jumbo v5, "IntentResolver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "  Filter did not match: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 779
    .end local v20    # "reason":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v20, "action"

    .restart local v20    # "reason":Ljava/lang/String;
    goto :goto_5

    .line 780
    .end local v20    # "reason":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v20, "category"

    .restart local v20    # "reason":Ljava/lang/String;
    goto :goto_5

    .line 781
    .end local v20    # "reason":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v20, "data"

    .restart local v20    # "reason":Ljava/lang/String;
    goto :goto_5

    .line 782
    .end local v20    # "reason":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v20, "type"

    .restart local v20    # "reason":Ljava/lang/String;
    goto :goto_5

    .line 790
    .end local v3    # "filter":Landroid/content/IntentFilter;, "TF;"
    .end local v17    # "match":I
    .end local v20    # "reason":Ljava/lang/String;
    :cond_d
    if-eqz p3, :cond_e

    if-eqz v13, :cond_e

    .line 791
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_f

    .line 792
    const-string/jumbo v5, "IntentResolver"

    const-string/jumbo v6, "resolveIntent failed: found match, but none with CATEGORY_DEFAULT"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :cond_e
    :goto_6
    return-void

    .line 793
    :cond_f
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_e

    .line 794
    const-string/jumbo v5, "IntentResolver"

    const-string/jumbo v6, "resolveIntent: multiple matches, only some with CATEGORY_DEFAULT"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 778
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .locals 4
    .param p2, "matching"    # Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TF;",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/ArrayList",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "array":[Landroid/content/IntentFilter;, "[TF;"
    const/4 v2, 0x0

    .line 149
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TF;>;"
    if-eqz p1, :cond_0

    .line 150
    const/4 v1, 0x0

    .end local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TF;>;"
    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 151
    aget-object v0, p1, v1

    .line 152
    .local v0, "cur":Landroid/content/IntentFilter;, "TF;"
    if-nez v0, :cond_1

    .line 163
    .end local v0    # "cur":Landroid/content/IntentFilter;, "TF;"
    .end local v1    # "i":I
    :cond_0
    return-object v2

    .line 155
    .restart local v0    # "cur":Landroid/content/IntentFilter;, "TF;"
    .restart local v1    # "i":I
    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/android/server/IntentResolver;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 156
    if-nez v2, :cond_2

    .line 157
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 159
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z
    .locals 5
    .param p1, "f1"    # Landroid/content/IntentFilter;
    .param p2, "f2"    # Landroid/content/IntentFilter;

    .prologue
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    const/4 v4, 0x0

    .line 74
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    .line 75
    .local v1, "s1":I
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v2

    .line 76
    .local v2, "s2":I
    if-eq v1, v2, :cond_0

    .line 77
    return v4

    .line 79
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 80
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 81
    return v4

    .line 79
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    :cond_2
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countCategories()I

    move-result v1

    .line 85
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countCategories()I

    move-result v2

    .line 86
    if-eq v1, v2, :cond_3

    .line 87
    return v4

    .line 89
    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_5

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 91
    return v4

    .line 89
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 94
    :cond_5
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v1

    .line 95
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v2

    .line 96
    if-eq v1, v2, :cond_6

    .line 97
    return v4

    .line 99
    :cond_6
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_8

    .line 100
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->hasExactDataType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 101
    return v4

    .line 99
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 104
    :cond_8
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v1

    .line 105
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v2

    .line 106
    if-eq v1, v2, :cond_9

    .line 107
    return v4

    .line 109
    :cond_9
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_b

    .line 110
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->hasDataScheme(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 111
    return v4

    .line 109
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 114
    :cond_b
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v1

    .line 115
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v2

    .line 116
    if-eq v1, v2, :cond_c

    .line 117
    return v4

    .line 119
    :cond_c
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v1, :cond_e

    .line 120
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->hasDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 121
    return v4

    .line 119
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 124
    :cond_e
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v1

    .line 125
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v2

    .line 126
    if-eq v1, v2, :cond_f

    .line 127
    return v4

    .line 129
    :cond_f
    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_11

    .line 130
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->hasDataPath(Landroid/os/PatternMatcher;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 131
    return v4

    .line 129
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 134
    :cond_11
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v1

    .line 135
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v2

    .line 136
    if-eq v1, v2, :cond_12

    .line 137
    return v4

    .line 139
    :cond_12
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v1, :cond_14

    .line 140
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/IntentFilter;->hasDataSchemeSpecificPart(Landroid/os/PatternMatcher;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 141
    return v4

    .line 139
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 144
    :cond_14
    const/4 v3, 0x1

    return v3
.end method

.method private static getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Landroid/util/FastImmutableArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 689
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 690
    .local v0, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 691
    return-object v1

    .line 693
    :cond_0
    new-instance v2, Landroid/util/FastImmutableArraySet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v2, v1}, Landroid/util/FastImmutableArraySet;-><init>([Ljava/lang/Object;)V

    return-object v2
.end method

.method private final register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .locals 3
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 630
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    .local p2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local p3, "dest":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    if-nez p2, :cond_0

    .line 631
    const/4 v2, 0x0

    return v2

    .line 634
    :cond_0
    const/4 v1, 0x0

    .line 635
    .local v1, "num":I
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 636
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 637
    .local v0, "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 639
    invoke-direct {p0, p3, v0, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    goto :goto_0

    .line 641
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private final register_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I
    .locals 8
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    const/4 v7, 0x0

    .line 568
    invoke-virtual {p1}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 569
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 570
    return v7

    .line 573
    :cond_0
    const/4 v3, 0x0

    .line 574
    .local v3, "num":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 575
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 576
    .local v2, "name":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 578
    move-object v0, v2

    .line 579
    .local v0, "baseName":Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 580
    .local v4, "slashpos":I
    if-lez v4, :cond_1

    .line 581
    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 586
    :goto_1
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v5, v2, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 588
    if-lez v4, :cond_2

    .line 589
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v5, v0, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    goto :goto_0

    .line 583
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 591
    :cond_2
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v5, v0, p1}, Lcom/android/server/IntentResolver;->addFilter(Landroid/util/ArrayMap;Ljava/lang/String;Landroid/content/IntentFilter;)V

    goto :goto_0

    .line 595
    .end local v0    # "baseName":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "slashpos":I
    :cond_3
    return v3
.end method

.method private final remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 662
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/IntentFilter;

    .line 663
    .local v1, "array":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v1, :cond_4

    .line 664
    array-length v5, v1

    add-int/lit8 v0, v5, -0x1

    .line 665
    .local v0, "LAST":I
    :goto_0
    if-ltz v0, :cond_0

    aget-object v5, v1, v0

    if-nez v5, :cond_0

    .line 666
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 668
    :cond_0
    move v2, v0

    .local v2, "idx":I
    :goto_1
    if-ltz v2, :cond_3

    .line 669
    aget-object v5, v1, v2

    if-ne v5, p3, :cond_2

    .line 670
    sub-int v4, v0, v2

    .line 671
    .local v4, "remain":I
    if-lez v4, :cond_1

    .line 672
    add-int/lit8 v5, v2, 0x1

    invoke-static {v1, v5, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 674
    :cond_1
    aput-object v7, v1, v0

    .line 675
    add-int/lit8 v0, v0, -0x1

    .line 668
    .end local v4    # "remain":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 678
    :cond_3
    if-gez v0, :cond_5

    .line 679
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    .end local v0    # "LAST":I
    .end local v2    # "idx":I
    :cond_4
    :goto_2
    return-void

    .line 680
    .restart local v0    # "LAST":I
    .restart local v2    # "idx":I
    :cond_5
    array-length v5, v1

    div-int/lit8 v5, v5, 0x2

    if-ge v0, v5, :cond_4

    .line 681
    add-int/lit8 v5, v0, 0x2

    invoke-virtual {p0, v5}, Lcom/android/server/IntentResolver;->newArray(I)[Landroid/content/IntentFilter;

    move-result-object v3

    .line 682
    .local v3, "newa":[Landroid/content/IntentFilter;, "[TF;"
    add-int/lit8 v5, v0, 0x1

    invoke-static {v1, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 683
    invoke-virtual {p1, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private final unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I
    .locals 3
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 646
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    .local p2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local p3, "dest":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    if-nez p2, :cond_0

    .line 647
    const/4 v2, 0x0

    return v2

    .line 650
    :cond_0
    const/4 v1, 0x0

    .line 651
    .local v1, "num":I
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 652
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 653
    .local v0, "name":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 655
    invoke-direct {p0, p3, v0, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 657
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private final unregister_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I
    .locals 8
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    const/4 v7, 0x0

    .line 599
    invoke-virtual {p1}, Landroid/content/IntentFilter;->typesIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 600
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 601
    return v7

    .line 604
    :cond_0
    const/4 v3, 0x0

    .line 605
    .local v3, "num":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 606
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 607
    .local v2, "name":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    .line 609
    move-object v0, v2

    .line 610
    .local v0, "baseName":Ljava/lang/String;
    const/16 v5, 0x2f

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 611
    .local v4, "slashpos":I
    if-lez v4, :cond_1

    .line 612
    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 617
    :goto_1
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v5, v2, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    .line 619
    if-lez v4, :cond_2

    .line 620
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v5, v0, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 614
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 622
    :cond_2
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    invoke-direct {p0, v5, v0, p1}, Lcom/android/server/IntentResolver;->remove_all_objects(Landroid/util/ArrayMap;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 625
    .end local v0    # "baseName":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v4    # "slashpos":I
    :cond_3
    return v3
.end method


# virtual methods
.method public addFilter(Landroid/content/IntentFilter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "f":Landroid/content/IntentFilter;, "TF;"
    iget-object v2, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {p1}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 61
    iget-object v3, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string/jumbo v4, "      Scheme: "

    .line 60
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    move-result v0

    .line 62
    .local v0, "numS":I
    const-string/jumbo v2, "      Type: "

    invoke-direct {p0, p1, v2}, Lcom/android/server/IntentResolver;->register_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I

    move-result v1

    .line 63
    .local v1, "numT":I
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 64
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 65
    iget-object v3, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string/jumbo v4, "      Action: "

    .line 64
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 67
    :cond_0
    if-eqz v1, :cond_1

    .line 68
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 69
    iget-object v3, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string/jumbo v4, "      TypedAction: "

    .line 68
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->register_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 52
    :cond_1
    return-void
.end method

.method protected allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;",
            "Ljava/util/List",
            "<TR;>;)Z"
        }
    .end annotation

    .prologue
    .line 479
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<TR;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 10
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "printFilter"    # Z
    .param p6, "collapseDuplicates"    # Z

    .prologue
    .line 284
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, "innerPrefix":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 286
    .local v9, "sepPrefix":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, "curPrefix":Ljava/lang/String;
    const-string/jumbo v3, "Full MIME Types:"

    .line 288
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    .line 287
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    move-object v2, v9

    .line 291
    :cond_0
    const-string/jumbo v3, "Base MIME Types:"

    .line 292
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    .line 291
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    move-object v2, v9

    .line 295
    :cond_1
    const-string/jumbo v3, "Wild MIME Types:"

    .line 296
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    .line 295
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    move-object v2, v9

    .line 299
    :cond_2
    const-string/jumbo v3, "Schemes:"

    .line 300
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    .line 299
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 301
    move-object v2, v9

    .line 303
    :cond_3
    const-string/jumbo v3, "Non-Data Actions:"

    .line 304
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    .line 303
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 305
    move-object v2, v9

    .line 307
    :cond_4
    const-string/jumbo v3, "MIME Typed Actions:"

    .line 308
    iget-object v5, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    .line 307
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/IntentResolver;->dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 309
    move-object v2, v9

    .line 311
    :cond_5
    if-ne v2, v9, :cond_6

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 0
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "TF;)V"
        }
    .end annotation

    .prologue
    .line 533
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p3, "filter":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 532
    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/Object;
    .param p4, "count"    # I

    .prologue
    .line 541
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(I)V

    .line 540
    return-void
.end method

.method dumpMap(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/lang/String;ZZ)Z
    .locals 19
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "titlePrefix"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "prefix"    # Ljava/lang/String;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "printFilter"    # Z
    .param p8, "collapseDuplicates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "[TF;>;",
            "Ljava/lang/String;",
            "ZZ)Z"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p5, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;[TF;>;"
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 220
    .local v6, "eprefix":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "    "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 221
    .local v9, "fprefix":Ljava/lang/String;
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 222
    .local v8, "found":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Object;Landroid/util/MutableInt;>;"
    const/4 v15, 0x0

    .line 223
    .local v15, "printedSomething":Z
    const/16 v16, 0x0

    .line 224
    .local v16, "printer":Landroid/util/Printer;
    const/4 v13, 0x0

    .end local v16    # "printer":Landroid/util/Printer;
    .end local p3    # "title":Ljava/lang/String;
    .local v13, "mapi":I
    :goto_0
    invoke-virtual/range {p5 .. p5}, Landroid/util/ArrayMap;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v13, v0, :cond_e

    .line 225
    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/IntentFilter;

    .line 226
    .local v5, "a":[Landroid/content/IntentFilter;, "[TF;"
    array-length v4, v5

    .line 227
    .local v4, "N":I
    const/4 v14, 0x0

    .line 229
    .local v14, "printedHeader":Z
    if-eqz p8, :cond_0

    if-eqz p7, :cond_6

    .line 256
    :cond_0
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v4, :cond_d

    aget-object v7, v5, v10

    .local v7, "filter":Landroid/content/IntentFilter;, "TF;"
    if-eqz v7, :cond_d

    .line 257
    if-eqz p6, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v7}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 260
    :cond_1
    if-eqz p3, :cond_2

    .line 261
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    const/16 p3, 0x0

    .line 264
    :cond_2
    if-nez v14, :cond_3

    .line 265
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v17, ":"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    const/4 v14, 0x1

    .line 268
    :cond_3
    const/4 v15, 0x1

    .line 269
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9, v7}, Lcom/android/server/IntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 270
    if-eqz p7, :cond_5

    .line 271
    if-nez v16, :cond_4

    .line 272
    new-instance v16, Landroid/util/PrintWriterPrinter;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 274
    :cond_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 256
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 230
    .end local v7    # "filter":Landroid/content/IntentFilter;, "TF;"
    .end local v10    # "i":I
    :cond_6
    invoke-virtual {v8}, Landroid/util/ArrayMap;->clear()V

    .line 231
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_2
    if-ge v10, v4, :cond_a

    aget-object v7, v5, v10

    .restart local v7    # "filter":Landroid/content/IntentFilter;, "TF;"
    if-eqz v7, :cond_a

    .line 232
    if-eqz p6, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1, v7}, Lcom/android/server/IntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 235
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/IntentResolver;->filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;

    move-result-object v12

    .line 236
    .local v12, "label":Ljava/lang/Object;
    invoke-virtual {v8, v12}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v11

    .line 237
    .local v11, "index":I
    if-gez v11, :cond_9

    .line 238
    new-instance v17, Landroid/util/MutableInt;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/util/MutableInt;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v12, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .end local v11    # "index":I
    .end local v12    # "label":Ljava/lang/Object;
    :cond_8
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 240
    .restart local v11    # "index":I
    .restart local v12    # "label":Ljava/lang/Object;
    :cond_9
    invoke-virtual {v8, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/util/MutableInt;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/MutableInt;->value:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/util/MutableInt;->value:I

    goto :goto_3

    .line 243
    .end local v7    # "filter":Landroid/content/IntentFilter;, "TF;"
    .end local v11    # "index":I
    .end local v12    # "label":Ljava/lang/Object;
    :cond_a
    const/4 v10, 0x0

    :goto_4
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v10, v0, :cond_d

    .line 244
    if-eqz p3, :cond_b

    .line 245
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    const/16 p3, 0x0

    .line 248
    :cond_b
    if-nez v14, :cond_c

    .line 249
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v17, ":"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    const/4 v14, 0x1

    .line 252
    :cond_c
    const/4 v15, 0x1

    .line 253
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/util/MutableInt;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/util/MutableInt;->value:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move/from16 v3, v17

    invoke-virtual {v0, v1, v9, v2, v3}, Lcom/android/server/IntentResolver;->dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 243
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 224
    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 279
    .end local v4    # "N":I
    .end local v5    # "a":[Landroid/content/IntentFilter;, "[TF;"
    .end local v10    # "i":I
    .end local v14    # "printedHeader":Z
    :cond_e
    return v15
.end method

.method public filterIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 343
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    new-instance v0, Lcom/android/server/IntentResolver$IteratorWrapper;

    iget-object v1, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/IntentResolver$IteratorWrapper;-><init>(Lcom/android/server/IntentResolver;Ljava/util/Iterator;)V

    return-object v0
.end method

.method protected filterResults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 529
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<TR;>;"
    return-void
.end method

.method public filterSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 537
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    const-string/jumbo v0, "IntentFilter"

    return-object v0
.end method

.method public findFilters(Landroid/content/IntentFilter;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "matching"    # Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/IntentFilter;",
            ")",
            "Ljava/util/ArrayList",
            "<TF;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 167
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 169
    iget-object v3, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/IntentFilter;

    invoke-direct {p0, v3, p1}, Lcom/android/server/IntentResolver;->collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v3

    return-object v3

    .line 170
    :cond_0
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 172
    iget-object v3, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/IntentFilter;

    invoke-direct {p0, v3, p1}, Lcom/android/server/IntentResolver;->collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v3

    return-object v3

    .line 173
    :cond_1
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p1}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v3

    if-nez v3, :cond_2

    .line 174
    invoke-virtual {p1}, Landroid/content/IntentFilter;->countActions()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 176
    iget-object v3, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/IntentFilter;

    invoke-direct {p0, v3, p1}, Lcom/android/server/IntentResolver;->collectFilters([Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Ljava/util/ArrayList;

    move-result-object v3

    return-object v3

    .line 178
    :cond_2
    const/4 v2, 0x0

    .line 179
    .local v2, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TF;>;"
    iget-object v3, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v2    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TF;>;"
    .local v1, "cur$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/IntentFilter;

    .line 180
    .local v0, "cur":Landroid/content/IntentFilter;, "TF;"
    invoke-direct {p0, v0, p1}, Lcom/android/server/IntentResolver;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 181
    if-nez v2, :cond_4

    .line 182
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 184
    :cond_4
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 187
    .end local v0    # "cur":Landroid/content/IntentFilter;, "TF;"
    :cond_5
    return-object v2
.end method

.method protected isFilterStopped(Landroid/content/IntentFilter;I)Z
    .locals 1
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;I)Z"
        }
    .end annotation

    .prologue
    .line 488
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    const/4 v0, 0x0

    return v0
.end method

.method protected isFilterVerified(Landroid/content/IntentFilter;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)Z"
        }
    .end annotation

    .prologue
    .line 504
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p1}, Landroid/content/IntentFilter;->isVerified()Z

    move-result v0

    return v0
.end method

.method protected abstract isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TF;)Z"
        }
    .end annotation
.end method

.method protected abstract newArray(I)[Landroid/content/IntentFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TF;"
        }
    .end annotation
.end method

.method protected newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .locals 0
    .param p2, "match"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;II)TR;"
        }
    .end annotation

    .prologue
    .line 518
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "filter":Landroid/content/IntentFilter;, "TF;"
    return-object p1
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 40
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "defaultOnly"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 374
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v8

    .line 376
    .local v8, "scheme":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v10, "finalList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TR;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_b

    const/4 v5, 0x1

    .line 381
    .local v5, "debug":Z
    :goto_0
    if-eqz v5, :cond_0

    .line 382
    const-string/jumbo v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Resolving type="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " scheme="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 383
    const-string/jumbo v6, " defaultOnly="

    .line 382
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 383
    const-string/jumbo v6, " userId="

    .line 382
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 383
    const-string/jumbo v6, " of "

    .line 382
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 381
    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_0
    const/4 v9, 0x0

    .line 386
    .local v9, "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    const/16 v18, 0x0

    .line 387
    .local v18, "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    const/16 v26, 0x0

    .line 388
    .local v26, "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    const/16 v34, 0x0

    .line 392
    .local v34, "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz p2, :cond_4

    .line 393
    const/16 v2, 0x2f

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v39

    .line 394
    .local v39, "slashpos":I
    if-lez v39, :cond_4

    .line 395
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v37

    .line 396
    .local v37, "baseType":Ljava/lang/String;
    const-string/jumbo v2, "*"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 397
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v39, 0x2

    if-ne v2, v3, :cond_1

    .line 398
    add-int/lit8 v2, v39, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-eq v2, v3, :cond_c

    .line 401
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IntentResolver;->mTypeToFilter:Landroid/util/ArrayMap;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v9, [Landroid/content/IntentFilter;

    .line 402
    .local v9, "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v5, :cond_2

    const-string/jumbo v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "First type cut: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v18, [Landroid/content/IntentFilter;

    .line 404
    .local v18, "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v5, :cond_3

    const-string/jumbo v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Second type cut: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 405
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 404
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    const-string/jumbo v3, "*"

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .end local v26    # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v26, [Landroid/content/IntentFilter;

    .line 417
    .local v26, "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v5, :cond_4

    const-string/jumbo v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Third type cut: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v26 .. v26}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .end local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v18    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v26    # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v37    # "baseType":Ljava/lang/String;
    .end local v39    # "slashpos":I
    :cond_4
    :goto_2
    if-eqz v8, :cond_5

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    .end local v34    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v34, [Landroid/content/IntentFilter;

    .line 433
    .local v34, "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v5, :cond_5

    const-string/jumbo v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Scheme list: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v34 .. v34}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    .end local v34    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    :cond_5
    if-nez p2, :cond_6

    if-nez v8, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/content/IntentFilter;

    .line 441
    .restart local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v5, :cond_6

    const-string/jumbo v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Action list: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    .end local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/android/server/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;

    move-result-object v4

    .line 445
    .local v4, "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    if-eqz v9, :cond_7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v6, p3

    move-object/from16 v7, p2

    move/from16 v11, p4

    .line 446
    invoke-direct/range {v2 .. v11}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 449
    :cond_7
    if-eqz v18, :cond_8

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object v13, v4

    move v14, v5

    move/from16 v15, p3

    move-object/from16 v16, p2

    move-object/from16 v17, v8

    move-object/from16 v19, v10

    move/from16 v20, p4

    .line 450
    invoke-direct/range {v11 .. v20}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 453
    :cond_8
    if-eqz v26, :cond_9

    move-object/from16 v19, p0

    move-object/from16 v20, p1

    move-object/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, p3

    move-object/from16 v24, p2

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move/from16 v28, p4

    .line 454
    invoke-direct/range {v19 .. v28}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 457
    :cond_9
    if-eqz v34, :cond_a

    move-object/from16 v27, p0

    move-object/from16 v28, p1

    move-object/from16 v29, v4

    move/from16 v30, v5

    move/from16 v31, p3

    move-object/from16 v32, p2

    move-object/from16 v33, v8

    move-object/from16 v35, v10

    move/from16 v36, p4

    .line 458
    invoke-direct/range {v27 .. v36}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 461
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/IntentResolver;->filterResults(Ljava/util/List;)V

    .line 462
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/IntentResolver;->sortResults(Ljava/util/List;)V

    .line 464
    if-eqz v5, :cond_f

    .line 465
    const-string/jumbo v2, "IntentResolver"

    const-string/jumbo v3, "Final result list:"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/16 v38, 0x0

    .local v38, "i":I
    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v38

    if-ge v0, v2, :cond_f

    .line 467
    const-string/jumbo v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "  "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v38

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    add-int/lit8 v38, v38, 0x1

    goto :goto_3

    .line 379
    .end local v4    # "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    .end local v5    # "debug":Z
    .end local v38    # "i":I
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 408
    .restart local v5    # "debug":Z
    .local v9, "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .local v18, "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .local v26, "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .local v34, "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    .restart local v37    # "baseType":Ljava/lang/String;
    .restart local v39    # "slashpos":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IntentResolver;->mBaseTypeToFilter:Landroid/util/ArrayMap;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v9, [Landroid/content/IntentFilter;

    .line 409
    .local v9, "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v5, :cond_d

    const-string/jumbo v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "First type cut: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IntentResolver;->mWildTypeToFilter:Landroid/util/ArrayMap;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v18, [Landroid/content/IntentFilter;

    .line 411
    .local v18, "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v5, :cond_3

    const-string/jumbo v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Second type cut: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 412
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 411
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 418
    .local v9, "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .local v18, "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    check-cast v9, [Landroid/content/IntentFilter;

    .line 423
    .local v9, "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    if-eqz v5, :cond_4

    const-string/jumbo v2, "IntentResolver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Typed Action list: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 470
    .end local v9    # "firstTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v18    # "secondTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v26    # "thirdTypeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v34    # "schemeCut":[Landroid/content/IntentFilter;, "[TF;"
    .end local v37    # "baseType":Ljava/lang/String;
    .end local v39    # "slashpos":I
    .restart local v4    # "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    :cond_f
    return-object v10
.end method

.method public queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "defaultOnly"    # Z
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<[TF;>;I)",
            "Ljava/util/List",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 355
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p4, "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[TF;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .local v9, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TR;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v4, 0x1

    .line 360
    .local v4, "debug":Z
    :goto_0
    invoke-static {p1}, Lcom/android/server/IntentResolver;->getFastIntentCategories(Landroid/content/Intent;)Landroid/util/FastImmutableArraySet;

    move-result-object v3

    .line 361
    .local v3, "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v7

    .line 362
    .local v7, "scheme":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 363
    .local v11, "N":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v11, :cond_1

    .line 365
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/content/IntentFilter;

    move-object v1, p0

    move-object v2, p1

    move/from16 v5, p3

    move-object v6, p2

    move/from16 v10, p5

    .line 364
    invoke-direct/range {v1 .. v10}, Lcom/android/server/IntentResolver;->buildResolveList(Landroid/content/Intent;Landroid/util/FastImmutableArraySet;ZZLjava/lang/String;Ljava/lang/String;[Landroid/content/IntentFilter;Ljava/util/List;I)V

    .line 363
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 358
    .end local v3    # "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    .end local v4    # "debug":Z
    .end local v7    # "scheme":Ljava/lang/String;
    .end local v11    # "N":I
    .end local v12    # "i":I
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "debug":Z
    goto :goto_0

    .line 367
    .restart local v3    # "categories":Landroid/util/FastImmutableArraySet;, "Landroid/util/FastImmutableArraySet<Ljava/lang/String;>;"
    .restart local v7    # "scheme":Ljava/lang/String;
    .restart local v11    # "N":I
    .restart local v12    # "i":I
    :cond_1
    invoke-virtual {p0, v9}, Lcom/android/server/IntentResolver;->filterResults(Ljava/util/List;)V

    .line 368
    invoke-virtual {p0, v9}, Lcom/android/server/IntentResolver;->sortResults(Ljava/util/List;)V

    .line 369
    return-object v9
.end method

.method public removeFilter(Landroid/content/IntentFilter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "f":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p0, p1}, Lcom/android/server/IntentResolver;->removeFilterInternal(Landroid/content/IntentFilter;)V

    .line 193
    iget-object v0, p0, Lcom/android/server/IntentResolver;->mFilters:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 191
    return-void
.end method

.method removeFilterInternal(Landroid/content/IntentFilter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "f":Landroid/content/IntentFilter;, "TF;"
    invoke-virtual {p1}, Landroid/content/IntentFilter;->schemesIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 204
    iget-object v3, p0, Lcom/android/server/IntentResolver;->mSchemeToFilter:Landroid/util/ArrayMap;

    const-string/jumbo v4, "      Scheme: "

    .line 203
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    move-result v0

    .line 205
    .local v0, "numS":I
    const-string/jumbo v2, "      Type: "

    invoke-direct {p0, p1, v2}, Lcom/android/server/IntentResolver;->unregister_mime_types(Landroid/content/IntentFilter;Ljava/lang/String;)I

    move-result v1

    .line 206
    .local v1, "numT":I
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 207
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 208
    iget-object v3, p0, Lcom/android/server/IntentResolver;->mActionToFilter:Landroid/util/ArrayMap;

    const-string/jumbo v4, "      Action: "

    .line 207
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 210
    :cond_0
    if-eqz v1, :cond_1

    .line 211
    invoke-virtual {p1}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 212
    iget-object v3, p0, Lcom/android/server/IntentResolver;->mTypedActionToFilter:Landroid/util/ArrayMap;

    const-string/jumbo v4, "      TypedAction: "

    .line 211
    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/server/IntentResolver;->unregister_intent_filter(Landroid/content/IntentFilter;Ljava/util/Iterator;Landroid/util/ArrayMap;Ljava/lang/String;)I

    .line 196
    :cond_1
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 523
    .local p0, "this":Lcom/android/server/IntentResolver;, "Lcom/android/server/IntentResolver<TF;TR;>;"
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<TR;>;"
    sget-object v0, Lcom/android/server/IntentResolver;->mResolvePrioritySorter:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 522
    return-void
.end method
