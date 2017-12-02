.class public Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;
.super Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChooserListAdapter"
.end annotation


# static fields
.field private static final MAX_SERVICE_TARGETS:I = 0x8

.field private static final MAX_TARGETS_PER_SERVICE:I = 0x4

.field public static final TARGET_BAD:I = -0x1

.field public static final TARGET_CALLER:I = 0x0

.field public static final TARGET_SERVICE:I = 0x1

.field public static final TARGET_STANDARD:I = 0x2


# instance fields
.field private final mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

.field private final mCallerTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivity$TargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLateFee:F

.field private final mServiceTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShowServiceTargets:Z

.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)V
    .locals 18
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "launchedFromUid"    # I
    .param p7, "filterLastUsed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 814
    .local p3, "payloadIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 819
    const/4 v6, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;Ljava/util/List;[Landroid/content/Intent;Ljava/util/List;IZ)V

    .line 805
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    .line 806
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    .line 809
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mLateFee:F

    .line 812
    new-instance v2, Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    invoke-direct {v2}, Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;-><init>()V

    .line 811
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    .line 821
    if-eqz p4, :cond_7

    .line 822
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/app/ChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 823
    .local v15, "pm":Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p4

    array-length v2, v0

    if-ge v12, v2, :cond_7

    .line 824
    aget-object v4, p4, v12

    .line 825
    .local v4, "ii":Landroid/content/Intent;
    if-nez v4, :cond_0

    .line 823
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 833
    :cond_0
    const/4 v5, 0x0

    .line 834
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    const/4 v10, 0x0

    .line 835
    .local v10, "ai":Landroid/content/pm/ActivityInfo;
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    .line 836
    .local v11, "cn":Landroid/content/ComponentName;
    if-eqz v11, :cond_1

    .line 838
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v10

    .line 839
    .local v10, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v16, Landroid/content/pm/ResolveInfo;

    invoke-direct/range {v16 .. v16}, Landroid/content/pm/ResolveInfo;-><init>()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .local v16, "ri":Landroid/content/pm/ResolveInfo;
    :try_start_1
    move-object/from16 v0, v16

    iput-object v10, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v5, v16

    .line 845
    .end local v10    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1
    :goto_2
    if-nez v10, :cond_2

    .line 846
    const/high16 v2, 0x10000

    invoke-virtual {v15, v4, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 847
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_3

    iget-object v10, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 849
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_2
    :goto_3
    if-nez v10, :cond_4

    .line 850
    const-string/jumbo v2, "ChooserActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No activity found for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 847
    .restart local v5    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    const/4 v10, 0x0

    .local v10, "ai":Landroid/content/pm/ActivityInfo;
    goto :goto_3

    .line 854
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v10    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_4
    const-string/jumbo v2, "user"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/UserManager;

    .line 855
    .local v17, "userManager":Landroid/os/UserManager;
    instance-of v2, v4, Landroid/content/pm/LabeledIntent;

    if-eqz v2, :cond_5

    move-object v14, v4

    .line 856
    check-cast v14, Landroid/content/pm/LabeledIntent;

    .line 857
    .local v14, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual {v14}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 858
    invoke-virtual {v14}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v2

    iput v2, v5, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 859
    invoke-virtual {v14}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v5, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 860
    invoke-virtual {v14}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v2

    iput v2, v5, Landroid/content/pm/ResolveInfo;->icon:I

    .line 861
    iget v2, v5, Landroid/content/pm/ResolveInfo;->icon:I

    iput v2, v5, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 863
    .end local v14    # "li":Landroid/content/pm/LabeledIntent;
    :cond_5
    invoke-virtual/range {v17 .. v17}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 864
    const/4 v2, 0x1

    iput-boolean v2, v5, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    .line 865
    const/4 v2, 0x0

    iput v2, v5, Landroid/content/pm/ResolveInfo;->icon:I

    .line 867
    :cond_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    new-instance v2, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .line 868
    invoke-virtual {v5, v15}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v3, p1

    move-object v8, v4

    .line 867
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 816
    .end local v4    # "ii":Landroid/content/Intent;
    .end local v11    # "cn":Landroid/content/ComponentName;
    .end local v12    # "i":I
    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    .end local v17    # "userManager":Landroid/os/UserManager;
    :cond_7
    return-void

    .line 841
    .restart local v4    # "ii":Landroid/content/Intent;
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "cn":Landroid/content/ComponentName;
    .restart local v12    # "i":I
    .restart local v15    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v13

    .local v13, "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_2

    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v13    # "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v10, "ai":Landroid/content/pm/ActivityInfo;
    .restart local v16    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_1
    move-exception v13

    .restart local v13    # "ignored":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object/from16 v5, v16

    .end local v16    # "ri":Landroid/content/pm/ResolveInfo;
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    goto/16 :goto_2
.end method

.method private insertServiceTarget(Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;)V
    .locals 5
    .param p1, "chooserTargetInfo"    # Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    .prologue
    .line 1030
    invoke-virtual {p1}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getModifiedScore()F

    move-result v2

    .line 1031
    .local v2, "newScore":F
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1032
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    .line 1033
    .local v3, "serviceTarget":Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    invoke-virtual {v3}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getModifiedScore()F

    move-result v4

    cmpl-float v4, v2, v4

    if-lez v4, :cond_0

    .line 1034
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v4, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1035
    return-void

    .line 1031
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1038
    .end local v3    # "serviceTarget":Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1029
    return-void
.end method

.method private pruneServiceTargets()V
    .locals 3

    .prologue
    .line 1043
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 1044
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    .line 1045
    .local v0, "cti":Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->hasResolvedTarget(Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1047
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1043
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1041
    .end local v0    # "cti":Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;
    :cond_1
    return-void
.end method


# virtual methods
.method public addServiceResults(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Ljava/util/List;)V
    .locals 9
    .param p1, "origTarget"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/service/chooser/ChooserTarget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/service/chooser/ChooserTarget;>;"
    const v8, 0x3f733333    # 0.95f

    .line 990
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F

    move-result v3

    .line 991
    .local v3, "parentScore":F
    iget-object v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mBaseTargetComparator:Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;

    invoke-static {p2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 992
    const/4 v2, 0x0

    .line 993
    .local v2, "lastScore":F
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x4

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 994
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/chooser/ChooserTarget;

    .line 995
    .local v4, "target":Landroid/service/chooser/ChooserTarget;
    invoke-virtual {v4}, Landroid/service/chooser/ChooserTarget;->getScore()F

    move-result v5

    .line 996
    .local v5, "targetScore":F
    mul-float/2addr v5, v3

    .line 997
    iget v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mLateFee:F

    mul-float/2addr v5, v6

    .line 998
    if-lez v1, :cond_0

    cmpl-float v6, v5, v2

    if-ltz v6, :cond_0

    .line 1001
    mul-float v5, v2, v8

    .line 1003
    :cond_0
    new-instance v6, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;

    iget-object v7, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {v6, v7, p1, v4, v5}, Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;-><init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;Landroid/service/chooser/ChooserTarget;F)V

    invoke-direct {p0, v6}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->insertServiceTarget(Lcom/android/internal/app/ChooserActivity$ChooserTargetInfo;)V

    .line 1013
    move v2, v5

    .line 993
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1016
    .end local v4    # "target":Landroid/service/chooser/ChooserTarget;
    .end local v5    # "targetScore":F
    :cond_1
    iget v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mLateFee:F

    mul-float/2addr v6, v8

    iput v6, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mLateFee:F

    .line 1018
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->notifyDataSetChanged()V

    .line 987
    return-void
.end method

.method public getCallerTargetCount()I
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 916
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 964
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 963
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPositionTargetType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 942
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    .line 943
    .local v0, "callerTargetCount":I
    if-ge p1, v0, :cond_0

    .line 944
    return v4

    .line 946
    :cond_0
    add-int/lit8 v1, v0, 0x0

    .line 948
    .local v1, "offset":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v2

    .line 949
    .local v2, "serviceTargetCount":I
    sub-int v4, p1, v1

    if-ge v4, v2, :cond_1

    .line 950
    const/4 v4, 0x1

    return v4

    .line 952
    :cond_1
    add-int/2addr v1, v2

    .line 954
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v3

    .line 955
    .local v3, "standardTargetCount":I
    sub-int v4, p1, v1

    if-ge v4, v3, :cond_2

    .line 956
    const/4 v4, 0x2

    return v4

    .line 959
    :cond_2
    const/4 v4, -0x1

    return v4
.end method

.method public getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F
    .locals 2
    .param p1, "target"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 886
    if-nez p1, :cond_0

    .line 887
    const/high16 v1, 0x44610000    # 900.0f

    return v1

    .line 889
    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getScore(Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)F

    move-result v0

    .line 890
    .local v0, "score":F
    invoke-virtual {p1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->isPinned()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 891
    const/high16 v1, 0x447a0000    # 1000.0f

    add-float/2addr v0, v1

    .line 893
    :cond_1
    return v0
.end method

.method public getServiceTargetCount()I
    .locals 2

    .prologue
    .line 929
    iget-boolean v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mShowServiceTargets:Z

    if-nez v0, :cond_0

    .line 930
    const/4 v0, 0x0

    return v0

    .line 932
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getStandardTargetCount()I
    .locals 1

    .prologue
    .line 936
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getUnfilteredCount()I
    .locals 2

    .prologue
    .line 921
    invoke-super {p0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getUnfilteredCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isComponentPinned(Landroid/content/ComponentName;)Z
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 881
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-get3(Lcom/android/internal/app/ChooserActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 899
    const v1, 0x10900c3

    const/4 v2, 0x0

    .line 898
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListRebuilt()V
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 905
    invoke-direct {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->pruneServiceTargets()V

    .line 903
    :cond_0
    return-void
.end method

.method public setShowServiceTargets(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 1025
    iput-boolean p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mShowServiceTargets:Z

    .line 1026
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->notifyDataSetChanged()V

    .line 1024
    return-void
.end method

.method public shouldGetResolvedFilter()Z
    .locals 1

    .prologue
    .line 911
    const/4 v0, 0x1

    return v0
.end method

.method public showsExtendedInfo(Lcom/android/internal/app/ResolverActivity$TargetInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/android/internal/app/ResolverActivity$TargetInfo;

    .prologue
    .line 876
    const/4 v0, 0x0

    return v0
.end method

.method public targetInfoForPosition(IZ)Lcom/android/internal/app/ResolverActivity$TargetInfo;
    .locals 5
    .param p1, "position"    # I
    .param p2, "filtered"    # Z

    .prologue
    .line 971
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getCallerTargetCount()I

    move-result v0

    .line 972
    .local v0, "callerTargetCount":I
    if-ge p1, v0, :cond_0

    .line 973
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mCallerTargets:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    return-object v3

    .line 975
    :cond_0
    add-int/lit8 v1, v0, 0x0

    .line 977
    .local v1, "offset":I
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getServiceTargetCount()I

    move-result v2

    .line 978
    .local v2, "serviceTargetCount":I
    sub-int v3, p1, v1

    if-ge v3, v2, :cond_1

    .line 979
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->mServiceTargets:Ljava/util/List;

    sub-int v4, p1, v1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivity$TargetInfo;

    return-object v3

    .line 981
    :cond_1
    add-int/2addr v1, v2

    .line 983
    if-eqz p2, :cond_2

    sub-int v3, p1, v1

    invoke-super {p0, v3}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->getItem(I)Lcom/android/internal/app/ResolverActivity$TargetInfo;

    move-result-object v3

    :goto_0
    return-object v3

    .line 984
    :cond_2
    sub-int v3, p1, v1

    invoke-virtual {p0, v3}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->getDisplayInfoAt(I)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    move-result-object v3

    goto :goto_0
.end method
