.class public abstract Landroid/app/backup/BlobBackupHelper;
.super Ljava/lang/Object;
.source "BlobBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BlobBackupHelper"


# instance fields
.field private final mCurrentBlobVersion:I

.field private final mKeys:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>(I[Ljava/lang/String;)V
    .locals 0
    .param p1, "currentBlobVersion"    # I
    .param p2, "keys"    # [Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    .line 51
    iput-object p2, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    .line 49
    return-void
.end method

.method private checksum([B)J
    .locals 8
    .param p1, "buffer"    # [B

    .prologue
    .line 219
    if-eqz p1, :cond_0

    .line 221
    :try_start_0
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 222
    .local v2, "crc":Ljava/util/zip/CRC32;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 223
    .local v0, "bis":Ljava/io/ByteArrayInputStream;
    const/16 v5, 0x1000

    new-array v1, v5, [B

    .line 224
    .local v1, "buf":[B
    const/4 v4, 0x0

    .line 225
    .local v4, "nRead":I
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_1

    .line 226
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v4}, Ljava/util/zip/CRC32;->update([BII)V

    goto :goto_0

    .line 229
    .end local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .end local v1    # "buf":[B
    .end local v2    # "crc":Ljava/util/zip/CRC32;
    .end local v4    # "nRead":I
    :catch_0
    move-exception v3

    .line 233
    :cond_0
    const-wide/16 v6, -0x1

    return-wide v6

    .line 228
    .restart local v0    # "bis":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "buf":[B
    .restart local v2    # "crc":Ljava/util/zip/CRC32;
    .restart local v4    # "nRead":I
    :cond_1
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    return-wide v6
.end method

.method private deflate([B)[B
    .locals 8
    .param p1, "data"    # [B

    .prologue
    .line 161
    const/4 v3, 0x0

    .line 162
    .local v3, "result":[B
    if-eqz p1, :cond_0

    .line 164
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 165
    .local v4, "sink":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 168
    .local v1, "headerOut":Ljava/io/DataOutputStream;
    iget v5, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 170
    new-instance v2, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v2, v4}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 171
    .local v2, "out":Ljava/util/zip/DeflaterOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/FilterOutputStream;->write([B)V

    .line 172
    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 173
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 181
    .end local v1    # "headerOut":Ljava/io/DataOutputStream;
    .end local v2    # "out":Ljava/util/zip/DeflaterOutputStream;
    .end local v3    # "result":[B
    .end local v4    # "sink":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_0
    return-object v3

    .line 177
    .restart local v3    # "result":[B
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "BlobBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to process payload: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private inflate([B)[B
    .locals 13
    .param p1, "compressedData"    # [B

    .prologue
    const/4 v12, 0x0

    .line 186
    const/4 v6, 0x0

    .line 187
    .local v6, "result":[B
    if-eqz p1, :cond_1

    .line 189
    :try_start_0
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 190
    .local v7, "source":Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 191
    .local v2, "headerIn":Ljava/io/DataInputStream;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 192
    .local v8, "version":I
    iget v9, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    if-le v8, v9, :cond_0

    .line 193
    const-string/jumbo v9, "BlobBackupHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Saved payload from unrecognized version "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-object v12

    .line 197
    :cond_0
    new-instance v3, Ljava/util/zip/InflaterInputStream;

    invoke-direct {v3, v7}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 198
    .local v3, "in":Ljava/util/zip/InflaterInputStream;
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 199
    .local v4, "inflated":Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x1000

    new-array v0, v9, [B

    .line 201
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FilterInputStream;->read([B)I

    move-result v5

    .local v5, "nRead":I
    if-lez v5, :cond_2

    .line 202
    const/4 v9, 0x0

    invoke-virtual {v4, v0, v9, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    .end local v0    # "buffer":[B
    .end local v2    # "headerIn":Ljava/io/DataInputStream;
    .end local v3    # "in":Ljava/util/zip/InflaterInputStream;
    .end local v4    # "inflated":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "nRead":I
    .end local v7    # "source":Ljava/io/ByteArrayInputStream;
    .end local v8    # "version":I
    :catch_0
    move-exception v1

    .line 212
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v9, "BlobBackupHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unable to process restored payload: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "result":[B
    :cond_1
    :goto_1
    return-object v6

    .line 204
    .restart local v0    # "buffer":[B
    .restart local v2    # "headerIn":Ljava/io/DataInputStream;
    .restart local v3    # "in":Ljava/util/zip/InflaterInputStream;
    .restart local v4    # "inflated":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "nRead":I
    .restart local v6    # "result":[B
    .restart local v7    # "source":Ljava/io/ByteArrayInputStream;
    .restart local v8    # "version":I
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/InflaterInputStream;->close()V

    .line 205
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 206
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    .local v6, "result":[B
    goto :goto_1
.end method

.method private readOldState(Landroid/os/ParcelFileDescriptor;)Landroid/util/ArrayMap;
    .locals 14
    .param p1, "oldStateFd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            ")",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 93
    .local v9, "state":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 94
    .local v4, "fis":Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 97
    .local v6, "in":Ljava/io/DataInputStream;
    :try_start_0
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 98
    .local v10, "version":I
    iget v11, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    if-gt v10, v11, :cond_0

    .line 99
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 103
    .local v8, "numKeys":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v8, :cond_1

    .line 104
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v7

    .line 105
    .local v7, "key":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    .line 109
    .local v0, "checksum":J
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v7, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 112
    .end local v0    # "checksum":J
    .end local v5    # "i":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "numKeys":I
    :cond_0
    const-string/jumbo v11, "BlobBackupHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Prior state from unrecognized version "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v10    # "version":I
    :cond_1
    :goto_1
    return-object v9

    .line 121
    :catch_0
    move-exception v3

    .line 122
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "BlobBackupHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Error examining prior backup state "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {v9}, Landroid/util/ArrayMap;->clear()V

    goto :goto_1

    .line 114
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 120
    .local v2, "e":Ljava/io/EOFException;
    invoke-virtual {v9}, Landroid/util/ArrayMap;->clear()V

    goto :goto_1
.end method

.method private writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V
    .locals 10
    .param p2, "stateFile"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/os/ParcelFileDescriptor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, "state":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 139
    .local v4, "fos":Ljava/io/FileOutputStream;
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 141
    .local v7, "out":Ljava/io/DataOutputStream;
    iget v8, p0, Landroid/app/backup/BlobBackupHelper;->mCurrentBlobVersion:I

    invoke-virtual {v7, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 143
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 144
    .local v0, "N":I
    :goto_0
    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 145
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_1

    .line 146
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 147
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 151
    .local v2, "checksum":J
    invoke-virtual {v7, v6}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v7, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 143
    .end local v0    # "N":I
    .end local v2    # "checksum":J
    .end local v5    # "i":I
    .end local v6    # "key":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 154
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "out":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v8, "BlobBackupHelper"

    const-string/jumbo v9, "Unable to write updated state"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract applyRestoredPayload(Ljava/lang/String;[B)V
.end method

.method protected abstract getBackupPayload(Ljava/lang/String;)[B
.end method

.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 16
    .param p1, "oldStateFd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newStateFd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 245
    invoke-direct/range {p0 .. p1}, Landroid/app/backup/BlobBackupHelper;->readOldState(Landroid/os/ParcelFileDescriptor;)Landroid/util/ArrayMap;

    move-result-object v8

    .line 246
    .local v8, "oldState":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 249
    .local v6, "newState":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    const/4 v10, 0x0

    array-length v12, v11

    :goto_0
    if-ge v10, v12, :cond_3

    aget-object v5, v11, v10

    .line 250
    .local v5, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/backup/BlobBackupHelper;->getBackupPayload(Ljava/lang/String;)[B

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/app/backup/BlobBackupHelper;->deflate([B)[B

    move-result-object v9

    .line 251
    .local v9, "payload":[B
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/app/backup/BlobBackupHelper;->checksum([B)J

    move-result-wide v2

    .line 255
    .local v2, "checksum":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v6, v5, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 258
    .local v7, "oldChecksum":Ljava/lang/Long;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v13, v2, v14

    if-eqz v13, :cond_1

    .line 263
    :cond_0
    if-eqz v9, :cond_2

    .line 264
    array-length v13, v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v13}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    .line 265
    array-length v13, v9

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v13}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    .line 249
    :cond_1
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 268
    :cond_2
    const/4 v13, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v5, v13}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 276
    .end local v2    # "checksum":J
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "oldChecksum":Ljava/lang/Long;
    .end local v9    # "payload":[B
    :catch_0
    move-exception v4

    .line 277
    .local v4, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v10, "BlobBackupHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Unable to record notification state: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v6, v1}, Landroid/app/backup/BlobBackupHelper;->writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V

    .line 240
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 281
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v6, v1}, Landroid/app/backup/BlobBackupHelper;->writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_2

    .line 279
    :catchall_0
    move-exception v10

    .line 281
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v6, v1}, Landroid/app/backup/BlobBackupHelper;->writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V

    .line 279
    throw v10
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 8
    .param p1, "data"    # Landroid/app/backup/BackupDataInputStream;

    .prologue
    .line 287
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, "key":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "which":I
    :goto_0
    :try_start_0
    iget-object v5, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 292
    iget-object v5, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 296
    :cond_0
    iget-object v5, p0, Landroid/app/backup/BlobBackupHelper;->mKeys:[Ljava/lang/String;

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 297
    const-string/jumbo v5, "BlobBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unrecognized key "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void

    .line 291
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 301
    :cond_2
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->size()I

    move-result v5

    new-array v0, v5, [B

    .line 302
    .local v0, "compressed":[B
    invoke-virtual {p1, v0}, Landroid/app/backup/BackupDataInputStream;->read([B)I

    .line 303
    invoke-direct {p0, v0}, Landroid/app/backup/BlobBackupHelper;->inflate([B)[B

    move-result-object v3

    .line 304
    .local v3, "payload":[B
    invoke-virtual {p0, v2, v3}, Landroid/app/backup/BlobBackupHelper;->applyRestoredPayload(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v0    # "compressed":[B
    .end local v3    # "payload":[B
    :goto_1
    return-void

    .line 305
    :catch_0
    move-exception v1

    .line 306
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "BlobBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception restoring entity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p1, "newState"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 316
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/app/backup/BlobBackupHelper;->writeBackupState(Landroid/util/ArrayMap;Landroid/os/ParcelFileDescriptor;)V

    .line 311
    return-void
.end method
