.class public abstract Landroid/provider/DocumentsProvider;
.super Landroid/content/ContentProvider;
.source "DocumentsProvider.java"


# static fields
.field private static final MATCH_CHILDREN:I = 0x6

.field private static final MATCH_CHILDREN_TREE:I = 0x8

.field private static final MATCH_DOCUMENT:I = 0x5

.field private static final MATCH_DOCUMENT_TREE:I = 0x7

.field private static final MATCH_RECENT:I = 0x3

.field private static final MATCH_ROOT:I = 0x2

.field private static final MATCH_ROOTS:I = 0x1

.field private static final MATCH_SEARCH:I = 0x4

.field private static final TAG:Ljava/lang/String; = "DocumentsProvider"


# instance fields
.field private mAuthority:Ljava/lang/String;

.field private mMatcher:Landroid/content/UriMatcher;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private callUnchecked(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 24
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 725
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    .line 726
    .local v8, "context":Landroid/content/Context;
    const-string/jumbo v21, "uri"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    .line 727
    .local v11, "documentUri":Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    .line 728
    .local v4, "authority":Ljava/lang/String;
    invoke-static {v11}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .line 730
    .local v10, "documentId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 731
    new-instance v21, Ljava/lang/SecurityException;

    .line 732
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Requested authority "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " doesn\'t match provider "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 731
    invoke-direct/range {v21 .. v22}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 735
    :cond_0
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 738
    .local v16, "out":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 740
    const-string/jumbo v21, "android:isChildDocument"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 741
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v11, v1, v2}, Landroid/provider/DocumentsProvider;->enforceReadPermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    .line 743
    const-string/jumbo v21, "android.content.extra.TARGET_URI"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 744
    .local v7, "childUri":Landroid/net/Uri;
    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    .line 745
    .local v5, "childAuthority":Ljava/lang/String;
    invoke-static {v7}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 748
    .local v6, "childId":Ljava/lang/String;
    const-string/jumbo v22, "result"

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 750
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v6}, Landroid/provider/DocumentsProvider;->isChildDocument(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    .line 747
    :goto_0
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 859
    .end local v5    # "childAuthority":Ljava/lang/String;
    .end local v6    # "childId":Ljava/lang/String;
    .end local v7    # "childUri":Landroid/net/Uri;
    :cond_1
    :goto_1
    return-object v16

    .line 749
    .restart local v5    # "childAuthority":Ljava/lang/String;
    .restart local v6    # "childId":Ljava/lang/String;
    .restart local v7    # "childUri":Landroid/net/Uri;
    :cond_2
    const/16 v21, 0x0

    goto :goto_0

    .line 752
    .end local v5    # "childAuthority":Ljava/lang/String;
    .end local v6    # "childId":Ljava/lang/String;
    .end local v7    # "childUri":Landroid/net/Uri;
    :cond_3
    const-string/jumbo v21, "android:createDocument"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 753
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v11, v1, v2}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    .line 755
    const-string/jumbo v21, "mime_type"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 756
    .local v12, "mimeType":Ljava/lang/String;
    const-string/jumbo v21, "_display_name"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 757
    .local v9, "displayName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12, v9}, Landroid/provider/DocumentsProvider;->createDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 762
    .local v14, "newDocumentId":Ljava/lang/String;
    invoke-static {v11, v14}, Landroid/provider/DocumentsContract;->buildDocumentUriMaybeUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 764
    .local v15, "newDocumentUri":Landroid/net/Uri;
    const-string/jumbo v21, "uri"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 766
    .end local v9    # "displayName":Ljava/lang/String;
    .end local v12    # "mimeType":Ljava/lang/String;
    .end local v14    # "newDocumentId":Ljava/lang/String;
    .end local v15    # "newDocumentUri":Landroid/net/Uri;
    :cond_4
    const-string/jumbo v21, "android:renameDocument"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_6

    .line 767
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v11, v1, v2}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    .line 769
    const-string/jumbo v21, "_display_name"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 770
    .restart local v9    # "displayName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v9}, Landroid/provider/DocumentsProvider;->renameDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 772
    .restart local v14    # "newDocumentId":Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 773
    invoke-static {v11, v14}, Landroid/provider/DocumentsContract;->buildDocumentUriMaybeUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 778
    .restart local v15    # "newDocumentUri":Landroid/net/Uri;
    invoke-static {v15}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    move-result v21

    if-nez v21, :cond_5

    .line 779
    invoke-static {v8, v11}, Landroid/provider/DocumentsProvider;->getCallingOrSelfUriPermissionModeFlags(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v13

    .line 781
    .local v13, "modeFlags":I
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0, v15, v13}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 784
    .end local v13    # "modeFlags":I
    :cond_5
    const-string/jumbo v21, "uri"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 787
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/provider/DocumentsProvider;->revokeDocumentPermission(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 790
    .end local v9    # "displayName":Ljava/lang/String;
    .end local v14    # "newDocumentId":Ljava/lang/String;
    .end local v15    # "newDocumentUri":Landroid/net/Uri;
    :cond_6
    const-string/jumbo v21, "android:deleteDocument"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 791
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v11, v1, v2}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    .line 792
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/provider/DocumentsProvider;->deleteDocument(Ljava/lang/String;)V

    .line 795
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/provider/DocumentsProvider;->revokeDocumentPermission(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 797
    :cond_7
    const-string/jumbo v21, "android:copyDocument"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 798
    const-string/jumbo v21, "android.content.extra.TARGET_URI"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Landroid/net/Uri;

    .line 799
    .local v20, "targetUri":Landroid/net/Uri;
    invoke-static/range {v20 .. v20}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v19

    .line 801
    .local v19, "targetId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v11, v1, v2}, Landroid/provider/DocumentsProvider;->enforceReadPermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    .line 802
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    .line 804
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v1}, Landroid/provider/DocumentsProvider;->copyDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 806
    .restart local v14    # "newDocumentId":Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 807
    invoke-static {v11, v14}, Landroid/provider/DocumentsContract;->buildDocumentUriMaybeUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 810
    .restart local v15    # "newDocumentUri":Landroid/net/Uri;
    invoke-static {v15}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 811
    invoke-static {v8, v11}, Landroid/provider/DocumentsProvider;->getCallingOrSelfUriPermissionModeFlags(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v13

    .line 813
    .restart local v13    # "modeFlags":I
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0, v15, v13}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 816
    .end local v13    # "modeFlags":I
    :cond_8
    const-string/jumbo v21, "uri"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_1

    .line 819
    .end local v14    # "newDocumentId":Ljava/lang/String;
    .end local v15    # "newDocumentUri":Landroid/net/Uri;
    .end local v19    # "targetId":Ljava/lang/String;
    .end local v20    # "targetUri":Landroid/net/Uri;
    :cond_9
    const-string/jumbo v21, "android:moveDocument"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 820
    const-string/jumbo v21, "parentUri"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/net/Uri;

    .line 821
    .local v18, "parentSourceUri":Landroid/net/Uri;
    invoke-static/range {v18 .. v18}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v17

    .line 822
    .local v17, "parentSourceId":Ljava/lang/String;
    const-string/jumbo v21, "android.content.extra.TARGET_URI"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Landroid/net/Uri;

    .line 823
    .restart local v20    # "targetUri":Landroid/net/Uri;
    invoke-static/range {v20 .. v20}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v19

    .line 825
    .restart local v19    # "targetId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v11, v1, v2}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    .line 826
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DocumentsProvider;->enforceReadPermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    .line 827
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    .line 829
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v10, v1, v2}, Landroid/provider/DocumentsProvider;->moveDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 831
    .restart local v14    # "newDocumentId":Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 832
    invoke-static {v11, v14}, Landroid/provider/DocumentsContract;->buildDocumentUriMaybeUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 835
    .restart local v15    # "newDocumentUri":Landroid/net/Uri;
    invoke-static {v15}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    move-result v21

    if-nez v21, :cond_a

    .line 836
    invoke-static {v8, v11}, Landroid/provider/DocumentsProvider;->getCallingOrSelfUriPermissionModeFlags(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v13

    .line 838
    .restart local v13    # "modeFlags":I
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0, v15, v13}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 841
    .end local v13    # "modeFlags":I
    :cond_a
    const-string/jumbo v21, "uri"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_1

    .line 844
    .end local v14    # "newDocumentId":Ljava/lang/String;
    .end local v15    # "newDocumentUri":Landroid/net/Uri;
    .end local v17    # "parentSourceId":Ljava/lang/String;
    .end local v18    # "parentSourceUri":Landroid/net/Uri;
    .end local v19    # "targetId":Ljava/lang/String;
    .end local v20    # "targetUri":Landroid/net/Uri;
    :cond_b
    const-string/jumbo v21, "android:removeDocument"

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    .line 845
    const-string/jumbo v21, "parentUri"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/net/Uri;

    .line 846
    .restart local v18    # "parentSourceUri":Landroid/net/Uri;
    invoke-static/range {v18 .. v18}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v17

    .line 848
    .restart local v17    # "parentSourceId":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/provider/DocumentsProvider;->enforceReadPermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    .line 849
    invoke-virtual/range {p0 .. p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v11, v1, v2}, Landroid/provider/DocumentsProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    .line 850
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v10, v1}, Landroid/provider/DocumentsProvider;->removeDocument(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 856
    .end local v17    # "parentSourceId":Ljava/lang/String;
    .end local v18    # "parentSourceUri":Landroid/net/Uri;
    :cond_c
    new-instance v21, Ljava/lang/UnsupportedOperationException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Method not supported "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v21
.end method

.method private enforceTree(Landroid/net/Uri;)V
    .locals 5
    .param p1, "documentUri"    # Landroid/net/Uri;

    .prologue
    .line 197
    invoke-static {p1}, Landroid/provider/DocumentsContract;->isTreeUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 198
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "parent":Ljava/lang/String;
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "child":Ljava/lang/String;
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    return-void

    .line 203
    :cond_0
    invoke-virtual {p0, v1, v0}, Landroid/provider/DocumentsProvider;->isChildDocument(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 204
    new-instance v2, Ljava/lang/SecurityException;

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Document "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not a descendant of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 204
    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 196
    .end local v0    # "child":Ljava/lang/String;
    .end local v1    # "parent":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private static getCallingOrSelfUriPermissionModeFlags(Landroid/content/Context;Landroid/net/Uri;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 652
    const/4 v0, 0x0

    .line 653
    .local v0, "modeFlags":I
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 655
    const/4 v0, 0x1

    .line 657
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 659
    or-int/lit8 v0, v0, 0x2

    .line 661
    :cond_1
    const/16 v1, 0x41

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v1

    if-nez v1, :cond_2

    .line 664
    or-int/lit8 v0, v0, 0x40

    .line 666
    :cond_2
    return v0
.end method

.method public static mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "filter"    # Ljava/lang/String;
    .param p1, "test"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1031
    if-nez p1, :cond_0

    .line 1032
    return v1

    .line 1033
    :cond_0
    if-eqz p0, :cond_1

    const-string/jumbo v0, "*/*"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1034
    :cond_1
    return v2

    .line 1035
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1036
    return v2

    .line 1037
    :cond_3
    const-string/jumbo v0, "/*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1038
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p0, v1, p1, v1, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    return v0

    .line 1040
    :cond_4
    return v1
.end method

.method private final openTypedAssetFileImpl(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1007
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 1008
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 1009
    .local v1, "documentId":Ljava/lang/String;
    if-eqz p3, :cond_0

    const-string/jumbo v3, "android.content.extra.SIZE"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1010
    const-string/jumbo v3, "android.content.extra.SIZE"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 1011
    .local v2, "sizeHint":Landroid/graphics/Point;
    invoke-virtual {p0, v1, v2, p4}, Landroid/provider/DocumentsProvider;->openDocumentThumbnail(Ljava/lang/String;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    return-object v3

    .line 1013
    .end local v2    # "sizeHint":Landroid/graphics/Point;
    :cond_0
    const-string/jumbo v3, "*/*"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1015
    const-string/jumbo v3, "r"

    invoke-virtual {p0, p1, v3}, Landroid/provider/DocumentsProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    return-object v3

    .line 1017
    :cond_1
    invoke-virtual {p0, p1}, Landroid/provider/DocumentsProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1018
    .local v0, "baseType":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-static {v0, p2}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1021
    const-string/jumbo v3, "r"

    invoke-virtual {p0, p1, v3}, Landroid/provider/DocumentsProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    return-object v3

    .line 1024
    :cond_2
    invoke-virtual {p0, v1, p2, p3, p4}, Landroid/provider/DocumentsProvider;->openTypedDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 153
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    .line 155
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    .line 156
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "root"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 157
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "root/*"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 158
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "root/*/recent"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 159
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "root/*/search"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 160
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "document/*"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 161
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "document/*/children"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 162
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "tree/*/document/*"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 163
    iget-object v0, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    const-string/jumbo v2, "tree/*/document/*/children"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 166
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Provider must be exported"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    if-nez v0, :cond_1

    .line 170
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Provider must grantUriPermissions"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1
    const-string/jumbo v0, "android.permission.MANAGE_DOCUMENTS"

    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    const-string/jumbo v0, "android.permission.MANAGE_DOCUMENTS"

    iget-object v1, p2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    .line 152
    return-void

    .line 174
    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Provider must be protected by MANAGE_DOCUMENTS"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 710
    const-string/jumbo v1, "android:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 712
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 716
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/provider/DocumentsProvider;->callUnchecked(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 717
    :catch_0
    move-exception v0

    .line 718
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed call "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 634
    invoke-virtual {p0}, Landroid/provider/DocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 635
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 647
    const/4 v3, 0x0

    return-object v3

    .line 637
    :pswitch_0
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 639
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 643
    .local v2, "narrowUri":Landroid/net/Uri;
    invoke-static {v0, p1}, Landroid/provider/DocumentsProvider;->getCallingOrSelfUriPermissionModeFlags(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    .line 644
    .local v1, "modeFlags":I
    invoke-virtual {p0}, Landroid/provider/DocumentsProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v1}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 645
    return-object v2

    .line 635
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public copyDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sourceDocumentId"    # Ljava/lang/String;
    .param p2, "targetParentDocumentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 280
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Copy not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "parentDocumentId"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 227
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Create not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 688
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Delete not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteDocument(Ljava/lang/String;)V
    .locals 2
    .param p1, "documentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 263
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Delete not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDocumentStreamTypes(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .param p1, "documentId"    # Ljava/lang/String;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 964
    const/4 v0, 0x0

    .line 966
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v5}, Landroid/provider/DocumentsProvider;->queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 967
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 969
    const-string/jumbo v5, "mime_type"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 971
    .local v4, "mimeType":Ljava/lang/String;
    const-string/jumbo v5, "flags"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 972
    .local v2, "flags":J
    const-wide/16 v6, 0x200

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    if-eqz v4, :cond_0

    .line 973
    invoke-static {p2, v4}, Landroid/provider/DocumentsProvider;->mimeTypeMatches(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 972
    if-eqz v5, :cond_0

    .line 974
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v5, v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 980
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 974
    return-object v5

    .line 980
    .end local v2    # "flags":J
    .end local v4    # "mimeType":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 984
    return-object v10

    .line 977
    .end local v0    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v1

    .line 980
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 978
    return-object v10

    .line 979
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v5

    .line 980
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 979
    throw v5
.end method

.method public getDocumentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "documentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 468
    invoke-virtual {p0, p1, v2}, Landroid/provider/DocumentsProvider;->queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 470
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    const-string/jumbo v1, "mime_type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 476
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 471
    return-object v1

    .line 476
    :cond_0
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 473
    return-object v2

    .line 475
    :catchall_0
    move-exception v1

    .line 476
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 475
    throw v1
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;

    .prologue
    .line 997
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 998
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/provider/DocumentsProvider;->getDocumentStreamTypes(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 603
    :try_start_0
    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 611
    :pswitch_0
    return-object v3

    .line 605
    :pswitch_1
    const-string/jumbo v1, "vnd.android.document/root"

    return-object v1

    .line 608
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 609
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/provider/DocumentsProvider;->getDocumentType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 613
    :catch_0
    move-exception v0

    .line 614
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v1, "DocumentsProvider"

    const-string/jumbo v2, "Failed during getType"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 615
    return-object v3

    .line 603
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 677
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Insert not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isChildDocument(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "parentDocumentId"    # Ljava/lang/String;
    .param p2, "documentId"    # Ljava/lang/String;

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public moveDocument(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "sourceDocumentId"    # Ljava/lang/String;
    .param p2, "sourceParentDocumentId"    # Ljava/lang/String;
    .param p3, "targetParentDocumentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 303
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Move not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 906
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 907
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2, v0}, Landroid/provider/DocumentsProvider;->openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 908
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    :cond_0
    return-object v0
.end method

.method public final openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 920
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 921
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3}, Landroid/provider/DocumentsProvider;->openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 922
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    :cond_0
    return-object v0
.end method

.method public abstract openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public openDocumentThumbnail(Ljava/lang/String;Landroid/graphics/Point;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 2
    .param p1, "documentId"    # Ljava/lang/String;
    .param p2, "sizeHint"    # Landroid/graphics/Point;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 526
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Thumbnails not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 881
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 882
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Landroid/provider/DocumentsProvider;->openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 893
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 894
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/provider/DocumentsProvider;->openDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 935
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/provider/DocumentsProvider;->openTypedAssetFileImpl(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 949
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/provider/DocumentsProvider;->openTypedAssetFileImpl(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openTypedDocument(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 2
    .param p1, "documentId"    # Ljava/lang/String;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 549
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string/jumbo v1, "The requested MIME type is not supported."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 565
    :try_start_0
    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 587
    :pswitch_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported Uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v1, "DocumentsProvider"

    const-string/jumbo v2, "Failed during query"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 591
    const/4 v1, 0x0

    return-object v1

    .line 567
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :pswitch_1
    :try_start_1
    invoke-virtual {p0, p2}, Landroid/provider/DocumentsProvider;->queryRoots([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 569
    :pswitch_2
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getRootId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Landroid/provider/DocumentsProvider;->queryRecentDocuments(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 572
    :pswitch_3
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getRootId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/provider/DocumentsContract;->getSearchDocumentsQuery(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 571
    invoke-virtual {p0, v1, v2, p2}, Landroid/provider/DocumentsProvider;->querySearchDocuments(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 575
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 576
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Landroid/provider/DocumentsProvider;->queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 579
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/provider/DocumentsProvider;->enforceTree(Landroid/net/Uri;)V

    .line 580
    invoke-static {p1}, Landroid/provider/DocumentsContract;->isManageMode(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 581
    invoke-virtual {p0, v1, p2, p5}, Landroid/provider/DocumentsProvider;->queryChildDocumentsForManage(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    .line 584
    :cond_0
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p5}, Landroid/provider/DocumentsProvider;->queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    return-object v1

    .line 565
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public abstract queryChildDocuments(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public queryChildDocumentsForManage(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "parentDocumentId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 418
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Manage not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract queryDocument(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public queryRecentDocuments(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "rootId"    # Ljava/lang/String;
    .param p2, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 359
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Recent not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract queryRoots([Ljava/lang/String;)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public querySearchDocuments(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "rootId"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "projection"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 458
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Search not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeDocument(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "documentId"    # Ljava/lang/String;
    .param p2, "parentDocumentId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 321
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Remove not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public renameDocument(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "documentId"    # Ljava/lang/String;
    .param p2, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 247
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Rename not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final revokeDocumentPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "documentId"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 869
    invoke-virtual {p0}, Landroid/provider/DocumentsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 870
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 871
    iget-object v1, p0, Landroid/provider/DocumentsProvider;->mAuthority:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/provider/DocumentsContract;->buildTreeDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    .line 868
    return-void
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 698
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Update not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
