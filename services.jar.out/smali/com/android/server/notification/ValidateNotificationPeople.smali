.class public Lcom/android/server/notification/ValidateNotificationPeople;
.super Ljava/lang/Object;
.source "ValidateNotificationPeople.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;,
        Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final ENABLE_PEOPLE_VALIDATOR:Z = true

.field private static final LOOKUP_PROJECTION:[Ljava/lang/String;

.field private static final MAX_PEOPLE:I = 0xa

.field static final NONE:F = 0.0f

.field private static final PEOPLE_CACHE_SIZE:I = 0xc8

.field private static final SETTING_ENABLE_PEOPLE_VALIDATOR:Ljava/lang/String; = "validate_notification_people_enabled"

.field static final STARRED_CONTACT:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "ValidateNoPeople"

.field static final VALID_CONTACT:F = 0.5f

.field private static final VERBOSE:Z


# instance fields
.field private mBaseContext:Landroid/content/Context;

.field protected mEnabled:Z

.field private mEvictionCount:I

.field private mHandler:Landroid/os/Handler;

.field private mObserver:Landroid/database/ContentObserver;

.field private mPeopleCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

.field private mUserToContextMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/notification/ValidateNotificationPeople;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/notification/ValidateNotificationPeople;)I
    .locals 1

    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/notification/ValidateNotificationPeople;)Landroid/util/LruCache;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/notification/ValidateNotificationPeople;)Lcom/android/server/notification/NotificationUsageStats;
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/notification/ValidateNotificationPeople;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEvictionCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "email"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->resolveEmailContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->resolvePhoneContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lookupUri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/server/notification/ValidateNotificationPeople;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "handle"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/ValidateNotificationPeople;->getCacheKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 56
    const-string/jumbo v0, "ValidateNoPeople"

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    .line 57
    const-string/jumbo v0, "ValidateNoPeople"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    .line 62
    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "starred"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/notification/ValidateNotificationPeople;->LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCacheKey(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I
    .param p2, "handle"    # Ljava/lang/String;

    .prologue
    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 5
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 193
    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUserToContextMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 194
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 196
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    const-string/jumbo v3, "android"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 197
    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUserToContextMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :goto_0
    return-object v0

    .line 198
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "ValidateNoPeople"

    const-string/jumbo v3, "failed to create package context for lookups"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;
    .locals 12
    .param p0, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 276
    const-string/jumbo v8, "android.people"

    invoke-virtual {p0, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 277
    .local v6, "people":Ljava/lang/Object;
    instance-of v8, v6, [Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 278
    check-cast v6, [Ljava/lang/String;

    .end local v6    # "people":Ljava/lang/Object;
    return-object v6

    .line 281
    .restart local v6    # "people":Ljava/lang/Object;
    :cond_0
    instance-of v8, v6, Ljava/util/ArrayList;

    if-eqz v8, :cond_5

    move-object v2, v6

    .line 282
    check-cast v2, Ljava/util/ArrayList;

    .line 284
    .local v2, "arrayList":Ljava/util/ArrayList;
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 285
    return-object v11

    .line 288
    :cond_1
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 289
    move-object v7, v2

    .line 290
    .local v7, "stringArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    return-object v8

    .line 293
    .end local v7    # "stringArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Ljava/lang/CharSequence;

    if-eqz v8, :cond_4

    .line 294
    move-object v4, v2

    .line 295
    .local v4, "charSeqList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 296
    .local v0, "N":I
    new-array v1, v0, [Ljava/lang/String;

    .line 297
    .local v1, "array":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_3

    .line 298
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v5

    .line 297
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 300
    :cond_3
    return-object v1

    .line 303
    .end local v0    # "N":I
    .end local v1    # "array":[Ljava/lang/String;
    .end local v4    # "charSeqList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v5    # "i":I
    :cond_4
    return-object v11

    .line 306
    .end local v2    # "arrayList":Ljava/util/ArrayList;
    :cond_5
    instance-of v8, v6, Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 307
    new-array v1, v10, [Ljava/lang/String;

    .line 308
    .restart local v1    # "array":[Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .end local v6    # "people":Ljava/lang/Object;
    aput-object v6, v1, v9

    .line 309
    return-object v1

    .line 312
    .end local v1    # "array":[Ljava/lang/String;
    .restart local v6    # "people":Ljava/lang/Object;
    :cond_6
    instance-of v8, v6, [C

    if-eqz v8, :cond_7

    .line 313
    new-array v1, v10, [Ljava/lang/String;

    .line 314
    .restart local v1    # "array":[Ljava/lang/String;
    new-instance v8, Ljava/lang/String;

    check-cast v6, [C

    .end local v6    # "people":Ljava/lang/Object;
    invoke-direct {v8, v6}, Ljava/lang/String;-><init>([C)V

    aput-object v8, v1, v9

    .line 315
    return-object v1

    .line 318
    .end local v1    # "array":[Ljava/lang/String;
    .restart local v6    # "people":Ljava/lang/Object;
    :cond_7
    instance-of v8, v6, Ljava/lang/CharSequence;

    if-eqz v8, :cond_8

    .line 319
    new-array v1, v10, [Ljava/lang/String;

    .line 320
    .restart local v1    # "array":[Ljava/lang/String;
    check-cast v6, Ljava/lang/CharSequence;

    .end local v6    # "people":Ljava/lang/Object;
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v9

    .line 321
    return-object v1

    .line 324
    .end local v1    # "array":[Ljava/lang/String;
    .restart local v6    # "people":Ljava/lang/Object;
    :cond_8
    instance-of v8, v6, [Ljava/lang/CharSequence;

    if-eqz v8, :cond_a

    move-object v3, v6

    .line 325
    check-cast v3, [Ljava/lang/CharSequence;

    .line 326
    .local v3, "charSeqArray":[Ljava/lang/CharSequence;
    array-length v0, v3

    .line 327
    .restart local v0    # "N":I
    new-array v1, v0, [Ljava/lang/String;

    .line 328
    .restart local v1    # "array":[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    if-ge v5, v0, :cond_9

    .line 329
    aget-object v8, v3, v5

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v5

    .line 328
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 331
    :cond_9
    return-object v1

    .line 334
    .end local v0    # "N":I
    .end local v1    # "array":[Ljava/lang/String;
    .end local v3    # "charSeqArray":[Ljava/lang/CharSequence;
    .end local v5    # "i":I
    :cond_a
    return-object v11
.end method

.method private resolveEmailContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "email"    # Ljava/lang/String;

    .prologue
    .line 345
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 346
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 347
    .local v0, "numberUri":Landroid/net/Uri;
    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v1

    return-object v1
.end method

.method private resolvePhoneContact(Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 338
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 339
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 338
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 340
    .local v0, "phoneUri":Landroid/net/Uri;
    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/ValidateNotificationPeople;->searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v1

    return-object v1
.end method

.method private searchContacts(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lookupUri"    # Landroid/net/Uri;

    .prologue
    .line 351
    new-instance v7, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    invoke-direct {v7}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;-><init>()V

    .line 352
    .local v7, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    const/4 v6, 0x0

    .line 354
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/server/notification/ValidateNotificationPeople;->LOOKUP_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 355
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 356
    const-string/jumbo v0, "ValidateNoPeople"

    const-string/jumbo v1, "Null cursor from contacts query."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    if-eqz v6, :cond_0

    .line 366
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 357
    :cond_0
    return-object v7

    .line 359
    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 360
    invoke-virtual {v7, v6}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->mergeContact(Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 362
    .end local v6    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 363
    .local v8, "t":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v0, "ValidateNoPeople"

    const-string/jumbo v1, "Problem getting content resolver or performing contacts query."

    invoke-static {v0, v1, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 365
    if-eqz v6, :cond_2

    .line 366
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 369
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    return-object v7

    .line 365
    .restart local v6    # "c":Landroid/database/Cursor;
    :cond_3
    if-eqz v6, :cond_2

    .line 366
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 364
    .end local v6    # "c":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 365
    if-eqz v6, :cond_4

    .line 366
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 364
    :cond_4
    throw v0
.end method

.method private validatePeople(Landroid/content/Context;Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 207
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-object v2, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 209
    .local v2, "extras":Landroid/os/Bundle;
    new-array v1, v6, [F

    .line 210
    .local v1, "affinityOut":[F
    invoke-direct {p0, p1, v3, v2, v1}, Lcom/android/server/notification/ValidateNotificationPeople;->validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;[F)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    move-result-object v4

    .line 211
    .local v4, "rr":Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
    aget v0, v1, v5

    .line 212
    .local v0, "affinity":F
    invoke-virtual {p2, v0}, Lcom/android/server/notification/NotificationRecord;->setContactAffinity(F)V

    .line 213
    if-nez v4, :cond_2

    .line 214
    iget-object v8, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    const/4 v7, 0x0

    cmpl-float v7, v0, v7

    if-lez v7, :cond_1

    move v7, v6

    :goto_0
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v0, v9

    if-nez v9, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {v8, p2, v7, v5, v6}, Lcom/android/server/notification/NotificationUsageStats;->registerPeopleAffinity(Lcom/android/server/notification/NotificationRecord;ZZZ)V

    .line 219
    :goto_1
    return-object v4

    :cond_1
    move v7, v5

    .line 214
    goto :goto_0

    .line 217
    :cond_2
    invoke-virtual {v4, p2}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->setRecord(Lcom/android/server/notification/NotificationRecord;)V

    goto :goto_1
.end method

.method private validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;[F)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "affinityOut"    # [F

    .prologue
    .line 224
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 225
    .local v14, "start":J
    const/4 v8, 0x0

    .line 226
    .local v8, "affinity":F
    if-nez p3, :cond_0

    .line 227
    const/4 v2, 0x0

    return-object v2

    .line 230
    :cond_0
    invoke-static/range {p3 .. p3}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object v12

    .line 231
    .local v12, "people":[Ljava/lang/String;
    if-eqz v12, :cond_1

    array-length v2, v12

    if-nez v2, :cond_2

    .line 232
    :cond_1
    const/4 v2, 0x0

    return-object v2

    .line 235
    :cond_2
    sget-boolean v2, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "ValidateNoPeople"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Validating: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_3
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 237
    .local v6, "pendingLookups":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v13, 0x0

    .local v13, "personIdx":I
    :goto_0
    array-length v2, v12

    if-ge v13, v2, :cond_9

    const/16 v2, 0xa

    if-ge v13, v2, :cond_9

    .line 238
    aget-object v10, v12, v13

    .line 239
    .local v10, "handle":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 237
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 241
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    monitor-enter v3

    .line 242
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getUserId()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10}, Lcom/android/server/notification/ValidateNotificationPeople;->getCacheKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 243
    .local v9, "cacheKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    invoke-virtual {v2, v9}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    .line 244
    .local v11, "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    if-eqz v11, :cond_5

    invoke-static {v11}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->-wrap0(Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 245
    :cond_5
    invoke-virtual {v6, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_6
    :goto_2
    if-eqz v11, :cond_7

    .line 250
    invoke-virtual {v11}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getAffinity()F

    move-result v2

    invoke-static {v8, v2}, Ljava/lang/Math;->max(FF)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    :cond_7
    monitor-exit v3

    goto :goto_1

    .line 247
    :cond_8
    :try_start_1
    sget-boolean v2, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "ValidateNoPeople"

    const-string/jumbo v4, "using cached lookupResult"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 241
    .end local v9    # "cacheKey":Ljava/lang/String;
    .end local v11    # "lookupResult":Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 256
    .end local v10    # "handle":Ljava/lang/String;
    :cond_9
    const/4 v2, 0x0

    aput v8, p4, v2

    .line 258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    const-string/jumbo v3, "validate_people_cache_latency"

    .line 259
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v14

    long-to-int v4, v4

    .line 258
    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 261
    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 262
    sget-boolean v2, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz v2, :cond_a

    const-string/jumbo v2, "ValidateNoPeople"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "final affinity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_a
    const/4 v2, 0x0

    return-object v2

    .line 266
    :cond_b
    sget-boolean v2, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v2, :cond_c

    const-string/jumbo v2, "ValidateNoPeople"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Pending: future work scheduled for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_c
    new-instance v2, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedList;Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;)V

    return-object v2
.end method


# virtual methods
.method public getContactAffinity(Landroid/os/UserHandle;Landroid/os/Bundle;IF)F
    .locals 10
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "timeoutMs"    # I
    .param p4, "timeoutAffinity"    # F

    .prologue
    .line 152
    sget-boolean v7, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "ValidateNoPeople"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "checking affinity for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    if-nez p2, :cond_1

    const/4 v7, 0x0

    return v7

    .line 154
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, "key":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v1, v7, [F

    .line 156
    .local v1, "affinityOut":[F
    invoke-direct {p0, p1}, Lcom/android/server/notification/ValidateNotificationPeople;->getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    .line 157
    .local v2, "context":Landroid/content/Context;
    if-nez v2, :cond_2

    .line 158
    const/4 v7, 0x0

    return v7

    .line 160
    :cond_2
    invoke-direct {p0, v2, v4, p2, v1}, Lcom/android/server/notification/ValidateNotificationPeople;->validatePeople(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;[F)Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;

    move-result-object v5

    .line 161
    .local v5, "prr":Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
    const/4 v7, 0x0

    aget v0, v1, v7

    .line 163
    .local v0, "affinity":F
    if-eqz v5, :cond_4

    .line 166
    new-instance v6, Ljava/util/concurrent/Semaphore;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 167
    .local v6, "s":Ljava/util/concurrent/Semaphore;
    sget-object v7, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v8, Lcom/android/server/notification/ValidateNotificationPeople$2;

    invoke-direct {v8, p0, v5, v6}, Lcom/android/server/notification/ValidateNotificationPeople$2;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;Ljava/util/concurrent/Semaphore;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 176
    int-to-long v8, p3

    :try_start_0
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v6, v8, v9, v7}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 177
    const-string/jumbo v7, "ValidateNoPeople"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Timeout while waiting for affinity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ". "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 178
    const-string/jumbo v9, "Returning timeoutAffinity="

    .line 177
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    return p4

    .line 181
    :catch_0
    move-exception v3

    .line 182
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v7, "ValidateNoPeople"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "InterruptedException while waiting for affinity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ". "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 183
    const-string/jumbo v9, "Returning affinity="

    .line 182
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    return v0

    .line 187
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_3
    invoke-virtual {v5}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->getContactAffinity()F

    move-result v7

    invoke-static {v7, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 189
    .end local v6    # "s":Ljava/util/concurrent/Semaphore;
    :cond_4
    return v0
.end method

.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "usageStats"    # Lcom/android/server/notification/NotificationUsageStats;

    .prologue
    const/4 v1, 0x1

    .line 93
    sget-boolean v0, Lcom/android/server/notification/ValidateNotificationPeople;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ValidateNoPeople"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Initializing  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/notification/ValidateNotificationPeople;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUserToContextMap:Ljava/util/Map;

    .line 95
    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mUsageStats:Lcom/android/server/notification/NotificationUsageStats;

    .line 97
    new-instance v0, Landroid/util/LruCache;

    const/16 v2, 0xc8

    invoke-direct {v0, v2}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mPeopleCache:Landroid/util/LruCache;

    .line 99
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "validate_notification_people_enabled"

    .line 98
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v1, v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEnabled:Z

    .line 100
    iget-boolean v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mHandler:Landroid/os/Handler;

    .line 102
    new-instance v0, Lcom/android/server/notification/ValidateNotificationPeople$1;

    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/android/server/notification/ValidateNotificationPeople$1;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mObserver:Landroid/database/ContentObserver;

    .line 113
    iget-object v0, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mBaseContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 114
    iget-object v3, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    .line 113
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 92
    :cond_1
    return-void

    .line 98
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .locals 4
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    .prologue
    const/4 v3, 0x0

    .line 119
    iget-boolean v1, p0, Lcom/android/server/notification/ValidateNotificationPeople;->mEnabled:Z

    if-nez v1, :cond_1

    .line 120
    sget-boolean v1, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ValidateNoPeople"

    const-string/jumbo v2, "disabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    return-object v3

    .line 123
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_4

    .line 124
    :cond_2
    sget-boolean v1, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "ValidateNoPeople"

    const-string/jumbo v2, "skipping empty notification"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_3
    return-object v3

    .line 127
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_6

    .line 128
    sget-boolean v1, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "ValidateNoPeople"

    const-string/jumbo v2, "skipping global notification"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_5
    return-object v3

    .line 131
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/notification/ValidateNotificationPeople;->getContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 132
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_8

    .line 133
    sget-boolean v1, Lcom/android/server/notification/ValidateNotificationPeople;->VERBOSE:Z

    if-eqz v1, :cond_7

    const-string/jumbo v1, "ValidateNoPeople"

    const-string/jumbo v2, "skipping notification that lacks a context"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_7
    return-object v3

    .line 136
    :cond_8
    invoke-direct {p0, v0, p1}, Lcom/android/server/notification/ValidateNotificationPeople;->validatePeople(Landroid/content/Context;Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;

    move-result-object v1

    return-object v1
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/android/server/notification/RankingConfig;

    .prologue
    .line 140
    return-void
.end method
