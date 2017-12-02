.class final Lcom/android/server/am/PendingIntentRecord$Key;
.super Ljava/lang/Object;
.source "PendingIntentRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PendingIntentRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Key"
.end annotation


# static fields
.field private static final ODD_PRIME_NUMBER:I = 0x25


# instance fields
.field final activity:Lcom/android/server/am/ActivityRecord;

.field allIntents:[Landroid/content/Intent;

.field allResolvedTypes:[Ljava/lang/String;

.field final flags:I

.field final hashCode:I

.field final options:Landroid/os/Bundle;

.field final packageName:Ljava/lang/String;

.field final requestCode:I

.field final requestIntent:Landroid/content/Intent;

.field final requestResolvedType:Ljava/lang/String;

.field final type:I

.field final userId:I

.field final who:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)V
    .locals 3
    .param p1, "_t"    # I
    .param p2, "_p"    # Ljava/lang/String;
    .param p3, "_a"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "_w"    # Ljava/lang/String;
    .param p5, "_r"    # I
    .param p6, "_i"    # [Landroid/content/Intent;
    .param p7, "_it"    # [Ljava/lang/String;
    .param p8, "_f"    # I
    .param p9, "_o"    # Landroid/os/Bundle;
    .param p10, "_userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    .line 78
    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    .line 80
    iput-object p4, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    .line 81
    iput p5, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    .line 82
    if-eqz p6, :cond_5

    array-length v1, p6

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p6, v1

    :goto_0
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    .line 83
    if-eqz p7, :cond_0

    array-length v1, p7

    add-int/lit8 v1, v1, -0x1

    aget-object v2, p7, v1

    :cond_0
    iput-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    .line 84
    iput-object p6, p0, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    .line 85
    iput-object p7, p0, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    .line 86
    iput p8, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    .line 87
    iput-object p9, p0, Lcom/android/server/am/PendingIntentRecord$Key;->options:Landroid/os/Bundle;

    .line 88
    iput p10, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    .line 91
    add-int/lit16 v0, p8, 0x353

    .line 92
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x25

    add-int v0, v1, p5

    .line 93
    mul-int/lit8 v1, v0, 0x25

    add-int v0, v1, p10

    .line 94
    if-eqz p4, :cond_1

    .line 95
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 97
    :cond_1
    if-eqz p3, :cond_2

    .line 98
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 101
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->filterHashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 103
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 104
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 106
    :cond_4
    mul-int/lit8 v2, v0, 0x25

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int v0, v2, v1

    .line 107
    mul-int/lit8 v1, v0, 0x25

    add-int v0, v1, p1

    .line 108
    iput v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->hashCode:I

    .line 76
    return-void

    .end local v0    # "hash":I
    :cond_5
    move-object v1, v2

    .line 82
    goto :goto_0

    .line 106
    .restart local v0    # "hash":I
    :cond_6
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "otherObj"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 114
    if-nez p1, :cond_0

    .line 115
    return v5

    .line 118
    :cond_0
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/server/am/PendingIntentRecord$Key;

    move-object v2, v0

    .line 119
    .local v2, "other":Lcom/android/server/am/PendingIntentRecord$Key;
    iget v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    if-eq v3, v4, :cond_1

    .line 120
    return v5

    .line 122
    :cond_1
    iget v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    if-eq v3, v4, :cond_2

    .line 123
    return v5

    .line 125
    :cond_2
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 126
    return v5

    .line 128
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    if-eq v3, v4, :cond_4

    .line 129
    return v5

    .line 131
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 132
    return v5

    .line 134
    :cond_5
    iget v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    if-eq v3, v4, :cond_6

    .line 135
    return v5

    .line 137
    :cond_6
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    iget-object v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eq v3, v4, :cond_8

    .line 138
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v3, :cond_7

    .line 139
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    iget-object v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 140
    return v5

    .line 142
    :cond_7
    iget-object v3, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v3, :cond_8

    .line 143
    return v5

    .line 146
    :cond_8
    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 147
    return v5

    .line 149
    :cond_9
    iget v3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    iget v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v4, :cond_a

    .line 150
    return v5

    .line 152
    :cond_a
    const/4 v3, 0x1

    return v3

    .line 153
    .end local v2    # "other":Lcom/android/server/am/PendingIntentRecord$Key;
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/lang/ClassCastException;
    return v5
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Key{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 164
    const-string/jumbo v1, " intent="

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    .line 163
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    const-string/jumbo v1, " flags=0x"

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    const-string/jumbo v1, " u="

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    const-string/jumbo v1, "}"

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 166
    :cond_0
    const-string/jumbo v0, "<null>"

    goto :goto_0
.end method

.method typeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    packed-switch v0, :pswitch_data_0

    .line 181
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 173
    :pswitch_0
    const-string/jumbo v0, "startActivity"

    return-object v0

    .line 175
    :pswitch_1
    const-string/jumbo v0, "broadcastIntent"

    return-object v0

    .line 177
    :pswitch_2
    const-string/jumbo v0, "startService"

    return-object v0

    .line 179
    :pswitch_3
    const-string/jumbo v0, "activityResult"

    return-object v0

    .line 171
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
