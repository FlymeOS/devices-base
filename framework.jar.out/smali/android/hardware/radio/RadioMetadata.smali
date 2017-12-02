.class public final Landroid/hardware/radio/RadioMetadata;
.super Ljava/lang/Object;
.source "RadioMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioMetadata$1;,
        Landroid/hardware/radio/RadioMetadata$Builder;,
        Landroid/hardware/radio/RadioMetadata$Clock;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/radio/RadioMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static final METADATA_KEYS_TYPE:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final METADATA_KEY_ALBUM:Ljava/lang/String; = "android.hardware.radio.metadata.ALBUM"

.field public static final METADATA_KEY_ART:Ljava/lang/String; = "android.hardware.radio.metadata.ART"

.field public static final METADATA_KEY_ARTIST:Ljava/lang/String; = "android.hardware.radio.metadata.ARTIST"

.field public static final METADATA_KEY_CLOCK:Ljava/lang/String; = "android.hardware.radio.metadata.CLOCK"

.field public static final METADATA_KEY_GENRE:Ljava/lang/String; = "android.hardware.radio.metadata.GENRE"

.field public static final METADATA_KEY_ICON:Ljava/lang/String; = "android.hardware.radio.metadata.ICON"

.field public static final METADATA_KEY_RBDS_PTY:Ljava/lang/String; = "android.hardware.radio.metadata.RBDS_PTY"

.field public static final METADATA_KEY_RDS_PI:Ljava/lang/String; = "android.hardware.radio.metadata.RDS_PI"

.field public static final METADATA_KEY_RDS_PS:Ljava/lang/String; = "android.hardware.radio.metadata.RDS_PS"

.field public static final METADATA_KEY_RDS_PTY:Ljava/lang/String; = "android.hardware.radio.metadata.RDS_PTY"

.field public static final METADATA_KEY_RDS_RT:Ljava/lang/String; = "android.hardware.radio.metadata.RDS_RT"

.field public static final METADATA_KEY_TITLE:Ljava/lang/String; = "android.hardware.radio.metadata.TITLE"

.field private static final METADATA_TYPE_BITMAP:I = 0x2

.field private static final METADATA_TYPE_CLOCK:I = 0x3

.field private static final METADATA_TYPE_INT:I = 0x0

.field private static final METADATA_TYPE_INVALID:I = -0x1

.field private static final METADATA_TYPE_TEXT:I = 0x1

.field private static final NATIVE_KEY_ALBUM:I = 0x7

.field private static final NATIVE_KEY_ART:I = 0xa

.field private static final NATIVE_KEY_ARTIST:I = 0x6

.field private static final NATIVE_KEY_CLOCK:I = 0xb

.field private static final NATIVE_KEY_GENRE:I = 0x8

.field private static final NATIVE_KEY_ICON:I = 0x9

.field private static final NATIVE_KEY_INVALID:I = -0x1

.field private static final NATIVE_KEY_MAPPING:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_KEY_RBDS_PTY:I = 0x3

.field private static final NATIVE_KEY_RDS_PI:I = 0x0

.field private static final NATIVE_KEY_RDS_PS:I = 0x1

.field private static final NATIVE_KEY_RDS_PTY:I = 0x2

.field private static final NATIVE_KEY_RDS_RT:I = 0x4

.field private static final NATIVE_KEY_TITLE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "RadioMetadata"


# instance fields
.field private final mBundle:Landroid/os/Bundle;


