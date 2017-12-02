.class Lcom/android/server/accounts/CryptoHelper;
.super Ljava/lang/Object;
.source "CryptoHelper.java"


# static fields
.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/CBC/PKCS5Padding"

.field private static final IV_LENGTH:I = 0x10

.field private static final KEY_ALGORITHM:Ljava/lang/String; = "AES"

.field private static final KEY_CIPHER:Ljava/lang/String; = "cipher"

.field private static final KEY_IV:Ljava/lang/String; = "iv"

.field private static final KEY_MAC:Ljava/lang/String; = "mac"

.field private static final MAC_ALGORITHM:Ljava/lang/String; = "HMACSHA256"

.field private static final TAG:Ljava/lang/String; = "Account"

.field private static sInstance:Lcom/android/server/accounts/CryptoHelper;


# instance fields
.field private final mEncryptionKey:Ljavax/crypto/SecretKey;

.field private final mMacKey:Ljavax/crypto/SecretKey;


# direct methods
.method private constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string/jumbo v1, "AES"

    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 49
    .local v0, "kgen":Ljavax/crypto/KeyGenerator;
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accounts/CryptoHelper;->mEncryptionKey:Ljavax/crypto/SecretKey;

    .line 51
    const-string/jumbo v1, "HMACSHA256"

    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accounts/CryptoHelper;->mMacKey:Ljavax/crypto/SecretKey;

    .line 47
    return-void
.end method

.method private static constantTimeArrayEquals([B[B)Z
    .locals 6
    .param p0, "a"    # [B
    .param p1, "b"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 124
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 125
    :cond_0
    if-ne p0, p1, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    .line 127
    :cond_2
    array-length v4, p0

    array-length v5, p1

    if-eq v4, v5, :cond_3

    .line 128
    return v3

    .line 130
    :cond_3
    const/4 v1, 0x1

    .line 131
    .local v1, "isEqual":Z
    const/4 v0, 0x0

    .end local v1    # "isEqual":Z
    .local v0, "i":I
    :goto_1
    array-length v4, p1

    if-ge v0, v4, :cond_5

    .line 132
    aget-byte v4, p0, v0

    aget-byte v5, p1, v0

    if-ne v4, v5, :cond_4

    move v4, v2

    :goto_2
    and-int/2addr v1, v4

    .line 131
    .local v1, "isEqual":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "isEqual":Z
    :cond_4
    move v4, v3

    .line 132
    goto :goto_2

    .line 134
    :cond_5
    return v1
.end method

.method private createMac([B[B)[B
    .locals 2
    .param p1, "cipher"    # [B
    .param p2, "iv"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 116
    const-string/jumbo v1, "HMACSHA256"

    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 117
    .local v0, "mac":Ljavax/crypto/Mac;
    iget-object v1, p0, Lcom/android/server/accounts/CryptoHelper;->mMacKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 118
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 119
    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->update([B)V

    .line 120
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v1

    return-object v1
.end method

.method static declared-synchronized getInstance()Lcom/android/server/accounts/CryptoHelper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const-class v1, Lcom/android/server/accounts/CryptoHelper;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/android/server/accounts/CryptoHelper;->sInstance:Lcom/android/server/accounts/CryptoHelper;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/android/server/accounts/CryptoHelper;

    invoke-direct {v0}, Lcom/android/server/accounts/CryptoHelper;-><init>()V

    sput-object v0, Lcom/android/server/accounts/CryptoHelper;->sInstance:Lcom/android/server/accounts/CryptoHelper;

    .line 44
    :cond_0
    sget-object v0, Lcom/android/server/accounts/CryptoHelper;->sInstance:Lcom/android/server/accounts/CryptoHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private verifyMac([B[B[B)Z
    .locals 3
    .param p1, "cipherArray"    # [B
    .param p2, "iv"    # [B
    .param p3, "macArray"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 104
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_2

    .line 106
    :cond_0
    const-string/jumbo v0, "Account"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    const-string/jumbo v0, "Account"

    const-string/jumbo v1, "Cipher or MAC is empty!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_1
    return v2

    .line 104
    :cond_2
    if-eqz p3, :cond_0

    .line 105
    array-length v0, p3

    if-eqz v0, :cond_0

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/CryptoHelper;->createMac([B[B)[B

    move-result-object v0

    invoke-static {p3, v0}, Lcom/android/server/accounts/CryptoHelper;->constantTimeArrayEquals([B[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method decryptBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 79
    const-string/jumbo v8, "Cannot decrypt null bundle."

    invoke-static {p1, v8}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string/jumbo v8, "iv"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 81
    .local v5, "iv":[B
    const-string/jumbo v8, "cipher"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 82
    .local v4, "encryptedBytes":[B
    const-string/jumbo v8, "mac"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v7

    .line 83
    .local v7, "mac":[B
    invoke-direct {p0, v4, v5, v7}, Lcom/android/server/accounts/CryptoHelper;->verifyMac([B[B[B)Z

    move-result v8

    if-nez v8, :cond_0

    .line 84
    const-string/jumbo v8, "Account"

    const-string/jumbo v9, "Escrow mac mismatched!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v8, 0x0

    return-object v8

    .line 88
    :cond_0
    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 89
    .local v6, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const-string/jumbo v8, "AES/CBC/PKCS5Padding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 90
    .local v0, "cipher":Ljavax/crypto/Cipher;
    iget-object v8, p0, Lcom/android/server/accounts/CryptoHelper;->mEncryptionKey:Ljavax/crypto/SecretKey;

    const/4 v9, 0x2

    invoke-virtual {v0, v9, v8, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 91
    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 93
    .local v2, "decryptedBytes":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 94
    .local v3, "decryptedParcel":Landroid/os/Parcel;
    array-length v8, v2

    invoke-virtual {v3, v2, v10, v8}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 95
    invoke-virtual {v3, v10}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 96
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 97
    .local v1, "decryptedBundle":Landroid/os/Bundle;
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    .line 98
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 99
    return-object v1
.end method

.method encryptBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 57
    const-string/jumbo v7, "Cannot encrypt null bundle."

    invoke-static {p1, v7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 59
    .local v6, "parcel":Landroid/os/Parcel;
    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 60
    invoke-virtual {v6}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 61
    .local v1, "clearBytes":[B
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 63
    const-string/jumbo v7, "AES/CBC/PKCS5Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 64
    .local v0, "cipher":Ljavax/crypto/Cipher;
    iget-object v7, p0, Lcom/android/server/accounts/CryptoHelper;->mEncryptionKey:Ljavax/crypto/SecretKey;

    const/4 v8, 0x1

    invoke-virtual {v0, v8, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 65
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 66
    .local v3, "encryptedBytes":[B
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v4

    .line 67
    .local v4, "iv":[B
    invoke-direct {p0, v3, v4}, Lcom/android/server/accounts/CryptoHelper;->createMac([B[B)[B

    move-result-object v5

    .line 69
    .local v5, "mac":[B
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 70
    .local v2, "encryptedBundle":Landroid/os/Bundle;
    const-string/jumbo v7, "cipher"

    invoke-virtual {v2, v7, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 71
    const-string/jumbo v7, "mac"

    invoke-virtual {v2, v7, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 72
    const-string/jumbo v7, "iv"

    invoke-virtual {v2, v7, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 74
    return-object v2
.end method
