.class Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;
.super Ljava/lang/Object;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/DatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundModelRecord"
.end annotation


# instance fields
.field public final data:[B

.field public final hintText:Ljava/lang/String;

.field public final keyphraseId:I

.field public final locale:Ljava/lang/String;

.field public final modelUuid:Ljava/lang/String;

.field public final recognitionModes:I

.field public final type:I

.field public final users:Ljava/lang/String;

.field public final vendorUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILandroid/database/Cursor;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    const-string/jumbo v0, "model_uuid"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->modelUuid:Ljava/lang/String;

    .line 341
    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    .line 342
    const-string/jumbo v0, "vendor_uuid"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->vendorUuid:Ljava/lang/String;

    .line 346
    :goto_0
    const-string/jumbo v0, "keyphrase_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->keyphraseId:I

    .line 347
    const-string/jumbo v0, "type"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->type:I

    .line 348
    const-string/jumbo v0, "data"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->data:[B

    .line 349
    const-string/jumbo v0, "recognition_modes"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->recognitionModes:I

    .line 350
    const-string/jumbo v0, "locale"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->locale:Ljava/lang/String;

    .line 351
    const-string/jumbo v0, "hint_text"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->hintText:Ljava/lang/String;

    .line 352
    const-string/jumbo v0, "users"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->users:Ljava/lang/String;

    .line 339
    return-void

    .line 344
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->vendorUuid:Ljava/lang/String;

    goto :goto_0
.end method

.method private V6PrimaryKeyMatches(Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;)Z
    .locals 2
    .param p1, "record"    # Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;

    .prologue
    .line 356
    iget v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->keyphraseId:I

    iget v1, p1, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->keyphraseId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->locale:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->locale:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->stringComparisonHelper(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->users:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->users:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->stringComparisonHelper(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 356
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static stringComparisonHelper(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 410
    if-eqz p0, :cond_0

    .line 411
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 413
    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public ifViolatesV6PrimaryKeyIsFirstOfAnyDuplicates(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 370
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "record$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;

    .line 371
    .local v0, "record":Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;
    if-eq p0, v0, :cond_0

    .line 376
    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->V6PrimaryKeyMatches(Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->data:[B

    iget-object v5, v0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->data:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 377
    return v3

    .line 382
    .end local v0    # "record":Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;

    .line 383
    .restart local v0    # "record":Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;
    invoke-direct {p0, v0}, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->V6PrimaryKeyMatches(Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 384
    if-ne p0, v0, :cond_3

    :goto_0
    return v2

    :cond_3
    move v2, v3

    goto :goto_0

    .line 387
    .end local v0    # "record":Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;
    :cond_4
    return v2
.end method

.method public writeToDatabase(ILandroid/database/sqlite/SQLiteDatabase;)J
    .locals 4
    .param p1, "version"    # I
    .param p2, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v3, 0x5

    .line 391
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 392
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "model_uuid"

    iget-object v2, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->modelUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    if-lt p1, v3, :cond_0

    .line 394
    const-string/jumbo v1, "vendor_uuid"

    iget-object v2, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->vendorUuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    :cond_0
    const-string/jumbo v1, "keyphrase_id"

    iget v2, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->keyphraseId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 397
    const-string/jumbo v1, "type"

    iget v2, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->type:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 398
    const-string/jumbo v1, "data"

    iget-object v2, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->data:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 399
    const-string/jumbo v1, "recognition_modes"

    iget v2, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->recognitionModes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 400
    const-string/jumbo v1, "locale"

    iget-object v2, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->locale:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string/jumbo v1, "hint_text"

    iget-object v2, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->hintText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string/jumbo v1, "users"

    iget-object v2, p0, Lcom/android/server/voiceinteraction/DatabaseHelper$SoundModelRecord;->users:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string/jumbo v1, "sound_model"

    const/4 v2, 0x0

    .line 404
    invoke-virtual {p2, v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    return-wide v2
.end method
