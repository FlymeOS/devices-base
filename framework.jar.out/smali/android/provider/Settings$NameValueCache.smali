.class Landroid/provider/Settings$NameValueCache;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameValueCache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Settings$NameValueCache$-java_lang_String_getStringForUser_android_content_ContentResolver_cr_java_lang_String_name_int_userHandle_LambdaImpl0;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final NAME_EQ_PLACEHOLDER:Ljava/lang/String; = "name=?"

.field private static final SELECT_VALUE:[Ljava/lang/String;


# instance fields
.field private final mCallGetCommand:Ljava/lang/String;

.field private final mCallSetCommand:Ljava/lang/String;

.field private mContentProvider:Landroid/content/IContentProvider;

.field private mGenerationTracker:Landroid/provider/Settings$GenerationTracker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mUri:Landroid/net/Uri;

.field private final mValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1554
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "value"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1553
    sput-object v0, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE:[Ljava/lang/String;

    .line 1548
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "getCommand"    # Ljava/lang/String;
    .param p3, "setCommand"    # Ljava/lang/String;

    .prologue
    .line 1571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1558
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    .line 1561
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/Settings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .line 1572
    iput-object p1, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    .line 1573
    iput-object p2, p0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    .line 1574
    iput-object p3, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    .line 1571
    return-void
.end method

.method private lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;
    .locals 3
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 1578
    const/4 v0, 0x0

    .line 1579
    .local v0, "cp":Landroid/content/IContentProvider;
    monitor-enter p0

    .line 1580
    :try_start_0
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;

    .line 1581
    .local v0, "cp":Landroid/content/IContentProvider;
    if-nez v0, :cond_0

    .line 1582
    iget-object v2, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v1

    iput-object v1, p0, Landroid/provider/Settings$NameValueCache;->mContentProvider:Landroid/content/IContentProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "cp":Landroid/content/IContentProvider;
    .local v1, "cp":Landroid/content/IContentProvider;
    move-object v0, v1

    .end local v1    # "cp":Landroid/content/IContentProvider;
    .restart local v0    # "cp":Landroid/content/IContentProvider;
    :cond_0
    monitor-exit p0

    .line 1585
    return-object v0

    .line 1579
    .end local v0    # "cp":Landroid/content/IContentProvider;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method synthetic -android_provider_Settings$NameValueCache_lambda$1()V
    .locals 3

    .prologue
    .line 1675
    monitor-enter p0

    .line 1676
    :try_start_0
    const-string/jumbo v1, "Settings"

    const-string/jumbo v2, "Error accessing generation tracker - removing"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v1, :cond_0

    .line 1679
    iget-object v0, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 1681
    .local v0, "generationTracker":Landroid/provider/Settings$GenerationTracker;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 1682
    invoke-virtual {v0}, Landroid/provider/Settings$GenerationTracker;->destroy()V

    .line 1683
    iget-object v1, p0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "generationTracker":Landroid/provider/Settings$GenerationTracker;
    :cond_0
    monitor-exit p0

    .line 0
    return-void

    .line 1675
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 21
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    .line 1604
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_4

    const/16 v18, 0x1

    .line 1605
    .local v18, "isSelf":Z
    :goto_0
    if-eqz v18, :cond_1

    .line 1606
    monitor-enter p0

    .line 1607
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-eqz v3, :cond_0

    .line 1608
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    invoke-virtual {v3}, Landroid/provider/Settings$GenerationTracker;->isGenerationChanged()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1614
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 1625
    :cond_1
    invoke-direct/range {p0 .. p1}, Landroid/provider/Settings$NameValueCache;->lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v2

    .line 1631
    .local v2, "cp":Landroid/content/IContentProvider;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 1633
    const/4 v10, 0x0

    .line 1634
    .local v10, "args":Landroid/os/Bundle;
    if-nez v18, :cond_f

    .line 1635
    :try_start_1
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1636
    .local v11, "args":Landroid/os/Bundle;
    :try_start_2
    const-string/jumbo v3, "_user"

    .end local v10    # "args":Landroid/os/Bundle;
    move/from16 v0, p3

    invoke-virtual {v11, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1638
    :goto_1
    const/16 v19, 0x0

    .line 1639
    .local v19, "needsGenerationTracker":Z
    monitor-enter p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1640
    if-eqz v18, :cond_6

    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    if-nez v3, :cond_6

    .line 1641
    const/16 v19, 0x1

    .line 1642
    if-nez v11, :cond_e

    .line 1643
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1645
    .end local v11    # "args":Landroid/os/Bundle;
    .local v10, "args":Landroid/os/Bundle;
    :goto_2
    :try_start_4
    const-string/jumbo v3, "_track_generation"

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :goto_3
    :try_start_5
    monitor-exit p0

    .line 1653
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/provider/Settings$NameValueCache;->mCallGetCommand:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-interface {v2, v3, v4, v0, v10}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v13

    .line 1654
    .local v13, "b":Landroid/os/Bundle;
    if-eqz v13, :cond_7

    .line 1655
    const-string/jumbo v3, "value"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1657
    .local v20, "value":Ljava/lang/String;
    if-eqz v18, :cond_3

    .line 1658
    monitor-enter p0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1659
    if-eqz v19, :cond_2

    .line 1661
    :try_start_6
    const-string/jumbo v3, "_track_generation"

    .line 1660
    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    check-cast v12, Landroid/util/MemoryIntArray;

    .line 1663
    .local v12, "array":Landroid/util/MemoryIntArray;
    const-string/jumbo v3, "_generation_index"

    const/4 v4, -0x1

    .line 1662
    invoke-virtual {v13, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 1664
    .local v17, "index":I
    if-eqz v12, :cond_2

    if-ltz v17, :cond_2

    .line 1666
    const-string/jumbo v3, "_generation"

    const/4 v4, 0x0

    .line 1665
    invoke-virtual {v13, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v16

    .line 1673
    .local v16, "generation":I
    new-instance v3, Landroid/provider/Settings$GenerationTracker;

    .line 1674
    new-instance v4, Landroid/provider/Settings$NameValueCache$-java_lang_String_getStringForUser_android_content_ContentResolver_cr_java_lang_String_name_int_userHandle_LambdaImpl0;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/provider/Settings$NameValueCache$-java_lang_String_getStringForUser_android_content_ContentResolver_cr_java_lang_String_name_int_userHandle_LambdaImpl0;-><init>(Landroid/provider/Settings$NameValueCache;)V

    .line 1673
    move/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v3, v12, v0, v1, v4}, Landroid/provider/Settings$GenerationTracker;-><init>(Landroid/util/MemoryIntArray;IILjava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/provider/Settings$NameValueCache;->mGenerationTracker:Landroid/provider/Settings$GenerationTracker;

    .line 1689
    .end local v12    # "array":Landroid/util/MemoryIntArray;
    .end local v16    # "generation":I
    .end local v17    # "index":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 1696
    :cond_3
    return-object v20

    .line 1604
    .end local v2    # "cp":Landroid/content/IContentProvider;
    .end local v10    # "args":Landroid/os/Bundle;
    .end local v13    # "b":Landroid/os/Bundle;
    .end local v18    # "isSelf":Z
    .end local v19    # "needsGenerationTracker":Z
    .end local v20    # "value":Ljava/lang/String;
    :cond_4
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 1615
    .restart local v18    # "isSelf":Z
    :cond_5
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1616
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v3

    .line 1606
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v2    # "cp":Landroid/content/IContentProvider;
    .restart local v11    # "args":Landroid/os/Bundle;
    .restart local v19    # "needsGenerationTracker":Z
    :cond_6
    move-object v10, v11

    .line 1640
    .end local v11    # "args":Landroid/os/Bundle;
    .restart local v10    # "args":Landroid/os/Bundle;
    goto :goto_3

    .line 1639
    .end local v10    # "args":Landroid/os/Bundle;
    .restart local v11    # "args":Landroid/os/Bundle;
    :catchall_1
    move-exception v3

    move-object v10, v11

    .end local v11    # "args":Landroid/os/Bundle;
    .restart local v10    # "args":Landroid/os/Bundle;
    :goto_4
    :try_start_9
    monitor-exit p0

    throw v3
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    .line 1700
    .end local v10    # "args":Landroid/os/Bundle;
    .end local v19    # "needsGenerationTracker":Z
    :catch_0
    move-exception v15

    .line 1706
    :cond_7
    :goto_5
    const/4 v14, 0x0

    .line 1708
    .local v14, "c":Landroid/database/Cursor;
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    sget-object v5, Landroid/provider/Settings$NameValueCache;->SELECT_VALUE:[Ljava/lang/String;

    const-string/jumbo v6, "name=?"

    .line 1709
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1708
    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v14

    .line 1710
    .local v14, "c":Landroid/database/Cursor;
    if-nez v14, :cond_9

    .line 1711
    const-string/jumbo v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t get key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1712
    const/4 v3, 0x0

    .line 1728
    if-eqz v14, :cond_8

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1712
    :cond_8
    return-object v3

    .line 1658
    .end local v14    # "c":Landroid/database/Cursor;
    .restart local v10    # "args":Landroid/os/Bundle;
    .restart local v13    # "b":Landroid/os/Bundle;
    .restart local v19    # "needsGenerationTracker":Z
    .restart local v20    # "value":Ljava/lang/String;
    :catchall_2
    move-exception v3

    :try_start_b
    monitor-exit p0

    throw v3
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0

    .line 1715
    .end local v10    # "args":Landroid/os/Bundle;
    .end local v13    # "b":Landroid/os/Bundle;
    .end local v19    # "needsGenerationTracker":Z
    .end local v20    # "value":Ljava/lang/String;
    .restart local v14    # "c":Landroid/database/Cursor;
    :cond_9
    :try_start_c
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1716
    :goto_6
    monitor-enter p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1717
    :try_start_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/provider/Settings$NameValueCache;->mValues:Ljava/util/HashMap;

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    monitor-exit p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 1728
    if-eqz v14, :cond_a

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1723
    :cond_a
    return-object v20

    .line 1715
    :cond_b
    const/16 v20, 0x0

    .local v20, "value":Ljava/lang/String;
    goto :goto_6

    .line 1716
    .end local v20    # "value":Ljava/lang/String;
    :catchall_3
    move-exception v3

    :try_start_f
    monitor-exit p0

    throw v3
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 1724
    .end local v14    # "c":Landroid/database/Cursor;
    :catch_1
    move-exception v15

    .line 1725
    .local v15, "e":Landroid/os/RemoteException;
    :try_start_10
    const-string/jumbo v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t get key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 1726
    const/4 v3, 0x0

    .line 1728
    if-eqz v14, :cond_c

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1726
    :cond_c
    return-object v3

    .line 1727
    .end local v15    # "e":Landroid/os/RemoteException;
    :catchall_4
    move-exception v3

    .line 1728
    if-eqz v14, :cond_d

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1727
    :cond_d
    throw v3

    .line 1700
    .restart local v11    # "args":Landroid/os/Bundle;
    :catch_2
    move-exception v15

    .restart local v15    # "e":Landroid/os/RemoteException;
    move-object v10, v11

    .end local v11    # "args":Landroid/os/Bundle;
    .restart local v10    # "args":Landroid/os/Bundle;
    goto/16 :goto_5

    .line 1639
    .end local v15    # "e":Landroid/os/RemoteException;
    .restart local v19    # "needsGenerationTracker":Z
    :catchall_5
    move-exception v3

    goto/16 :goto_4

    .end local v10    # "args":Landroid/os/Bundle;
    .restart local v11    # "args":Landroid/os/Bundle;
    :cond_e
    move-object v10, v11

    .end local v11    # "args":Landroid/os/Bundle;
    .restart local v10    # "args":Landroid/os/Bundle;
    goto/16 :goto_2

    .end local v19    # "needsGenerationTracker":Z
    .local v10, "args":Landroid/os/Bundle;
    :cond_f
    move-object v11, v10

    .restart local v11    # "args":Landroid/os/Bundle;
    goto/16 :goto_1
.end method

.method public putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 6
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "userHandle"    # I

    .prologue
    .line 1591
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1592
    .local v0, "arg":Landroid/os/Bundle;
    const-string/jumbo v3, "value"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    const-string/jumbo v3, "_user"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1594
    invoke-direct {p0, p1}, Landroid/provider/Settings$NameValueCache;->lazyGetProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 1595
    .local v1, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p1}, Landroid/content/ContentResolver;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/provider/Settings$NameValueCache;->mCallSetCommand:Ljava/lang/String;

    invoke-interface {v1, v3, v4, p2, v0}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1600
    const/4 v3, 0x1

    return v3

    .line 1596
    .end local v0    # "arg":Landroid/os/Bundle;
    .end local v1    # "cp":Landroid/content/IContentProvider;
    :catch_0
    move-exception v2

    .line 1597
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "Settings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Can\'t set key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/provider/Settings$NameValueCache;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1598
    const/4 v3, 0x0

    return v3
.end method
