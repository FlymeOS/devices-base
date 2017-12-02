.class Lcom/android/server/pm/ShortcutPackageInfo;
.super Ljava/lang/Object;
.source "ShortcutPackageInfo.java"


# static fields
.field private static final ATTR_LAST_UPDATE_TIME:Ljava/lang/String; = "last_udpate_time"

.field private static final ATTR_SHADOW:Ljava/lang/String; = "shadow"

.field private static final ATTR_SIGNATURE_HASH:Ljava/lang/String; = "hash"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final TAG:Ljava/lang/String; = "ShortcutService"

.field static final TAG_ROOT:Ljava/lang/String; = "package-info"

.field private static final TAG_SIGNATURE:Ljava/lang/String; = "signature"

.field private static final VERSION_UNKNOWN:I = -0x1


# instance fields
.field private mIsShadow:Z

.field private mLastUpdateTime:J

.field private mSigHashes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mVersionCode:I


# direct methods
.method private constructor <init>(IJLjava/util/ArrayList;Z)V
    .locals 2
    .param p1, "versionCode"    # I
    .param p2, "lastUpdateTime"    # J
    .param p5, "isShadow"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/ArrayList",
            "<[B>;Z)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p4, "sigHashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    .line 66
    iput p1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    .line 67
    iput-wide p2, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    .line 68
    iput-boolean p5, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    .line 69
    iput-object p4, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    .line 65
    return-void
.end method

.method public static generateForInstalledPackageForTest(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackageInfo;
    .locals 7
    .param p0, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageUserId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ShortcutService;->getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 128
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    iget-object v1, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_0

    iget-object v1, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v1, v1

    if-nez v1, :cond_1

    .line 129
    :cond_0
    const-string/jumbo v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t get signatures: package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-object v4

    .line 132
    :cond_1
    new-instance v0, Lcom/android/server/pm/ShortcutPackageInfo;

    iget v1, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-wide v2, v6, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 133
    iget-object v4, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v4}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    move-result-object v4

    .line 132
    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutPackageInfo;-><init>(IJLjava/util/ArrayList;Z)V

    .line 135
    .local v0, "ret":Lcom/android/server/pm/ShortcutPackageInfo;
    return-object v0
.end method

.method public static newEmpty()Lcom/android/server/pm/ShortcutPackageInfo;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 73
    new-instance v0, Lcom/android/server/pm/ShortcutPackageInfo;

    const-wide/16 v2, 0x0

    .line 74
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    const/4 v1, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutPackageInfo;-><init>(IJLjava/util/ArrayList;Z)V

    return-object v0
.end method


