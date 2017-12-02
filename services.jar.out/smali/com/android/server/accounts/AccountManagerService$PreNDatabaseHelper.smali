.class Lcom/android/server/accounts/AccountManagerService$PreNDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PreNDatabaseHelper"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "preNDatabaseName"    # Ljava/lang/String;

    .prologue
    .line 4677
    const/4 v0, 0x0

    const/16 v1, 0x9

    invoke-direct {p0, p1, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 4678
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$PreNDatabaseHelper;->mContext:Landroid/content/Context;

    .line 4679
    iput p2, p0, Lcom/android/server/accounts/AccountManagerService$PreNDatabaseHelper;->mUserId:I

    .line 4676
    return-void
.end method

.method private addDebugTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 4706
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-wrap0(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4705
    return-void
.end method

.method private addLastSuccessfullAuthenticatedTimeColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 4697
    const-string/jumbo v0, "ALTER TABLE accounts ADD COLUMN last_password_entry_time_millis_epoch DEFAULT 0"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4696
    return-void
.end method

.method private addOldAccountNameColumn(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 4702
    const-string/jumbo v0, "ALTER TABLE accounts ADD COLUMN previous_name"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4701
    return-void
.end method

.method private createAccountsDeletionTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 4710
    const-string/jumbo v0, " CREATE TRIGGER accountsDelete DELETE ON accounts BEGIN   DELETE FROM authtokens     WHERE accounts_id=OLD._id ;   DELETE FROM extras     WHERE accounts_id=OLD._id ;   DELETE FROM grants     WHERE accounts_id=OLD._id ; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4709
    return-void
.end method

.method private createGrantsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 4723
    const-string/jumbo v0, "CREATE TABLE grants (  accounts_id INTEGER NOT NULL, auth_token_type STRING NOT NULL,  uid INTEGER NOT NULL,  UNIQUE (accounts_id,auth_token_type,uid))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4722
    return-void
.end method

.method private createSharedAccountsTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 4689
    const-string/jumbo v0, "CREATE TABLE shared_accounts ( _id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, type TEXT NOT NULL, UNIQUE(name,type))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4688
    return-void
.end method

.method private populateMetaTableWithAuthTypeAndUID(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4734
    .local p2, "authTypeAndUIDMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4735
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4736
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4737
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4738
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "key"

    .line 4739
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "auth_uid_for_type:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4738
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4740
    const-string/jumbo v4, "value"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4741
    const-string/jumbo v3, "meta"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 4733
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 4685
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Legacy database cannot be created - only upgraded!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 4805
    const-string/jumbo v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AccountManagerService"

    const-string/jumbo v1, "opened database accounts.db"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4804
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 4750
    const-string/jumbo v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "upgrade from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4752
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 4755
    add-int/lit8 p2, p2, 0x1

    .line 4758
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 4759
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService$PreNDatabaseHelper;->createGrantsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4760
    const-string/jumbo v0, "DROP TRIGGER accountsDelete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4761
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService$PreNDatabaseHelper;->createAccountsDeletionTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4762
    add-int/lit8 p2, p2, 0x1

    .line 4765
    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    .line 4766
    const-string/jumbo v0, "UPDATE accounts SET type = \'com.google\' WHERE type == \'com.google.GAIA\'"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4768
    add-int/lit8 p2, p2, 0x1

    .line 4771
    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    .line 4772
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService$PreNDatabaseHelper;->createSharedAccountsTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4773
    add-int/lit8 p2, p2, 0x1

    .line 4776
    :cond_3
    const/4 v0, 0x5

    if-ne p2, v0, :cond_4

    .line 4777
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService$PreNDatabaseHelper;->addOldAccountNameColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4778
    add-int/lit8 p2, p2, 0x1

    .line 4781
    :cond_4
    const/4 v0, 0x6

    if-ne p2, v0, :cond_5

    .line 4782
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService$PreNDatabaseHelper;->addLastSuccessfullAuthenticatedTimeColumn(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4783
    add-int/lit8 p2, p2, 0x1

    .line 4786
    :cond_5
    const/4 v0, 0x7

    if-ne p2, v0, :cond_6

    .line 4787
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService$PreNDatabaseHelper;->addDebugTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4788
    add-int/lit8 p2, p2, 0x1

    .line 4791
    :cond_6
    const/16 v0, 0x8

    if-ne p2, v0, :cond_7

    .line 4794
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$PreNDatabaseHelper;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/server/accounts/AccountManagerService$PreNDatabaseHelper;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->-wrap10(Landroid/content/Context;I)Ljava/util/HashMap;

    move-result-object v0

    .line 4792
    invoke-direct {p0, p1, v0}, Lcom/android/server/accounts/AccountManagerService$PreNDatabaseHelper;->populateMetaTableWithAuthTypeAndUID(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;)V

    .line 4795
    add-int/lit8 p2, p2, 0x1

    .line 4798
    :cond_7
    if-eq p2, p3, :cond_8

    .line 4799
    const-string/jumbo v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "failed to upgrade version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4749
    :cond_8
    return-void
.end method
