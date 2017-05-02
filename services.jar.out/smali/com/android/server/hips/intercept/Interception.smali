.class public abstract Lcom/android/server/hips/intercept/Interception;
.super Ljava/lang/Object;
.source "Interception.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hips/intercept/Interception$RulesConvertor;,
        Lcom/android/server/hips/intercept/Interception$1;
    }
.end annotation


# static fields
.field private static final CURRENT_RULES_NAME:Ljava/lang/String; = "current_interception_rules"

.field private static final INTERCEPTION_VERSION:I = 0x1

.field private static final ITEMS_NAME:Ljava/lang/String; = "interception_items"

.field private static final ITEM_LENGTH:I = 0x2

.field public static final MODE_ALLOW:I = 0x1

.field public static final MODE_AUTO:I = 0x0

.field public static final MODE_DENY:I = 0x2

.field public static final MODE_ERROR:I = -0x1

.field private static final MSG_UPDATE_WHITE_LIST_ACTIVE_TIME:I = 0x0

.field private static final RULES_NAME:Ljava/lang/String; = "interception_rules"

.field private static final RULE_LENGTH:I = 0x9

.field private static final RULE_TYPE_ALLOW:I = 0x1

.field private static final RULE_TYPE_DEFAULT:I = 0x0

.field private static final RULE_TYPE_DENY:I = -0x1

.field public static final RUN_TYPE_ACTIVITY:Ljava/lang/String; = "activity"

.field public static final RUN_TYPE_BACKUP:Ljava/lang/String; = "backup"

.field public static final RUN_TYPE_BROADCAST:Ljava/lang/String; = "broadcast"

.field public static final RUN_TYPE_CONTENT_PROVIDER:Ljava/lang/String; = "provider"

.field public static final RUN_TYPE_RETRIEVE_SERVICE:Ljava/lang/String; = "retrieve_service"

.field private static final STORAGE_PATH:Ljava/lang/String; = "/data/system"

.field public static final TAG:Ljava/lang/String; = "Interception"

.field private static final TYPE_FOR_SLEEP_CONTINUE:I = 0x2

.field private static final TYPE_FOR_SLEEP_START:I = 0x1

.field private static mHandler:Landroid/os/Handler;

.field private static mInterceptionItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mInterceptionRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hips/intercept/Interception$RulesConvertor;",
            ">;"
        }
    .end annotation
.end field

.field private static mInterceptionTimeStamp:J

.field private static mIsIgnoreWhiteListForSleep:Z

.field private static mLocalInterceptionRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/hips/intercept/Interception$RulesConvertor;",
            ">;"
        }
    .end annotation
.end field

.field private static mWhiteListActiveTimeForSleep:I

.field private static mWhiteListForSleep:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mInterceptionItems:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/android/server/hips/intercept/Interception;->mWhiteListActiveTimeForSleep:I

    return v0
.end method