# virtual methods
.method public canRestoreTo(Lcom/android/server/pm/ShortcutService;Landroid/content/pm/PackageInfo;)Z
    .locals 6
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "target"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 106
    invoke-virtual {p1, p2}, Lcom/android/server/pm/ShortcutService;->shouldBackupApp(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    const-string/jumbo v0, "ShortcutService"

    const-string/jumbo v1, "Can\'t restore: package no longer allows backup"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return v4

    .line 111
    :cond_0
    iget v0, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    if-ge v0, v1, :cond_1

    .line 112
    const-string/jumbo v0, "ShortcutService"

    .line 113
    const-string/jumbo v1, "Can\'t restore: package current version %d < backed up version %d"

    .line 112
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 114
    iget v3, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 112
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return v4

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    invoke-static {v0, p2}, Lcom/android/server/backup/BackupUtils;->signaturesMatch(Ljava/util/ArrayList;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    const-string/jumbo v0, "ShortcutService"

    const-string/jumbo v1, "Can\'t restore: Package signature mismatch"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return v4

    .line 121
    :cond_2
    return v5
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 217
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 218
    const-string/jumbo v1, "PackageInfo:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 221
    const-string/jumbo v1, "  IsShadow: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    iget-boolean v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 223
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 225
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 226
    const-string/jumbo v1, "  Version: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 227
    iget v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 228
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 230
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 231
    const-string/jumbo v1, "  Last package update time: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 232
    iget-wide v2, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 233
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 236
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 237
    const-string/jumbo v1, "    "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 238
    const-string/jumbo v1, "SigHash: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println([C)V

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_0
    return-void
.end method

.method public getLastUpdateTime()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    return-wide v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    return v0
.end method

.method public hasSignatures()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 102
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isShadow()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    return v0
.end method

.method public loadFromXml(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "fromBackup"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 173
    const-string/jumbo v10, "version"

    invoke-static {p1, v10}, Lcom/android/server/pm/ShortcutService;->parseIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v9

    .line 176
    .local v9, "versionCode":I
    const-string/jumbo v10, "last_udpate_time"

    .line 175
    invoke-static {p1, v10}, Lcom/android/server/pm/ShortcutService;->parseLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    .line 180
    .local v4, "lastUpdateTime":J
    if-nez p2, :cond_2

    const-string/jumbo v10, "shadow"

    invoke-static {p1, v10}, Lcom/android/server/pm/ShortcutService;->parseBooleanAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    .line 182
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v2, "hashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 186
    .local v3, "outerDepth":I
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    .local v8, "type":I
    const/4 v10, 0x1

    if-eq v8, v10, :cond_4

    .line 187
    const/4 v10, 0x3

    if-ne v8, v10, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v3, :cond_4

    .line 188
    :cond_1
    const/4 v10, 0x2

    if-ne v8, v10, :cond_0

    .line 191
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 192
    .local v0, "depth":I
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 194
    .local v7, "tag":Ljava/lang/String;
    add-int/lit8 v10, v3, 0x1

    if-ne v0, v10, :cond_3

    .line 195
    const-string/jumbo v10, "signature"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 198
    const-string/jumbo v10, "hash"

    .line 197
    invoke-static {p1, v10}, Lcom/android/server/pm/ShortcutService;->parseStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    .local v1, "hash":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Llibcore/io/Base64;->decode([B)[B

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 180
    .end local v0    # "depth":I
    .end local v1    # "hash":Ljava/lang/String;
    .end local v2    # "hashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .end local v3    # "outerDepth":I
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "type":I
    :cond_2
    const/4 v6, 0x1

    .local v6, "shadow":Z
    goto :goto_0

    .line 204
    .end local v6    # "shadow":Z
    .restart local v0    # "depth":I
    .restart local v2    # "hashes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    .restart local v3    # "outerDepth":I
    .restart local v7    # "tag":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_3
    invoke-static {v0, v7}, Lcom/android/server/pm/ShortcutService;->warnForInvalidTag(ILjava/lang/String;)V

    goto :goto_1

    .line 208
    .end local v0    # "depth":I
    .end local v7    # "tag":Ljava/lang/String;
    :cond_4
    iput v9, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    .line 209
    iput-wide v4, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    .line 210
    iput-boolean v6, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    .line 211
    iput-object v2, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    .line 171
    return-void
.end method

.method public refreshSignature(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutPackageItem;)V
    .locals 4
    .param p1, "s"    # Lcom/android/server/pm/ShortcutService;
    .param p2, "pkg"    # Lcom/android/server/pm/ShortcutPackageItem;

    .prologue
    .line 139
    iget-boolean v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    if-eqz v1, :cond_0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attempted to refresh package info for shadow package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 141
    const-string/jumbo v2, ", user="

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 141
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getOwnerUserId()I

    move-result v2

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;)V

    .line 142
    return-void

    .line 146
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageUserId()I

    move-result v2

    .line 145
    invoke-virtual {p1, v1, v2}, Lcom/android/server/pm/ShortcutService;->getPackageInfoWithSignatures(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 147
    .local v0, "pi":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_1

    .line 148
    const-string/jumbo v1, "ShortcutService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Package not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/server/pm/ShortcutPackageItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void

    .line 151
    :cond_1
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v1}, Lcom/android/server/backup/BackupUtils;->hashSignatureArray([Landroid/content/pm/Signature;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    .line 138
    return-void
.end method

.method public saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 5
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 156
    const-string/jumbo v1, "package-info"

    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 158
    const-string/jumbo v1, "version"

    iget v2, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    int-to-long v2, v2

    invoke-static {p1, v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 159
    const-string/jumbo v1, "last_udpate_time"

    iget-wide v2, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    invoke-static {p1, v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    .line 160
    const-string/jumbo v1, "shadow"

    iget-boolean v2, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    invoke-static {p1, v1, v2}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 162
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 163
    const-string/jumbo v1, "signature"

    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 164
    const-string/jumbo v2, "hash"

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mSigHashes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {v1}, Llibcore/io/Base64;->encode([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v2, v1}, Lcom/android/server/pm/ShortcutService;->writeAttr(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 165
    const-string/jumbo v1, "signature"

    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    const-string/jumbo v1, "package-info"

    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 154
    return-void
.end method

.method public setShadow(Z)V
    .locals 0
    .param p1, "shadow"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mIsShadow:Z

    .line 81
    return-void
.end method

.method public updateVersionInfo(Landroid/content/pm/PackageInfo;)V
    .locals 2
    .param p1, "pi"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 96
    iget v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mVersionCode:I

    .line 97
    iget-wide v0, p1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iput-wide v0, p0, Lcom/android/server/pm/ShortcutPackageInfo;->mLastUpdateTime:J

    .line 94
    :cond_0
    return-void
.end method