# direct methods
.method static synthetic -get0()Landroid/util/ArrayMap;
    .locals 1

    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/radio/RadioMetadata;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 113
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    .line 114
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.hardware.radio.metadata.RDS_PI"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.hardware.radio.metadata.RDS_PS"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.hardware.radio.metadata.RDS_PTY"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.hardware.radio.metadata.RBDS_PTY"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.hardware.radio.metadata.RDS_RT"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.hardware.radio.metadata.TITLE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.hardware.radio.metadata.ARTIST"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.hardware.radio.metadata.ALBUM"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.hardware.radio.metadata.GENRE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.hardware.radio.metadata.ICON"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.hardware.radio.metadata.ART"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string/jumbo v1, "android.hardware.radio.metadata.CLOCK"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    .line 147
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.hardware.radio.metadata.RDS_PI"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.hardware.radio.metadata.RDS_PS"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 149
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.hardware.radio.metadata.RDS_PTY"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 150
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.hardware.radio.metadata.RBDS_PTY"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 151
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.hardware.radio.metadata.RDS_RT"

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 152
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.hardware.radio.metadata.TITLE"

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 153
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.hardware.radio.metadata.ARTIST"

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 154
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.hardware.radio.metadata.ALBUM"

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 155
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.hardware.radio.metadata.GENRE"

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 156
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.hardware.radio.metadata.ICON"

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 157
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.hardware.radio.metadata.ART"

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 158
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const-string/jumbo v1, "android.hardware.radio.metadata.CLOCK"

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 328
    new-instance v0, Landroid/hardware/radio/RadioMetadata$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioMetadata$1;-><init>()V

    .line 327
    sput-object v0, Landroid/hardware/radio/RadioMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 40
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    .line 215
    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    .line 219
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Landroid/hardware/radio/RadioMetadata;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioMetadata;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    .line 223
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioMetadata;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioMetadata;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static getKeyFromNativeKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "nativeKey"    # I

    .prologue
    .line 324
    sget-object v0, Landroid/hardware/radio/RadioMetadata;->NATIVE_KEY_MAPPING:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 234
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x0

    return v0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 266
    const/4 v1, 0x0

    .line 268
    .local v1, "bmp":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v3, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :goto_0
    return-object v1

    .line 269
    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 271
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "RadioMetadata"

    const-string/jumbo v4, "Failed to retrieve a key as Bitmap."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getClock(Ljava/lang/String;)Landroid/hardware/radio/RadioMetadata$Clock;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 277
    const/4 v1, 0x0

    .line 279
    .local v1, "clock":Landroid/hardware/radio/RadioMetadata$Clock;
    :try_start_0
    iget-object v3, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/hardware/radio/RadioMetadata$Clock;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    .end local v1    # "clock":Landroid/hardware/radio/RadioMetadata$Clock;
    :goto_0
    return-object v1

    .line 280
    .restart local v1    # "clock":Landroid/hardware/radio/RadioMetadata$Clock;
    :catch_0
    move-exception v2

    .line 282
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "RadioMetadata"

    const-string/jumbo v4, "Failed to retrieve a key as Clock."

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 256
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 245
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 312
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method putBitmapFromNative(I[B)I
    .locals 7
    .param p1, "nativeKey"    # I
    .param p2, "value"    # [B

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 525
    invoke-static {p1}, Landroid/hardware/radio/RadioMetadata;->getKeyFromNativeKey(I)Ljava/lang/String;

    move-result-object v2

    .line 526
    .local v2, "key":Ljava/lang/String;
    sget-object v3, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 527
    sget-object v3, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 528
    :cond_0
    return v5

    .line 530
    :cond_1
    const/4 v0, 0x0

    .line 532
    .local v0, "bmp":Landroid/graphics/Bitmap;
    :try_start_0
    array-length v3, p2

    const/4 v4, 0x0

    invoke-static {p2, v4, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 535
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 536
    return v5

    .line 538
    :cond_2
    iget-object v3, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 539
    return v6

    .line 533
    .local v0, "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 536
    .local v1, "e":Ljava/lang/Exception;
    return v5

    .line 534
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 536
    return v5
.end method

.method putClockFromNative(IJI)I
    .locals 4
    .param p1, "nativeKey"    # I
    .param p2, "utcEpochSeconds"    # J
    .param p4, "timezoneOffsetInMinutes"    # I

    .prologue
    .line 544
    const-string/jumbo v1, "RadioMetadata"

    const-string/jumbo v2, "putClockFromNative()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-static {p1}, Landroid/hardware/radio/RadioMetadata;->getKeyFromNativeKey(I)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    sget-object v1, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 548
    :cond_0
    const/4 v1, -0x1

    return v1

    .line 550
    :cond_1
    iget-object v1, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    new-instance v2, Landroid/hardware/radio/RadioMetadata$Clock;

    invoke-direct {v2, p2, p3, p4}, Landroid/hardware/radio/RadioMetadata$Clock;-><init>(JI)V

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 552
    const/4 v1, 0x0

    return v1
.end method

.method putIntFromNative(II)I
    .locals 3
    .param p1, "nativeKey"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v2, 0x0

    .line 505
    invoke-static {p1}, Landroid/hardware/radio/RadioMetadata;->getKeyFromNativeKey(I)Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    sget-object v1, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    .line 508
    :cond_0
    const/4 v1, -0x1

    return v1

    .line 510
    :cond_1
    iget-object v1, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 511
    return v2
.end method

.method putStringFromNative(ILjava/lang/String;)I
    .locals 3
    .param p1, "nativeKey"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 515
    invoke-static {p1}, Landroid/hardware/radio/RadioMetadata;->getKeyFromNativeKey(I)Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    sget-object v1, Landroid/hardware/radio/RadioMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 518
    :cond_0
    const/4 v1, -0x1

    return v1

    .line 520
    :cond_1
    iget-object v1, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const/4 v1, 0x0

    return v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 294
    iget-object v0, p0, Landroid/hardware/radio/RadioMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 293
    return-void
.end method
