.class Lcom/android/server/pm/ShortcutLauncher;
.super Lcom/android/server/pm/ShortcutPackageItem;
.source "ShortcutLauncher.java"


# static fields
.field private static final ATTR_LAUNCHER_USER_ID:Ljava/lang/String; = "launcher-user"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "package-name"

.field private static final ATTR_PACKAGE_USER_ID:Ljava/lang/String; = "package-user"

.field private static final ATTR_VALUE:Ljava/lang/String; = "value"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PIN:Ljava/lang/String; = "pin"

.field static final TAG_ROOT:Ljava/lang/String; = "launcher-pins"


# instance fields
.field private final mOwnerUserId:I

.field private final mPinnedShortcuts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/server/pm/ShortcutUser$PackageWithUser;",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;I)V
    .locals 6
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "ownerUserId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "launcherUserId"    # I

    .prologue
    .line 76
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutLauncher;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;ILcom/android/server/pm/ShortcutPackageInfo;)V

    .line 75
    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;ILcom/android/server/pm/ShortcutPackageInfo;)V
    .locals 1
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "ownerUserId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "launcherUserId"    # I
    .param p5, "spi"    # Lcom/android/server/pm/ShortcutPackageInfo;

    .prologue
    .line 69
    if-eqz p5, :cond_0

    .line 68
    .end local p5    # "spi":Lcom/android/server/pm/ShortcutPackageInfo;
    :goto_0
    invoke-direct {p0, p1, p4, p3, p5}, Lcom/android/server/pm/ShortcutPackageItem;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;Lcom/android/server/pm/ShortcutPackageInfo;)V

    .line 63
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    .line 70
    iput p2, p0, Lcom/android/server/pm/ShortcutLauncher;->mOwnerUserId:I

    .line 67
    return-void

    .line 69
    .restart local p5    # "spi":Lcom/android/server/pm/ShortcutPackageInfo;
    :cond_0
    invoke-static {}, Lcom/android/server/pm/ShortcutPackageInfo;->newEmpty()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object p5

    goto :goto_0
.end method