.method static synthetic -get3()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mWhiteListForSleep:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -set0(Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    sput-object p0, Lcom/android/server/hips/intercept/Interception;->mInterceptionItems:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/hips/intercept/Interception;->mIsIgnoreWhiteListForSleep:Z

    return p0
.end method

.method static synthetic -set2(I)I
    .locals 0

    sput p0, Lcom/android/server/hips/intercept/Interception;->mWhiteListActiveTimeForSleep:I

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 65
    const/4 v1, -0x1

    sput v1, Lcom/android/server/hips/intercept/Interception;->mWhiteListActiveTimeForSleep:I

    .line 67
    sput-boolean v2, Lcom/android/server/hips/intercept/Interception;->mIsIgnoreWhiteListForSleep:Z

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/hips/intercept/Interception;->mWhiteListForSleep:Ljava/util/ArrayList;

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/hips/intercept/Interception;->mInterceptionRules:Ljava/util/ArrayList;

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/hips/intercept/Interception;->mLocalInterceptionRules:Ljava/util/ArrayList;

    .line 74
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/hips/intercept/Interception;->mInterceptionItems:Ljava/util/Map;

    .line 77
    const-string/jumbo v1, "/data/system/interception_rules"

    invoke-static {v1}, Lcom/android/server/hips/utils/HipsUtils;->readInfoFromFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 79
    .local v0, "rulesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 80
    invoke-static {v0, v2}, Lcom/android/server/hips/intercept/Interception;->setInterceptionRule(Ljava/util/ArrayList;Z)I

    .line 83
    :cond_0
    invoke-static {}, Lcom/android/server/hips/intercept/Interception;->readInterceptionItem()V

    .line 84
    invoke-static {}, Lcom/android/server/hips/intercept/Interception;->initLocalInterceptionRule()V

    .line 87
    new-instance v1, Lcom/android/server/hips/intercept/Interception$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/hips/intercept/Interception$1;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/hips/intercept/Interception;->mHandler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInterceptionTimeStamp()J
    .locals 2

    .prologue
    .line 467
    sget-wide v0, Lcom/android/server/hips/intercept/Interception;->mInterceptionTimeStamp:J

    return-wide v0
.end method

.method public static getInterceptionVersion()I
    .locals 1

    .prologue
    .line 475
    const/4 v0, 0x1

    return v0
.end method

.method private static initLocalInterceptionRule()V
    .locals 26

    .prologue
    .line 188
    new-instance v16, Lcom/android/server/hips/intercept/LocalInterceptionRule;

    invoke-direct/range {v16 .. v16}, Lcom/android/server/hips/intercept/LocalInterceptionRule;-><init>()V

    .line 189
    .local v16, "localInterceptionRule":Lcom/android/server/hips/intercept/LocalInterceptionRule;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/hips/intercept/LocalInterceptionRule;->getData()Ljava/util/ArrayList;

    move-result-object v15

    .line 190
    .local v15, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-nez v23, :cond_1

    .line 191
    :cond_0
    return-void

    .line 194
    :cond_1
    const/16 v21, 0x0

    .line 195
    .local v21, "usefulRulesCount":I
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v20, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "rule$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 198
    .local v18, "rule":Ljava/lang/String;
    if-nez v18, :cond_3

    .line 199
    const-string/jumbo v23, "Interception"

    .line 200
    const-string/jumbo v24, "initLocalInterceptionRule, the rule is null, stop to add."

    .line 199
    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 204
    :cond_3
    const-string/jumbo v23, "\\|\\|\\|"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 205
    .local v13, "items":[Ljava/lang/String;
    if-nez v13, :cond_4

    .line 206
    const-string/jumbo v23, "Interception"

    .line 207
    const-string/jumbo v24, "initLocalInterceptionRule, the items is null, stop to add."

    .line 206
    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 211
    :cond_4
    array-length v0, v13

    move/from16 v23, v0

    const/16 v24, 0x9

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_5

    .line 212
    const-string/jumbo v23, "Interception"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "initLocalInterceptionRule, the length("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 213
    array-length v0, v13

    move/from16 v25, v0

    .line 212
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 214
    const-string/jumbo v25, ") of the items is error, stop to add."

    .line 212
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    :cond_5
    new-instance v17, Landroid/util/ArrayMap;

    invoke-direct/range {v17 .. v17}, Landroid/util/ArrayMap;-><init>()V

    .line 219
    .local v17, "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    array-length v0, v13

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v12, v0, :cond_7

    .line 220
    aget-object v23, v13, v12

    if-eqz v23, :cond_6

    aget-object v23, v13, v12

    const-string/jumbo v24, "\\=\\=\\="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    if-nez v23, :cond_8

    .line 222
    :cond_6
    const-string/jumbo v23, "Interception"

    .line 223
    const-string/jumbo v24, "initLocalInterceptionRule, get the value for realItem error, stop to add."

    .line 222
    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/16 v17, 0x0

    .line 237
    .end local v17    # "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_7
    if-eqz v17, :cond_2

    .line 241
    add-int/lit8 v21, v21, 0x1

    .line 243
    const/16 v23, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 244
    .local v3, "runType":Ljava/lang/String;
    const/16 v23, 0x1

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 245
    .local v4, "callerPkg":Ljava/lang/String;
    const/16 v23, 0x2

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 246
    .local v5, "calleePkg":Ljava/lang/String;
    const/16 v23, 0x3

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 247
    .local v6, "calleeClass":Ljava/lang/String;
    const/16 v23, 0x4

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 248
    .local v7, "processName":Ljava/lang/String;
    const/16 v23, 0x5

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 249
    .local v8, "action":Ljava/lang/String;
    const/16 v23, 0x6

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 250
    .local v9, "data":Ljava/lang/String;
    const/16 v23, 0x7

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 251
    .local v10, "extras":Ljava/lang/String;
    const/16 v23, 0x8

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 253
    .local v11, "interception":Ljava/lang/String;
    new-instance v2, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    invoke-direct/range {v2 .. v11}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .local v2, "convertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 221
    .end local v2    # "convertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .end local v3    # "runType":Ljava/lang/String;
    .end local v4    # "callerPkg":Ljava/lang/String;
    .end local v5    # "calleePkg":Ljava/lang/String;
    .end local v6    # "calleeClass":Ljava/lang/String;
    .end local v7    # "processName":Ljava/lang/String;
    .end local v8    # "action":Ljava/lang/String;
    .end local v9    # "data":Ljava/lang/String;
    .end local v10    # "extras":Ljava/lang/String;
    .end local v11    # "interception":Ljava/lang/String;
    .restart local v17    # "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_8
    aget-object v23, v13, v12

    const-string/jumbo v24, "\\=\\=\\="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 228
    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v12}, Ljava/lang/Integer;-><init>(I)V

    .line 229
    .local v14, "key":Ljava/lang/Integer;
    aget-object v23, v13, v12

    const-string/jumbo v24, "\\=\\=\\="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    aget-object v22, v23, v24

    .line 230
    .local v22, "value":Ljava/lang/String;
    if-eqz v22, :cond_9

    const-string/jumbo v23, "*"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 231
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v14, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 233
    :cond_9
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v14, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 260
    .end local v12    # "i":I
    .end local v13    # "items":[Ljava/lang/String;
    .end local v14    # "key":Ljava/lang/Integer;
    .end local v17    # "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v18    # "rule":Ljava/lang/String;
    .end local v22    # "value":Ljava/lang/String;
    :cond_a
    sget-object v23, Lcom/android/server/hips/intercept/Interception;->mLocalInterceptionRules:Ljava/util/ArrayList;

    monitor-enter v23

    .line 261
    :try_start_0
    sput-object v20, Lcom/android/server/hips/intercept/Interception;->mLocalInterceptionRules:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v23

    .line 264
    const-string/jumbo v23, "Interception"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "initLocalInterceptionRule, usefulRulesCount: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void

    .line 260
    :catchall_0
    move-exception v24

    monitor-exit v23

    throw v24
.end method

.method public static isIntercept(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;ILcom/android/server/hips/intercept/Interception;)Z
    .locals 8
    .param p0, "callerPkg"    # Ljava/lang/String;
    .param p1, "calleePkg"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "runType"    # Ljava/lang/String;
    .param p5, "realCallingPid"    # I
    .param p6, "interceptType"    # Lcom/android/server/hips/intercept/Interception;

    .prologue
    const/4 v7, 0x1

    .line 451
    invoke-virtual {p6, p0, p1, p3, p4}, Lcom/android/server/hips/intercept/Interception;->isInterceptAsUsual(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v4

    .local v4, "isInterceptAsUsual":Z
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v5, p5

    .line 454
    invoke-static/range {v0 .. v5}, Lcom/android/server/hips/intercept/Interception;->isInterceptByRule(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;ZI)I

    move-result v6

    .line 457
    .local v6, "isInterceptByRule":I
    if-ne v6, v7, :cond_0

    .line 458
    const/4 v0, 0x0

    return v0

    .line 459
    :cond_0
    const/4 v0, -0x1

    if-ne v6, v0, :cond_1

    .line 460
    return v7

    .line 462
    :cond_1
    return v4
.end method

.method private static isInterceptByLocalRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "runType"    # Ljava/lang/String;
    .param p1, "callerPkg2"    # Ljava/lang/String;
    .param p2, "calleePkg"    # Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "calleeClass"    # Ljava/lang/String;
    .param p5, "action"    # Ljava/lang/String;
    .param p6, "data"    # Ljava/lang/String;
    .param p7, "extras"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 766
    const/4 v0, 0x0

    .line 768
    .local v0, "result":I
    sget-object v3, Lcom/android/server/hips/intercept/Interception;->mLocalInterceptionRules:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "rule$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 769
    .local v1, "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    iget-object v3, v1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mRunType:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lcom/android/server/hips/intercept/Interception;->isRuleMatch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 772
    iget-object v3, v1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCallerPkg:Ljava/lang/String;

    invoke-static {p1, v3, v4}, Lcom/android/server/hips/intercept/Interception;->isRuleMatch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 775
    iget-object v3, v1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    invoke-static {p2, v3, v4}, Lcom/android/server/hips/intercept/Interception;->isRuleMatch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 778
    iget-object v3, v1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mProcessName:Ljava/lang/String;

    invoke-static {p3, v3, v4}, Lcom/android/server/hips/intercept/Interception;->isRuleMatch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 781
    iget-object v3, v1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleeClass:Ljava/lang/String;

    invoke-static {p4, v3, v4}, Lcom/android/server/hips/intercept/Interception;->isRuleMatch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 784
    iget-object v3, v1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mAction:Ljava/lang/String;

    invoke-static {p5, v3, v4}, Lcom/android/server/hips/intercept/Interception;->isRuleMatch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 787
    iget-object v3, v1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mData:Ljava/lang/String;

    invoke-static {p6, v3, v5}, Lcom/android/server/hips/intercept/Interception;->isRuleMatch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 790
    iget-object v3, v1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mExtras:Ljava/lang/String;

    invoke-static {p7, v3, v5}, Lcom/android/server/hips/intercept/Interception;->isRuleMatch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 794
    iget-boolean v3, v1, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIntercept:Z

    if-eqz v3, :cond_2

    .line 795
    const/4 v0, -0x1

    .line 802
    .end local v1    # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_1
    :goto_0
    return v0

    .line 797
    .restart local v1    # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isInterceptByRule(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;ZI)I
    .locals 16
    .param p0, "callerPkg"    # Ljava/lang/String;
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "runType"    # Ljava/lang/String;
    .param p4, "isInterceptAsUsual"    # Z
    .param p5, "realCallingPid"    # I

    .prologue
    .line 648
    const/4 v2, 0x0

    .line 649
    .local v2, "callerPkg2":Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 650
    move-object/from16 v2, p0

    .line 653
    .end local v2    # "callerPkg2":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    .line 654
    .local v3, "calleePkg":Ljava/lang/String;
    const/4 v5, 0x0

    .line 655
    .local v5, "calleeClass":Ljava/lang/String;
    const/4 v6, 0x0

    .line 656
    .local v6, "action":Ljava/lang/String;
    const/4 v7, 0x0

    .line 657
    .local v7, "data":Ljava/lang/String;
    const/4 v8, 0x0

    .line 659
    .local v8, "extras":Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 660
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 662
    .local v3, "calleePkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    .line 665
    .end local v3    # "calleePkg":Ljava/lang/String;
    .end local v5    # "calleeClass":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 666
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 668
    .end local v7    # "data":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 669
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v8

    .line 672
    .end local v8    # "extras":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 675
    .end local v6    # "action":Ljava/lang/String;
    :cond_4
    const/4 v12, 0x0

    .line 676
    .local v12, "result":I
    const/4 v10, 0x0

    .line 677
    .local v10, "isMatch":Z
    const/4 v9, 0x0

    .line 679
    .local v9, "interception":Z
    sget-object v1, Lcom/android/server/hips/intercept/Interception;->mInterceptionRules:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "rule$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    .line 680
    .local v13, "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    iget-object v1, v13, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mRunType:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1, v4}, Lcom/android/server/hips/intercept/Interception;->isRuleMatch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 683
    iget-object v1, v13, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCallerPkg:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v1, v4}, Lcom/android/server/hips/intercept/Interception;->isRuleMatch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 686
    iget-object v1, v13, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleePkg:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lcom/android/server/hips/intercept/Interception;->isRuleMatch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 689
    iget-object v1, v13, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mProcessName:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v1, v4}, Lcom/android/server/hips/intercept/Interception;->isRuleMatch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 692
    iget-object v1, v13, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mCalleeClass:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v5, v1, v4}, Lcom/android/server/hips/intercept/Interception;->isRuleMatch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 695
    iget-object v1, v13, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mAction:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v6, v1, v4}, Lcom/android/server/hips/intercept/Interception;->isRuleMatch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 698
    iget-object v1, v13, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mData:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v7, v1, v4}, Lcom/android/server/hips/intercept/Interception;->isRuleMatch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 701
    iget-object v1, v13, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mExtras:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v8, v1, v4}, Lcom/android/server/hips/intercept/Interception;->isRuleMatch(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 705
    iget-boolean v1, v13, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIntercept:Z

    if-eqz v1, :cond_11

    .line 706
    const/4 v12, -0x1

    .line 710
    :goto_0
    const/4 v10, 0x1

    .line 711
    iget-boolean v9, v13, Lcom/android/server/hips/intercept/Interception$RulesConvertor;->mIntercept:Z

    .end local v9    # "interception":Z
    .end local v13    # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    :cond_6
    move-object/from16 v1, p3

    move-object/from16 v4, p1

    .line 715
    invoke-static/range {v1 .. v8}, Lcom/android/server/hips/intercept/Interception;->isInterceptByLocalRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 718
    .local v11, "localResult":I
    if-nez v12, :cond_7

    if-eqz v11, :cond_7

    .line 719
    const/4 v10, 0x1

    .line 720
    const/4 v1, -0x1

    if-ne v11, v1, :cond_12

    const/4 v9, 0x1

    .line 721
    .restart local v9    # "interception":Z
    :goto_1
    move v12, v11

    .line 722
    const-string/jumbo v1, "Interception"

    .line 723
    const-string/jumbo v4, "isInterceptByRule, the air rule didn\'t match, but the local rule matched."

    .line 722
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    .end local v9    # "interception":Z
    :cond_7
    if-nez p4, :cond_8

    if-eqz v10, :cond_14

    if-eqz v9, :cond_14

    .line 727
    :cond_8
    const-string/jumbo v4, "Interception"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "isInterceptByRule realCallingPid: "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 728
    const-string/jumbo v15, " isInterceptAsUsual: "

    .line 727
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 729
    const-string/jumbo v15, " isMatch: "

    .line 727
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 729
    const-string/jumbo v15, ", runType==="

    .line 727
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 730
    if-nez p3, :cond_9

    const-string/jumbo p3, "*"

    .line 727
    .end local p3    # "runType":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 730
    const-string/jumbo v15, "|||"

    .line 727
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 731
    const-string/jumbo v15, "callerPkg==="

    .line 727
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 731
    if-nez v2, :cond_a

    const-string/jumbo v2, "*"

    .line 727
    :cond_a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 732
    const-string/jumbo v15, "|||"

    .line 727
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 732
    const-string/jumbo v15, "calleePkg==="

    .line 727
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 733
    if-nez v3, :cond_b

    const-string/jumbo v3, "*"

    .line 727
    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 733
    const-string/jumbo v15, "|||"

    .line 727
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 734
    const-string/jumbo v15, "calleeClass==="

    .line 727
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 735
    if-nez v5, :cond_c

    const-string/jumbo v5, "*"

    .line 727
    :cond_c
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 735
    const-string/jumbo v15, "|||"

    .line 727
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 736
    const-string/jumbo v15, "processName==="

    .line 727
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 737
    if-nez p1, :cond_d

    const-string/jumbo p1, "*"

    .line 727
    .end local p1    # "processName":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 737
    const-string/jumbo v15, "|||"

    .line 727
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 738
    const-string/jumbo v15, "action==="

    .line 727
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 738
    if-nez v6, :cond_e

    const-string/jumbo v6, "*"

    .line 727
    :cond_e
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 738
    const-string/jumbo v15, "|||"

    .line 727
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 739
    const-string/jumbo v15, "data==="

    .line 727
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 739
    if-nez v7, :cond_f

    const-string/jumbo v7, "*"

    .line 727
    :cond_f
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 739
    const-string/jumbo v15, "|||"

    .line 727
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 740
    const-string/jumbo v15, "extras==="

    .line 727
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 740
    if-nez v8, :cond_10

    const-string/jumbo v8, "*"

    .line 727
    :cond_10
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 740
    const-string/jumbo v15, "|||"

    .line 727
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 741
    const-string/jumbo v15, "interception==="

    .line 727
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 741
    if-eqz v9, :cond_13

    const-string/jumbo v1, "true"

    .line 727
    :goto_2
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :goto_3
    return v12

    .line 708
    .end local v11    # "localResult":I
    .restart local v9    # "interception":Z
    .restart local v13    # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .restart local p1    # "processName":Ljava/lang/String;
    .restart local p3    # "runType":Ljava/lang/String;
    :cond_11
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 720
    .end local v9    # "interception":Z
    .end local v13    # "rule":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .restart local v11    # "localResult":I
    :cond_12
    const/4 v9, 0x0

    .restart local v9    # "interception":Z
    goto/16 :goto_1

    .line 741
    .end local v9    # "interception":Z
    .end local p1    # "processName":Ljava/lang/String;
    .end local p3    # "runType":Ljava/lang/String;
    :cond_13
    const-string/jumbo v1, "false"

    goto :goto_2

    .line 743
    .restart local p1    # "processName":Ljava/lang/String;
    .restart local p3    # "runType":Ljava/lang/String;
    :cond_14
    const-string/jumbo v4, "Interception"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "isInterceptByRule realCallingPid: "

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 744
    const-string/jumbo v15, " isInterceptAsUsual: "

    .line 743
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 745
    const-string/jumbo v15, " isMatch: "

    .line 743
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 745
    const-string/jumbo v15, ", runType==="

    .line 743
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 746
    if-nez p3, :cond_15

    const-string/jumbo p3, "*"

    .line 743
    .end local p3    # "runType":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 746
    const-string/jumbo v15, "|||"

    .line 743
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 747
    const-string/jumbo v15, "callerPkg==="

    .line 743
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 747
    if-nez v2, :cond_16

    const-string/jumbo v2, "*"

    .line 743
    :cond_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 748
    const-string/jumbo v15, "|||"

    .line 743
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 748
    const-string/jumbo v15, "calleePkg==="

    .line 743
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 749
    if-nez v3, :cond_17

    const-string/jumbo v3, "*"

    .line 743
    :cond_17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 749
    const-string/jumbo v15, "|||"

    .line 743
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 750
    const-string/jumbo v15, "calleeClass==="

    .line 743
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 751
    if-nez v5, :cond_18

    const-string/jumbo v5, "*"

    .line 743
    :cond_18
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 751
    const-string/jumbo v15, "|||"

    .line 743
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 752
    const-string/jumbo v15, "processName==="

    .line 743
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 753
    if-nez p1, :cond_19

    const-string/jumbo p1, "*"

    .line 743
    .end local p1    # "processName":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 753
    const-string/jumbo v15, "|||"

    .line 743
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 754
    const-string/jumbo v15, "action==="

    .line 743
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 754
    if-nez v6, :cond_1a

    const-string/jumbo v6, "*"

    .line 743
    :cond_1a
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 754
    const-string/jumbo v15, "|||"

    .line 743
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 755
    const-string/jumbo v15, "data==="

    .line 743
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 755
    if-nez v7, :cond_1b

    const-string/jumbo v7, "*"

    .line 743
    :cond_1b
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 755
    const-string/jumbo v15, "|||"

    .line 743
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 756
    const-string/jumbo v15, "extras==="

    .line 743
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 756
    if-nez v8, :cond_1c

    const-string/jumbo v8, "*"

    .line 743
    :cond_1c
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 756
    const-string/jumbo v15, "|||"

    .line 743
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 757
    const-string/jumbo v15, "interception==="

    .line 743
    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 757
    if-eqz v9, :cond_1d

    const-string/jumbo v1, "true"

    .line 743
    :goto_4
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 757
    :cond_1d
    const-string/jumbo v1, "false"

    goto :goto_4
.end method

.method private static isRuleMatch(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "item"    # Ljava/lang/String;
    .param p1, "rule"    # Ljava/lang/String;
    .param p2, "isContain"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 807
    if-nez p1, :cond_0

    .line 808
    return v1

    .line 810
    :cond_0
    if-nez p0, :cond_1

    .line 811
    return v2

    .line 813
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 814
    return v1

    .line 817
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 818
    return v1

    .line 823
    :cond_3
    return v2
.end method

.method private static readInterceptionItem()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 141
    const-string/jumbo v10, "/data/system/interception_items"

    invoke-static {v10}, Lcom/android/server/hips/utils/HipsUtils;->readInfoFromFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 143
    .local v6, "itemsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 144
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 145
    .local v8, "tempMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "items$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 146
    .local v4, "items":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 147
    const-string/jumbo v10, "\\|\\|\\|"

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 148
    .local v3, "itemArray":[Ljava/lang/String;
    if-nez v3, :cond_1

    .line 149
    const-string/jumbo v10, "Interception"

    .line 150
    const-string/jumbo v11, "readInterceptionItem, the itemArray is null, stop to add."

    .line 149
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :cond_1
    array-length v10, v3

    const/4 v11, 0x2

    if-eq v10, v11, :cond_2

    .line 155
    const-string/jumbo v10, "Interception"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "readInterceptionItem, the length("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 156
    array-length v12, v3

    .line 155
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 157
    const-string/jumbo v12, ") of itemArray is error, stop to add."

    .line 155
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    :cond_2
    aget-object v1, v3, v13

    .line 162
    .local v1, "item1":Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v2, v3, v10

    .line 164
    .local v2, "item2":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 165
    move-object v7, v1

    .line 166
    .local v7, "key":Ljava/lang/String;
    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 168
    .local v9, "value":Ljava/lang/Integer;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 175
    invoke-interface {v8, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "Interception"

    .line 171
    const-string/jumbo v11, "readInterceptionItem, unable to convert string to int, stop to add."

    .line 170
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "item1":Ljava/lang/String;
    .end local v2    # "item2":Ljava/lang/String;
    .end local v3    # "itemArray":[Ljava/lang/String;
    .end local v4    # "items":Ljava/lang/String;
    .end local v7    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/Integer;
    :cond_3
    sget-object v11, Lcom/android/server/hips/intercept/Interception;->mInterceptionItems:Ljava/util/Map;

    monitor-enter v11

    .line 181
    :try_start_1
    sput-object v8, Lcom/android/server/hips/intercept/Interception;->mInterceptionItems:Ljava/util/Map;

    .line 182
    invoke-static {}, Lcom/android/server/shrinker/Shrinker;->getInstance()Lcom/android/server/shrinker/Shrinker;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/server/shrinker/Shrinker;->setIntercept(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v11

    .line 140
    .end local v5    # "items$iterator":Ljava/util/Iterator;
    .end local v8    # "tempMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4
    return-void

    .line 180
    .restart local v5    # "items$iterator":Ljava/util/Iterator;
    .restart local v8    # "tempMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v10

    monitor-exit v11

    throw v10
.end method

.method public static setInterceptionRule(Ljava/util/ArrayList;Z)I
    .locals 30
    .param p1, "fromStorage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    .line 508
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 509
    const-string/jumbo v27, "Interception"

    const-string/jumbo v28, "setInterceptionRule the list is null, return -1."

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/16 v27, -0x1

    return v27

    .line 513
    :cond_0
    const-string/jumbo v24, ""

    .line 514
    .local v24, "usefulRules":Ljava/lang/String;
    const-string/jumbo v13, ""

    .line 515
    .local v13, "currentRules":Ljava/lang/String;
    const/16 v25, 0x0

    .line 516
    .local v25, "usefulRulesCount":I
    const/4 v14, 0x0

    .line 517
    .local v14, "currentRulesCount":I
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 519
    .local v23, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/hips/intercept/Interception$RulesConvertor;>;"
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "rule$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_d

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 520
    .local v21, "rule":Ljava/lang/String;
    if-nez v21, :cond_2

    .line 521
    const-string/jumbo v27, "Interception"

    const-string/jumbo v28, "setInterceptionRule the rule is null, stop to add."

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 525
    :cond_2
    const-string/jumbo v27, "\\|\\|\\|"

    move-object/from16 v0, v21

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 526
    .local v18, "items":[Ljava/lang/String;
    if-nez v18, :cond_3

    .line 527
    const-string/jumbo v27, "Interception"

    .line 528
    const-string/jumbo v28, "setInterceptionRule the items is null, stop to add."

    .line 527
    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 532
    :cond_3
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x9

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_4

    .line 533
    const-string/jumbo v27, "Interception"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "setInterceptionRule the length("

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 534
    const-string/jumbo v29, ") of the items is error, stop to add."

    .line 533
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 538
    :cond_4
    new-instance v20, Landroid/util/ArrayMap;

    invoke-direct/range {v20 .. v20}, Landroid/util/ArrayMap;-><init>()V

    .line 539
    .local v20, "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v15, v0, :cond_6

    .line 540
    aget-object v27, v18, v15

    if-eqz v27, :cond_5

    aget-object v27, v18, v15

    const-string/jumbo v28, "\\=\\=\\="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    if-nez v27, :cond_b

    .line 542
    :cond_5
    const-string/jumbo v27, "Interception"

    .line 543
    const-string/jumbo v28, "setInterceptionRule get the value for realItem error, stop to add."

    .line 542
    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/16 v20, 0x0

    .line 557
    .end local v20    # "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_6
    if-eqz v20, :cond_1

    .line 561
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "###"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 562
    add-int/lit8 v25, v25, 0x1

    .line 564
    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 565
    .local v4, "runType":Ljava/lang/String;
    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 566
    .local v5, "callerPkg":Ljava/lang/String;
    const/16 v27, 0x2

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 567
    .local v6, "calleePkg":Ljava/lang/String;
    const/16 v27, 0x3

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 568
    .local v7, "calleeClass":Ljava/lang/String;
    const/16 v27, 0x4

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 569
    .local v8, "processName":Ljava/lang/String;
    const/16 v27, 0x5

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 570
    .local v9, "action":Ljava/lang/String;
    const/16 v27, 0x6

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 571
    .local v10, "data":Ljava/lang/String;
    const/16 v27, 0x7

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 572
    .local v11, "extras":Ljava/lang/String;
    const/16 v27, 0x8

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 574
    .local v12, "interception":Ljava/lang/String;
    const/16 v17, 0x0

    .line 575
    .local v17, "isCallerPkgInstalled":Z
    const/16 v16, 0x0

    .line 577
    .local v16, "isCalleePkgInstalled":Z
    if-eqz v5, :cond_7

    .line 578
    invoke-static {v5}, Lcom/android/server/hips/utils/HipsUtils;->isPkgInstalled(Ljava/lang/String;)Z

    move-result v17

    .line 581
    .end local v17    # "isCallerPkgInstalled":Z
    :cond_7
    if-eqz v6, :cond_8

    .line 582
    invoke-static {v6}, Lcom/android/server/hips/utils/HipsUtils;->isPkgInstalled(Ljava/lang/String;)Z

    move-result v16

    .line 585
    .end local v16    # "isCalleePkgInstalled":Z
    :cond_8
    if-nez v5, :cond_9

    if-eqz v6, :cond_a

    .line 586
    :cond_9
    if-nez v17, :cond_a

    if-eqz v16, :cond_1

    .line 591
    :cond_a
    new-instance v3, Lcom/android/server/hips/intercept/Interception$RulesConvertor;

    invoke-direct/range {v3 .. v12}, Lcom/android/server/hips/intercept/Interception$RulesConvertor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    .local v3, "convertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 597
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "###"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 598
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 541
    .end local v3    # "convertor":Lcom/android/server/hips/intercept/Interception$RulesConvertor;
    .end local v4    # "runType":Ljava/lang/String;
    .end local v5    # "callerPkg":Ljava/lang/String;
    .end local v6    # "calleePkg":Ljava/lang/String;
    .end local v7    # "calleeClass":Ljava/lang/String;
    .end local v8    # "processName":Ljava/lang/String;
    .end local v9    # "action":Ljava/lang/String;
    .end local v10    # "data":Ljava/lang/String;
    .end local v11    # "extras":Ljava/lang/String;
    .end local v12    # "interception":Ljava/lang/String;
    .restart local v20    # "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_b
    aget-object v27, v18, v15

    const-string/jumbo v28, "\\=\\=\\="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_5

    .line 548
    new-instance v19, Ljava/lang/Integer;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Ljava/lang/Integer;-><init>(I)V

    .line 549
    .local v19, "key":Ljava/lang/Integer;
    aget-object v27, v18, v15

    const-string/jumbo v28, "\\=\\=\\="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x1

    aget-object v26, v27, v28

    .line 550
    .local v26, "value":Ljava/lang/String;
    if-eqz v26, :cond_c

    const-string/jumbo v27, "*"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_c

    .line 551
    const/16 v27, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 553
    :cond_c
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 601
    .end local v15    # "i":I
    .end local v18    # "items":[Ljava/lang/String;
    .end local v19    # "key":Ljava/lang/Integer;
    .end local v20    # "realItem":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v21    # "rule":Ljava/lang/String;
    .end local v26    # "value":Ljava/lang/String;
    :cond_d
    sget-object v27, Lcom/android/server/hips/intercept/Interception;->mInterceptionRules:Ljava/util/ArrayList;

    monitor-enter v27

    .line 602
    :try_start_0
    sput-object v23, Lcom/android/server/hips/intercept/Interception;->mInterceptionRules:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v27

    .line 605
    const-string/jumbo v27, "Interception"

    .line 606
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "setInterceptionRule set list successfully, currentRulesCount: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    .line 607
    const-string/jumbo v29, " usefulRulesCount: "

    .line 606
    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 605
    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    if-nez p1, :cond_e

    if-eqz v24, :cond_e

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_e

    .line 611
    const-string/jumbo v27, "/data/system/interception_rules"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/server/hips/utils/HipsUtils;->saveInfoToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    :cond_e
    if-eqz v13, :cond_f

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v27

    if-lez v27, :cond_f

    .line 616
    const-string/jumbo v27, "/data/system/current_interception_rules"

    move-object/from16 v0, v27

    invoke-static {v13, v0}, Lcom/android/server/hips/utils/HipsUtils;->saveInfoToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :cond_f
    return v25

    .line 601
    :catchall_0
    move-exception v28

    monitor-exit v27

    throw v28
.end method

.method public static setInterceptionTimeStamp(J)V
    .locals 0
    .param p0, "timeStamp"    # J

    .prologue
    .line 471
    sput-wide p0, Lcom/android/server/hips/intercept/Interception;->mInterceptionTimeStamp:J

    .line 470
    return-void
.end method

.method public static setWhiteListForSleep(Ljava/util/ArrayList;II)V
    .locals 2
    .param p1, "time"    # I
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 480
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 481
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 482
    :cond_0
    const-string/jumbo v0, "Interception"

    .line 483
    const-string/jumbo v1, "setWhiteListForSleep, type: start, the list is null or empty, return."

    .line 482
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    return-void

    .line 487
    :cond_1
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mWhiteListForSleep:Ljava/util/ArrayList;

    monitor-enter v0

    .line 488
    :try_start_0
    sput-object p0, Lcom/android/server/hips/intercept/Interception;->mWhiteListForSleep:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 491
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 492
    sput p1, Lcom/android/server/hips/intercept/Interception;->mWhiteListActiveTimeForSleep:I

    .line 494
    sput-boolean v1, Lcom/android/server/hips/intercept/Interception;->mIsIgnoreWhiteListForSleep:Z

    .line 495
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 479
    :cond_2
    :goto_0
    return-void

    .line 487
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 497
    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 498
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 499
    sput p1, Lcom/android/server/hips/intercept/Interception;->mWhiteListActiveTimeForSleep:I

    .line 501
    sput-boolean v1, Lcom/android/server/hips/intercept/Interception;->mIsIgnoreWhiteListForSleep:Z

    .line 502
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public static updateInterceptionItem(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 292
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.meizu.safe.alphame.data"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    const-string/jumbo v1, "com.meizu.safe"

    .line 292
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 293
    new-instance v1, Lcom/android/server/hips/intercept/Interception$2;

    invoke-direct {v1, p0}, Lcom/android/server/hips/intercept/Interception$2;-><init>(Landroid/content/Context;)V

    .line 385
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x1

    .line 292
    invoke-virtual {p0, v0, v1, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 291
    return-void
.end method

.method public static updateInterceptionRule(Ljava/lang/String;Z)V
    .locals 12
    .param p0, "pkgName"    # Ljava/lang/String;
    .param p1, "isReadAllRules"    # Z

    .prologue
    const/4 v8, 0x0

    .line 390
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 391
    :cond_0
    const-string/jumbo v8, "Interception"

    .line 392
    const-string/jumbo v9, "updateInterceptionRules, the pkgName is null or empty, return."

    .line 391
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    return-void

    .line 396
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .local v7, "rulesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p1, :cond_3

    .line 400
    new-instance v6, Ljava/io/File;

    const-string/jumbo v9, "/data/system/interception_rules"

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    .local v6, "rulesFile":Ljava/io/File;
    :goto_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 406
    const/4 v2, 0x0

    .line 408
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/FileReader;

    invoke-direct {v9, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "allRules":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 411
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "calleePkg==="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|||"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 412
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "callerPkg==="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "|||"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 411
    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    .line 410
    if-eqz v9, :cond_4

    .line 413
    :cond_2
    const-string/jumbo v9, "Interception"

    .line 414
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateInterceptionRules, the all rules contain the pkg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 415
    const-string/jumbo v11, ", begin to update..."

    .line 414
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 413
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const-string/jumbo v9, "\\#\\#\\#"

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 417
    .local v5, "rules":[Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 418
    array-length v9, v5

    :goto_1
    if-ge v8, v9, :cond_5

    aget-object v4, v5, v8

    .line 419
    .local v4, "rule":Ljava/lang/String;
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 418
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 402
    .end local v0    # "allRules":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "rule":Ljava/lang/String;
    .end local v5    # "rules":[Ljava/lang/String;
    .end local v6    # "rulesFile":Ljava/io/File;
    :cond_3
    new-instance v6, Ljava/io/File;

    const-string/jumbo v9, "/data/system/current_interception_rules"

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v6    # "rulesFile":Ljava/io/File;
    goto/16 :goto_0

    .line 423
    .restart local v0    # "allRules":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_4
    :try_start_2
    const-string/jumbo v8, "Interception"

    .line 424
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateInterceptionRules, the all rules do not contain the pkg: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 425
    const-string/jumbo v10, ", stop to update!!"

    .line 424
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 423
    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 432
    :cond_5
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 443
    .end local v0    # "allRules":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :goto_2
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 444
    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/server/hips/intercept/Interception;->setInterceptionRule(Ljava/util/ArrayList;Z)I

    .line 389
    :cond_6
    return-void

    .line 433
    .restart local v0    # "allRules":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 434
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "Interception"

    .line 435
    const-string/jumbo v9, "updateInterceptionRules, unable to close buffered reader!!"

    .line 434
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 427
    .end local v0    # "allRules":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 428
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    const-string/jumbo v8, "Interception"

    .line 429
    const-string/jumbo v9, "updateInterceptionRules, can not update the interception rules!!"

    .line 428
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 432
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 433
    :catch_2
    move-exception v1

    .line 434
    const-string/jumbo v8, "Interception"

    .line 435
    const-string/jumbo v9, "updateInterceptionRules, unable to close buffered reader!!"

    .line 434
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 430
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 432
    :goto_4
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 430
    :goto_5
    throw v8

    .line 433
    :catch_3
    move-exception v1

    .line 434
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "Interception"

    .line 435
    const-string/jumbo v10, "updateInterceptionRules, unable to close buffered reader!!"

    .line 434
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 439
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    const-string/jumbo v8, "Interception"

    .line 440
    const-string/jumbo v9, "updateInterceptionRules, the rules file does not exists!!"

    .line 439
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 430
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 427
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    goto :goto_3
.end method


# virtual methods
.method public getInterceptionItemState(Ljava/lang/String;)I
    .locals 5
    .param p1, "calleePkg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 272
    sget-object v1, Lcom/android/server/hips/intercept/Interception;->mInterceptionItems:Ljava/util/Map;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/hips/intercept/Interception;->mInterceptionItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 273
    :cond_0
    return v4

    .line 276
    :cond_1
    sget-object v1, Lcom/android/server/hips/intercept/Interception;->mInterceptionItems:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 277
    const-string/jumbo v1, "Interception"

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getInterceptionItemState, mInterceptionItems do not contain calleePkg("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 279
    const-string/jumbo v3, "), return 0."

    .line 278
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 277
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return v4

    .line 283
    :cond_2
    sget-object v1, Lcom/android/server/hips/intercept/Interception;->mInterceptionItems:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 284
    .local v0, "state":Ljava/lang/Integer;
    if-eqz v0, :cond_3

    .line 285
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 288
    :cond_3
    return v4
.end method

.method protected isAllowByWhiteListForSleep(Ljava/lang/String;)Z
    .locals 3
    .param p1, "calleePkg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 115
    sget-boolean v0, Lcom/android/server/hips/intercept/Interception;->mIsIgnoreWhiteListForSleep:Z

    if-eqz v0, :cond_0

    .line 116
    const-string/jumbo v0, "Interception"

    .line 117
    const-string/jumbo v1, "isAllowByWhiteListForSleep, the mIsIgnoreWhiteListForSleep is ture, return false."

    .line 116
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return v2

    .line 121
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 122
    :cond_1
    const-string/jumbo v0, "Interception"

    .line 123
    const-string/jumbo v1, "isAllowByWhiteListForSleep, the calleePkg is null or empty, return false."

    .line 122
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return v2

    .line 127
    :cond_2
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mWhiteListForSleep:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mWhiteListForSleep:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 128
    :cond_3
    const-string/jumbo v0, "Interception"

    .line 129
    const-string/jumbo v1, "isAllowByWhiteListForSleep, the white list for sleep is null or empty, return false."

    .line 128
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return v2

    .line 133
    :cond_4
    sget-object v0, Lcom/android/server/hips/intercept/Interception;->mWhiteListForSleep:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 134
    const/4 v0, 0x1

    return v0

    .line 137
    :cond_5
    return v2
.end method

.method protected isAlwaysAllow(Ljava/lang/String;)Z
    .locals 4
    .param p1, "calleePkg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 624
    invoke-static {p1}, Lcom/android/server/hips/utils/HipsUtils;->isSystemApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    const-string/jumbo v0, "Interception"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAlwaysAllow the calleePkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 626
    const-string/jumbo v2, " is system application, return true."

    .line 625
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    return v3

    .line 630
    :cond_0
    invoke-static {p1}, Lcom/android/server/hips/utils/HipsUtils;->isHasSystemSignature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 631
    const-string/jumbo v0, "Interception"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAlwaysAllow, the calleePkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 632
    const-string/jumbo v2, " has system signature, retrun true."

    .line 631
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    return v3

    .line 636
    :cond_1
    invoke-static {p1}, Lcom/android/server/hips/utils/HipsUtils;->isProcessRunning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 637
    const-string/jumbo v0, "Interception"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAlwaysAllow, the calleePkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 638
    const-string/jumbo v2, " is already running, return true."

    .line 637
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    return v3

    .line 642
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isInterceptAsUsual(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)Z
.end method
