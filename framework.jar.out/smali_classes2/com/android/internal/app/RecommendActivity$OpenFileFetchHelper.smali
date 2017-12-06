.class Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;
.super Ljava/lang/Object;
.source "RecommendActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/RecommendActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenFileFetchHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper$DisplayResolveInfo;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field final synthetic this$0:Lcom/android/internal/app/RecommendActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/RecommendActivity;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18
    .param p1, "this$0"    # Lcom/android/internal/app/RecommendActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 800
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->this$0:Lcom/android/internal/app/RecommendActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 801
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->mContext:Landroid/content/Context;

    .line 802
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->mIntent:Landroid/content/Intent;

    .line 803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->mIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 805
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v12

    .line 806
    .local v12, "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v17, "*/*"

    move-object/from16 v0, v17

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 808
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->mIntent:Landroid/content/Intent;

    .line 811
    const v17, 0x10040

    .line 810
    move/from16 v0, v17

    invoke-virtual {v2, v5, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 814
    .local v3, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->mIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5, v12}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 816
    const/4 v8, 0x0

    .line 817
    .local v8, "N":I
    if-eqz v3, :cond_c

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_c

    .line 820
    const/4 v6, 0x0

    .line 822
    .local v6, "r0":Landroid/content/pm/ResolveInfo;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    .line 823
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_5

    .line 824
    const/4 v11, 0x0

    .line 825
    .local v11, "len":I
    const/4 v10, 0x0

    .line 826
    .local v10, "index":I
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 829
    .local v14, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v11

    .line 830
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v11, :cond_0

    .line 831
    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v10}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->hasGetExtName(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 837
    :cond_0
    if-ne v10, v11, :cond_3

    .line 838
    invoke-interface {v3, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 839
    add-int/lit8 v8, v8, -0x1

    .line 840
    add-int/lit8 v9, v9, -0x1

    .line 823
    :cond_1
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 830
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 845
    :cond_3
    add-int/lit8 v10, v9, 0x1

    :goto_3
    if-ge v10, v8, :cond_1

    .line 846
    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/pm/ResolveInfo;

    .line 847
    .local v16, "riNext":Landroid/content/pm/ResolveInfo;
    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 848
    move-object/from16 v0, v16

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 847
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 849
    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 850
    move-object/from16 v0, v16

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 849
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 847
    if-eqz v2, :cond_4

    .line 852
    invoke-interface {v3, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 853
    add-int/lit8 v8, v8, -0x1

    .line 854
    goto :goto_2

    .line 845
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 861
    .end local v10    # "index":I
    .end local v11    # "len":I
    .end local v14    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v16    # "riNext":Landroid/content/pm/ResolveInfo;
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    .line 863
    if-nez v8, :cond_6

    .line 864
    return-void

    .line 866
    :cond_6
    const/4 v2, 0x1

    if-le v8, v2, :cond_7

    .line 867
    new-instance v13, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    .line 868
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 867
    invoke-direct {v13, v2}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    .line 869
    .local v13, "rComparator":Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    invoke-static {v3, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 872
    .end local v13    # "rComparator":Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->mList:Ljava/util/List;

    .line 877
    const/4 v2, 0x0

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "r0":Landroid/content/pm/ResolveInfo;
    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 878
    .local v6, "r0":Landroid/content/pm/ResolveInfo;
    const/4 v4, 0x0

    .line 879
    .local v4, "start":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 880
    .local v7, "r0Label":Ljava/lang/CharSequence;
    const/4 v9, 0x1

    :goto_4
    if-ge v9, v8, :cond_b

    .line 881
    if-nez v7, :cond_8

    .line 882
    iget-object v2, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 884
    :cond_8
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 885
    .restart local v14    # "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v14, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 886
    .local v15, "riLabel":Ljava/lang/CharSequence;
    if-nez v15, :cond_9

    .line 887
    iget-object v2, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 889
    :cond_9
    invoke-virtual {v15, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 880
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 892
    :cond_a
    add-int/lit8 v5, v9, -0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 893
    move-object v6, v14

    .line 894
    move-object v7, v15

    .line 895
    move v4, v9

    goto :goto_5

    .line 898
    .end local v14    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v15    # "riLabel":Ljava/lang/CharSequence;
    :cond_b
    add-int/lit8 v5, v8, -0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 800
    .end local v4    # "start":I
    .end local v6    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v7    # "r0Label":Ljava/lang/CharSequence;
    .end local v9    # "i":I
    :cond_c
    return-void
.end method

.method private processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V
    .locals 16
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "ro"    # Landroid/content/pm/ResolveInfo;
    .param p5, "roLabel"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;II",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 914
    .local p1, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sub-int v1, p3, p2

    add-int/lit8 v12, v1, 0x1

    .line 915
    .local v12, "num":I
    const/4 v1, 0x1

    if-ne v12, v1, :cond_1

    .line 917
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper$DisplayResolveInfo;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper$DisplayResolveInfo;-><init>(Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 912
    :cond_0
    return-void

    .line 919
    :cond_1
    const/4 v14, 0x0

    .line 920
    .local v14, "usePkg":Z
    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 921
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 920
    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 922
    .local v13, "startApp":Ljava/lang/CharSequence;
    if-nez v13, :cond_2

    .line 923
    const/4 v14, 0x1

    .line 925
    :cond_2
    if-nez v14, :cond_5

    .line 927
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 928
    .local v7, "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v7, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 929
    add-int/lit8 v8, p2, 0x1

    .local v8, "j":I
    :goto_0
    move/from16 v0, p3

    if-gt v8, v0, :cond_4

    .line 930
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 931
    .local v10, "jRi":Landroid/content/pm/ResolveInfo;
    iget-object v1, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 932
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->mPm:Landroid/content/pm/PackageManager;

    .line 931
    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 933
    .local v9, "jApp":Ljava/lang/CharSequence;
    if-eqz v9, :cond_3

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 934
    :cond_3
    const/4 v14, 0x1

    .line 941
    .end local v9    # "jApp":Ljava/lang/CharSequence;
    .end local v10    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_4
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 943
    .end local v7    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v8    # "j":I
    :cond_5
    move/from16 v11, p2

    .local v11, "k":I
    :goto_1
    move/from16 v0, p3

    if-gt v11, v0, :cond_0

    .line 944
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 945
    .local v3, "add":Landroid/content/pm/ResolveInfo;
    if-eqz v14, :cond_7

    .line 948
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper$DisplayResolveInfo;

    .line 949
    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p5

    .line 948
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper$DisplayResolveInfo;-><init>(Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 943
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 937
    .end local v3    # "add":Landroid/content/pm/ResolveInfo;
    .end local v11    # "k":I
    .restart local v7    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .restart local v8    # "j":I
    .restart local v9    # "jApp":Ljava/lang/CharSequence;
    .restart local v10    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_6
    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 929
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 952
    .end local v7    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v8    # "j":I
    .end local v9    # "jApp":Ljava/lang/CharSequence;
    .end local v10    # "jRi":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "add":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "k":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper$DisplayResolveInfo;

    .line 955
    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 956
    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v4, p5

    .line 952
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper$DisplayResolveInfo;-><init>(Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInfo(I)Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper$DisplayResolveInfo;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 990
    iget-object v1, p0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->mList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper$DisplayResolveInfo;

    :cond_0
    return-object v0
.end method

.method public hasGetExtName(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 995
    const/4 v0, 0x0

    .line 998
    .local v0, "mimeArray":[Ljava/lang/Object;
    const/4 v1, 0x1

    return v1
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 970
    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->mList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 971
    return-object v4

    .line 973
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper$DisplayResolveInfo;

    .line 975
    .local v1, "dri":Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper$DisplayResolveInfo;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    :goto_0
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 977
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x3000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 979
    iget-object v3, v1, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 980
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    .line 981
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 980
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 982
    return-object v2

    .line 976
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->mIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method public resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;
    .locals 2
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 963
    iget-object v0, p0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 964
    return-object v1

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper$DisplayResolveInfo;

    iget-object v0, v0, Lcom/android/internal/app/RecommendActivity$OpenFileFetchHelper$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method
