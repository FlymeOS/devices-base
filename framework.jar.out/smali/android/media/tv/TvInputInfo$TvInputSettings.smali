.class public final Landroid/media/tv/TvInputInfo$TvInputSettings;
.super Ljava/lang/Object;
.source "TvInputInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TvInputSettings"
.end annotation


# static fields
.field private static final CUSTOM_NAME_SEPARATOR:Ljava/lang/String; = ","

.field private static final TV_INPUT_SEPARATOR:Ljava/lang/String; = ":"


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-static {p0, p1, p2}, Landroid/media/tv/TvInputInfo$TvInputSettings;->isHidden(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-static {p0, p1, p2}, Landroid/media/tv/TvInputInfo$TvInputSettings;->getCustomLabel(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureValidField(Ljava/lang/String;)V
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 1118
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " should not empty "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1117
    :cond_0
    return-void
.end method

.method private static getCustomLabel(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 994
    invoke-static {p0, p2}, Landroid/media/tv/TvInputInfo$TvInputSettings;->getCustomLabels(Landroid/content/Context;I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getCustomLabels(Landroid/content/Context;I)Ljava/util/Map;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1029
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v7, "tv_input_custom_labels"

    .line 1028
    invoke-static {v5, v7, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1030
    .local v0, "labelsString":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1031
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1032
    return-object v1

    .line 1034
    :cond_0
    const-string/jumbo v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1035
    .local v4, "pairs":[Ljava/lang/String;
    array-length v7, v4

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v3, v4, v5

    .line 1036
    .local v3, "pairString":Ljava/lang/String;
    const-string/jumbo v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1037
    .local v2, "pair":[Ljava/lang/String;
    aget-object v8, v2, v6

    invoke-static {v8}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v2, v9

    invoke-static {v9}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1035
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1039
    .end local v2    # "pair":[Ljava/lang/String;
    .end local v3    # "pairString":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static getHiddenTvInputIds(Landroid/content/Context;I)Ljava/util/Set;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1007
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "tv_input_hidden_inputs"

    .line 1006
    invoke-static {v4, v5, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1008
    .local v0, "hiddenIdsString":Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1009
    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1010
    return-object v3

    .line 1012
    :cond_0
    const-string/jumbo v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1013
    .local v2, "ids":[Ljava/lang/String;
    const/4 v4, 0x0

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v2, v4

    .line 1014
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1013
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1016
    .end local v1    # "id":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private static isHidden(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 990
    invoke-static {p0, p2}, Landroid/media/tv/TvInputInfo$TvInputSettings;->getHiddenTvInputIds(Landroid/content/Context;I)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static putCustomLabels(Landroid/content/Context;Ljava/util/Map;I)V
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1090
    .local p1, "customLabels":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1091
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x1

    .line 1092
    .local v3, "firstItem":Z
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1093
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/media/tv/TvInputInfo$TvInputSettings;->ensureValidField(Ljava/lang/String;)V

    .line 1094
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/media/tv/TvInputInfo$TvInputSettings;->ensureValidField(Ljava/lang/String;)V

    .line 1095
    if-eqz v3, :cond_0

    .line 1096
    const/4 v3, 0x0

    .line 1100
    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    const-string/jumbo v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1098
    :cond_0
    const-string/jumbo v8, ":"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1104
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 1105
    const-string/jumbo v9, "tv_input_custom_labels"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1104
    invoke-static {v8, v9, v10, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1108
    const-string/jumbo v8, "tv_input"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/tv/TvInputManager;

    .line 1109
    .local v7, "tm":Landroid/media/tv/TvInputManager;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "inputId$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1110
    .local v5, "inputId":Ljava/lang/String;
    invoke-virtual {v7, v5}, Landroid/media/tv/TvInputManager;->getTvInputInfo(Ljava/lang/String;)Landroid/media/tv/TvInputInfo;

    move-result-object v4

    .line 1111
    .local v4, "info":Landroid/media/tv/TvInputInfo;
    if-eqz v4, :cond_2

    .line 1112
    invoke-virtual {v7, v4}, Landroid/media/tv/TvInputManager;->updateTvInputInfo(Landroid/media/tv/TvInputInfo;)V

    goto :goto_2

    .line 1089
    .end local v4    # "info":Landroid/media/tv/TvInputInfo;
    .end local v5    # "inputId":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public static putHiddenTvInputs(Landroid/content/Context;Ljava/util/Set;I)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1054
    .local p1, "hiddenInputIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1055
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 1056
    .local v1, "firstItem":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "inputId$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1057
    .local v3, "inputId":Ljava/lang/String;
    invoke-static {v3}, Landroid/media/tv/TvInputInfo$TvInputSettings;->ensureValidField(Ljava/lang/String;)V

    .line 1058
    if-eqz v1, :cond_0

    .line 1059
    const/4 v1, 0x0

    .line 1063
    :goto_1
    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1061
    :cond_0
    const-string/jumbo v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1065
    .end local v3    # "inputId":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1066
    const-string/jumbo v7, "tv_input_hidden_inputs"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1065
    invoke-static {v6, v7, v8, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1069
    const-string/jumbo v6, "tv_input"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/tv/TvInputManager;

    .line 1070
    .local v5, "tm":Landroid/media/tv/TvInputManager;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1071
    .restart local v3    # "inputId":Ljava/lang/String;
    invoke-virtual {v5, v3}, Landroid/media/tv/TvInputManager;->getTvInputInfo(Ljava/lang/String;)Landroid/media/tv/TvInputInfo;

    move-result-object v2

    .line 1072
    .local v2, "info":Landroid/media/tv/TvInputInfo;
    if-eqz v2, :cond_2

    .line 1073
    invoke-virtual {v5, v2}, Landroid/media/tv/TvInputManager;->updateTvInputInfo(Landroid/media/tv/TvInputInfo;)V

    goto :goto_2

    .line 1053
    .end local v2    # "info":Landroid/media/tv/TvInputInfo;
    .end local v3    # "inputId":Ljava/lang/String;
    :cond_3
    return-void
.end method