.method public static loadFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/pm/ShortcutUser;IZ)Lcom/android/server/pm/ShortcutLauncher;
    .locals 12
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "shortcutUser"    # Lcom/android/server/pm/ShortcutUser;
    .param p2, "ownerUserId"    # I
    .param p3, "fromBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 209
    const-string/jumbo v10, "package-name"

    .line 208
    invoke-static {p0, v10}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    .local v2, "launcherPackageName":Ljava/lang/String;
    if-eqz p3, :cond_2

    move v3, p2

    .line 216
    .local v3, "launcherUserId":I
    :goto_0
    new-instance v7, Lcom/android/server/pm/ShortcutLauncher;

    invoke-direct {v7, p1, p2, v2, v3}, Lcom/android/server/pm/ShortcutLauncher;-><init>(Lcom/android/server/pm/ShortcutUser;ILjava/lang/String;I)V

    .line 219
    .local v7, "ret":Lcom/android/server/pm/ShortcutLauncher;
    const/4 v1, 0x0

    .line 220
    .local v1, "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    .line 222
    .end local v1    # "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v4, "outerDepth":I
    :cond_0
    :goto_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .local v9, "type":I
    const/4 v10, 0x1

    if-eq v9, v10, :cond_8

    .line 223
    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v4, :cond_8

    .line 224
    :cond_1
    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 227
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 228
    .local v0, "depth":I
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 229
    .local v8, "tag":Ljava/lang/String;
    add-int/lit8 v10, v4, 0x1

    if-ne v0, v10, :cond_5

    .line 230
    const-string/jumbo v10, "package-info"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 232
    invoke-virtual {v7}, Lcom/android/server/pm/ShortcutLauncher;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v10

    invoke-virtual {v10, p0, p3}, Lcom/android/server/pm/ShortcutPackageInfo;->loadFromXml(Lorg/xmlpull/v1/XmlPullParser;Z)V

    goto :goto_1

    .line 214
    .end local v0    # "depth":I
    .end local v3    # "launcherUserId":I
    .end local v4    # "outerDepth":I
    .end local v7    # "ret":Lcom/android/server/pm/ShortcutLauncher;
    .end local v8    # "tag":Ljava/lang/String;
    .end local v9    # "type":I
    :cond_2
    const-string/jumbo v10, "launcher-user"

    invoke-static {p0, v10, p2}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    .restart local v3    # "launcherUserId":I
    goto :goto_0

    .line 230
    .restart local v0    # "depth":I
    .restart local v4    # "outerDepth":I
    .restart local v7    # "ret":Lcom/android/server/pm/ShortcutLauncher;
    .restart local v8    # "tag":Ljava/lang/String;
    .restart local v9    # "type":I
    :cond_3
    const-string/jumbo v10, "package"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 236
    const-string/jumbo v10, "package-name"

    .line 235
    invoke-static {p0, v10}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 237
    .local v5, "packageName":Ljava/lang/String;
    if-eqz p3, :cond_4

    move v6, p2

    .line 240
    .local v6, "packageUserId":I
    :goto_2
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 241
    .local v1, "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v10, v7, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    .line 242
    invoke-static {v6, v5}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v11

    .line 241
    invoke-virtual {v10, v11, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 239
    .end local v1    # "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v6    # "packageUserId":I
    :cond_4
    const-string/jumbo v10, "package-user"

    .line 238
    invoke-static {p0, v10, p2}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    .restart local v6    # "packageUserId":I
    goto :goto_2

    .line 247
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "packageUserId":I
    :cond_5
    add-int/lit8 v10, v4, 0x2

    if-ne v0, v10, :cond_7

    .line 248
    const-string/jumbo v10, "pin"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 250
    if-nez v1, :cond_6

    .line 251
    const-string/jumbo v10, "ShortcutService"

    const-string/jumbo v11, "pin in invalid place"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 253
    :cond_6
    const-string/jumbo v10, "value"

    invoke-static {p0, v10}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 259
    :cond_7
    invoke-static {v0, v8}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 261
    .end local v0    # "depth":I
    .end local v8    # "tag":Ljava/lang/String;
    :cond_8
    return-object v7
.end method


# virtual methods
.method cleanUpPackage(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-static {p2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 265
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 267
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 268
    const-string/jumbo v6, "Launcher: "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 270
    const-string/jumbo v6, "  Package user: "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageUserId()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 272
    const-string/jumbo v6, "  Owner user: "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getOwnerUserId()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 274
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 276
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Lcom/android/server/pm/ShortcutPackageInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 279
    iget-object v6, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 280
    .local v5, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_1

    .line 281
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 283
    iget-object v6, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    .line 285
    .local v4, "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 286
    const-string/jumbo v6, "  "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 287
    const-string/jumbo v6, "Package: "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 288
    iget-object v6, v4, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 289
    const-string/jumbo v6, "  User: "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 290
    iget v6, v4, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 292
    iget-object v6, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 293
    .local v2, "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 295
    .local v1, "idSize":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 296
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 297
    const-string/jumbo v6, "    Pinned: "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 295
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 280
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    .end local v1    # "idSize":I
    .end local v2    # "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "j":I
    .end local v4    # "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    :cond_1
    return-void
.end method

.method public dumpCheckin(Z)Lorg/json/JSONObject;
    .locals 1
    .param p1, "clear"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 306
    invoke-super {p0, p1}, Lcom/android/server/pm/ShortcutPackageItem;->dumpCheckin(Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 310
    .local v0, "result":Lorg/json/JSONObject;
    return-object v0
.end method

.method public ensureVersionInfo()V
    .locals 4

    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/server/pm/ShortcutLauncher;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v1, v1, Lcom/android/server/pm/ShortcutUser;->mService:Lcom/android/server/pm/ShortcutService;

    .line 157
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageUserId()I

    move-result v3

    .line 156
    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 158
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_0

    .line 159
    const-string/jumbo v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Package not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/pm/ShortcutPackageInfo;->updateVersionInfo(Landroid/content/pm/PackageInfo;)V

    .line 155
    return-void
.end method

.method getAllPinnedShortcutsForTest(Ljava/lang/String;I)Landroid/util/ArraySet;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    new-instance v1, Landroid/util/ArraySet;

    iget-object v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-static {p2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    return-object v1
.end method

.method public getOwnerUserId()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mOwnerUserId:I

    return v0
.end method

.method public getPinnedShortcutIds(Ljava/lang/String;I)Landroid/util/ArraySet;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-static {p2, p1}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    return-object v0
.end method

.method protected onRestoreBlocked()V
    .locals 6

    .prologue
    .line 90
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 91
    .local v2, "pinnedPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/ShortcutUser$PackageWithUser;>;"
    iget-object v4, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->clear()V

    .line 92
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 93
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    .line 94
    .local v3, "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    iget-object v4, p0, Lcom/android/server/pm/ShortcutLauncher;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    iget-object v5, v3, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    .line 95
    .local v1, "p":Lcom/android/server/pm/ShortcutPackage;
    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    .line 92
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 88
    .end local v1    # "p":Lcom/android/server/pm/ShortcutPackage;
    .end local v3    # "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    :cond_1
    return-void
.end method

.method protected onRestored()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public pinShortcuts(ILjava/lang/String;Ljava/util/List;)V
    .locals 9
    .param p1, "packageUserId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/android/server/pm/ShortcutLauncher;->mShortcutUser:Lcom/android/server/pm/ShortcutUser;

    invoke-virtual {v8, p2}, Lcom/android/server/pm/ShortcutUser;->getPackageShortcutsIfExists(Ljava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v4

    .line 110
    .local v4, "packageShortcuts":Lcom/android/server/pm/ShortcutPackage;
    if-nez v4, :cond_0

    .line 111
    return-void

    .line 114
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->of(ILjava/lang/String;)Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    move-result-object v6

    .line 116
    .local v6, "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    .line 117
    .local v2, "idSize":I
    if-nez v2, :cond_1

    .line 118
    iget-object v8, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    :goto_0
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutPackage;->refreshPinnedFlags()V

    .line 107
    return-void

    .line 120
    :cond_1
    iget-object v8, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    .line 125
    .local v5, "prevSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 127
    .local v3, "newSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_5

    .line 128
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 129
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {v4, v1}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v7

    .line 130
    .local v7, "si":Landroid/content/pm/ShortcutInfo;
    if-nez v7, :cond_3

    .line 127
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 133
    :cond_3
    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->isManifestShortcut()Z

    move-result v8

    if-nez v8, :cond_4

    .line 134
    if-eqz v5, :cond_2

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 133
    if-eqz v8, :cond_2

    .line 135
    :cond_4
    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 138
    .end local v1    # "id":Ljava/lang/String;
    .end local v7    # "si":Landroid/content/pm/ShortcutInfo;
    :cond_5
    iget-object v8, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v8, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 11
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "forBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 171
    iget-object v6, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v5

    .line 172
    .local v5, "size":I
    if-nez v5, :cond_0

    .line 173
    return-void

    .line 176
    :cond_0
    const-string/jumbo v6, "launcher-pins"

    invoke-interface {p1, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 177
    const-string/jumbo v6, "package-name"

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 178
    const-string/jumbo v6, "launcher-user"

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageUserId()I

    move-result v7

    int-to-long v8, v7

    invoke-static {p1, v6, v8, v9}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 179
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getPackageInfo()Lcom/android/server/pm/ShortcutPackageInfo;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/server/pm/ShortcutPackageInfo;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 181
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_3

    .line 182
    iget-object v6, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/ShortcutUser$PackageWithUser;

    .line 184
    .local v4, "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    if-eqz p2, :cond_1

    iget v6, v4, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutLauncher;->getOwnerUserId()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 181
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_1
    const-string/jumbo v6, "package"

    invoke-interface {p1, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 189
    const-string/jumbo v6, "package-name"

    iget-object v7, v4, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->packageName:Ljava/lang/String;

    invoke-static {p1, v6, v7}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 190
    const-string/jumbo v6, "package-user"

    iget v7, v4, Lcom/android/server/pm/ShortcutUser$PackageWithUser;->userId:I

    int-to-long v8, v7

    invoke-static {p1, v6, v8, v9}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 192
    iget-object v6, p0, Lcom/android/server/pm/ShortcutLauncher;->mPinnedShortcuts:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 193
    .local v2, "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 194
    .local v1, "idSize":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v1, :cond_2

    .line 195
    const-string/jumbo v7, "pin"

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {p1, v7, v6}, Lcom/android/server/pm/ShortcutService;->writeTagValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 197
    :cond_2
    const-string/jumbo v6, "package"

    invoke-interface {p1, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 200
    .end local v1    # "idSize":I
    .end local v2    # "ids":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v3    # "j":I
    .end local v4    # "pu":Lcom/android/server/pm/ShortcutUser$PackageWithUser;
    :cond_3
    const-string/jumbo v6, "launcher-pins"

    invoke-interface {p1, v10, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 170
    return-void
.end method
