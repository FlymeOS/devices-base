.class Lcom/android/server/accounts/AccountManagerService$CeDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CeDatabaseHelper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ceDatabaseName"    # Ljava/lang/String;

    .prologue
    .line 4981
    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 4980
    return-void
.end method

.method static create(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)Lcom/android/server/accounts/AccountManagerService$CeDatabaseHelper;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "preNDatabaseFile"    # Ljava/io/File;
    .param p3, "ceDatabaseFile"    # Ljava/io/File;

    .prologue
    .line 5102
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v1

    .line 5103
    .local v1, "newDbExists":Z
    const-string/jumbo v3, "AccountManagerService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5104
    const-string/jumbo v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "CeDatabaseHelper.create userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " oldDbExists="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5105
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v5

    .line 5104
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 5105
    const-string/jumbo v5, " newDbExists="

    .line 5104
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5107
    :cond_0
    const/4 v2, 0x0

    .line 5108
    .local v2, "removeOldDb":Z
    if-nez v1, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5109
    invoke-static {p2, p3}, Lcom/android/server/accounts/AccountManagerService$CeDatabaseHelper;->migratePreNDbToCe(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    .line 5112
    .end local v2    # "removeOldDb":Z
    :cond_1
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$CeDatabaseHelper;

    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/android/server/accounts/AccountManagerService$CeDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5113
    .local v0, "ceHelper":Lcom/android/server/accounts/AccountManagerService$CeDatabaseHelper;
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$CeDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 5114
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$CeDatabaseHelper;->close()V

    .line 5115
    if-eqz v2, :cond_2

    .line 5116
    const-string/jumbo v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Migration complete - removing pre-N db "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5117
    invoke-static {p2}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5118
    const-string/jumbo v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot remove pre-N db "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5121
    :cond_2
    return-object v0
.end method

.method private createAccountsDeletionTrigger(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 5016
    const-string/jumbo v0, " CREATE TRIGGER accountsDelete DELETE ON accounts BEGIN   DELETE FROM authtokens     WHERE accounts_id=OLD._id ;   DELETE FROM extras     WHERE accounts_id=OLD._id ; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5015
    return-void
.end method

.method static findAccountPasswordByNameAndType(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 5056
    const-string/jumbo v1, "ceDb.accounts"

    new-array v2, v7, [Ljava/lang/String;

    const-string/jumbo v0, "password"

    aput-object v0, v2, v6

    .line 5057
    const-string/jumbo v3, "name=? AND type=?"

    .line 5058
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    aput-object p1, v4, v6

    aput-object p2, v4, v7

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    .line 5056
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 5060
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5061
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 5065
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 5061
    return-object v0

    .line 5065
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 5063
    return-object v5

    .line 5064
    :catchall_0
    move-exception v0

    .line 5065
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 5064
    throw v0
.end method

.method static findCeAccountsNotInDe(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5072
    const-string/jumbo v4, "SELECT name,type FROM ceDb.accounts WHERE NOT EXISTS  (SELECT _id FROM accounts WHERE _id=ceDb.accounts._id )"

    .line 5077
    const/4 v5, 0x0

    .line 5071
    invoke-virtual {p0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 5079
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 5080
    .local v2, "accounts":Ljava/util/List;, "Ljava/util/List<Landroid/accounts/Account;>;"
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5081
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5082
    .local v0, "accountName":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5083
    .local v1, "accountType":Ljava/lang/String;
    new-instance v4, Landroid/accounts/Account;

    invoke-direct {v4, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 5086
    .end local v0    # "accountName":Ljava/lang/String;
    .end local v1    # "accountType":Ljava/lang/String;
    .end local v2    # "accounts":Ljava/util/List;, "Ljava/util/List<Landroid/accounts/Account;>;"
    :catchall_0
    move-exception v4

    .line 5087
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 5086
    throw v4

    .line 5087
    .restart local v2    # "accounts":Ljava/util/List;, "Ljava/util/List<Landroid/accounts/Account;>;"
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 5085
    return-object v2
.end method

.method private static migratePreNDbToCe(Ljava/io/File;Ljava/io/File;)Z
    .locals 4
    .param p0, "oldDbFile"    # Ljava/io/File;
    .param p1, "ceDbFile"    # Ljava/io/File;

    .prologue
    .line 5125
    const-string/jumbo v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Moving pre-N DB "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to CE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5127
    :try_start_0
    invoke-static {p0, p1}, Landroid/os/FileUtils;->copyFileOrThrow(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5134
    const/4 v1, 0x1

    return v1

    .line 5128
    :catch_0
    move-exception v0

    .line 5129
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot copy file to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5131
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService;->-wrap14(Ljava/io/File;)V

    .line 5132
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 4990
    const-string/jumbo v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Creating CE database "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$CeDatabaseHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4991
    const-string/jumbo v0, "CREATE TABLE accounts ( _id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, type TEXT NOT NULL, password TEXT, UNIQUE(name,type))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4998
    const-string/jumbo v0, "CREATE TABLE authtokens (  _id INTEGER PRIMARY KEY AUTOINCREMENT,  accounts_id INTEGER NOT NULL, type TEXT NOT NULL,  authtoken TEXT,  UNIQUE (accounts_id,type))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5005
    const-string/jumbo v0, "CREATE TABLE extras ( _id INTEGER PRIMARY KEY AUTOINCREMENT, accounts_id INTEGER, key TEXT NOT NULL, value TEXT, UNIQUE(accounts_id,key))"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5012
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService$CeDatabaseHelper;->createAccountsDeletionTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4989
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 5051
    const-string/jumbo v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AccountManagerService"

    const-string/jumbo v1, "opened database accounts_ce.db"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5050
    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 5028
    const-string/jumbo v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Upgrade CE from version "

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

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5030
    const/16 v0, 0x9

    if-ne p2, v0, :cond_1

    .line 5031
    const-string/jumbo v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5032
    const-string/jumbo v0, "AccountManagerService"

    const-string/jumbo v1, "onUpgrade upgrading to v10"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5034
    :cond_0
    const-string/jumbo v0, "DROP TABLE IF EXISTS meta"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5035
    const-string/jumbo v0, "DROP TABLE IF EXISTS shared_accounts"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5037
    const-string/jumbo v0, "DROP TRIGGER IF EXISTS accountsDelete"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5038
    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService$CeDatabaseHelper;->createAccountsDeletionTrigger(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 5039
    const-string/jumbo v0, "DROP TABLE IF EXISTS grants"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5040
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/server/accounts/AccountManagerService$DebugDbHelper;->-get15()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5041
    add-int/lit8 p2, p2, 0x1

    .line 5044
    :cond_1
    if-eq p2, p3, :cond_2

    .line 5045
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

    .line 5027
    :cond_2
    return-void
.end method
