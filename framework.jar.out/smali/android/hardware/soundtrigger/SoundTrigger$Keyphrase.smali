.class public Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
.super Ljava/lang/Object;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Keyphrase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final id:I

.field public final locale:Ljava/lang/String;

.field public final recognitionModes:I

.field public final text:Ljava/lang/String;

.field public final users:[I


# direct methods
.method static synthetic -wrap0(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 291
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase$1;-><init>()V

    .line 290
    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 265
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[I)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "recognitionModes"    # I
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "users"    # [I

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    .line 284
    iput p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->recognitionModes:I

    .line 285
    iput-object p3, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    .line 286
    iput-object p4, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    .line 287
    iput-object p5, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->users:[I

    .line 282
    return-void
.end method

.method private static fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
    .locals 7
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 302
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 303
    .local v1, "id":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 304
    .local v2, "recognitionModes":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 305
    .local v3, "locale":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 306
    .local v4, "text":Ljava/lang/String;
    const/4 v5, 0x0

    .line 307
    .local v5, "users":[I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 308
    .local v6, "numUsers":I
    if-ltz v6, :cond_0

    .line 309
    new-array v5, v6, [I

    .line 310
    .local v5, "users":[I
    invoke-virtual {p0, v5}, Landroid/os/Parcel;->readIntArray([I)V

    .line 312
    .end local v5    # "users":[I
    :cond_0
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    invoke-direct/range {v0 .. v5}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;-><init>(IILjava/lang/String;Ljava/lang/String;[I)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 348
    if-ne p0, p1, :cond_0

    .line 349
    return v4

    .line 350
    :cond_0
    if-nez p1, :cond_1

    .line 351
    return v3

    .line 352
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 353
    return v3

    :cond_2
    move-object v0, p1

    .line 354
    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    .line 355
    .local v0, "other":Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 356
    iget-object v1, v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 357
    return v3

    .line 358
    :cond_3
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    iget-object v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 359
    return v3

    .line 360
    :cond_4
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    iget v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    if-eq v1, v2, :cond_5

    .line 361
    return v3

    .line 362
    :cond_5
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 363
    iget-object v1, v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 364
    return v3

    .line 365
    :cond_6
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    iget-object v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 366
    return v3

    .line 367
    :cond_7
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->recognitionModes:I

    iget v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->recognitionModes:I

    if-eq v1, v2, :cond_8

    .line 368
    return v3

    .line 369
    :cond_8
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->users:[I

    iget-object v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->users:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 370
    return v3

    .line 371
    :cond_9
    return v4
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 336
    const/16 v0, 0x1f

    .line 338
    .local v0, "prime":I
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 339
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    add-int v1, v2, v4

    .line 340
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 341
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->recognitionModes:I

    add-int v1, v2, v3

    .line 342
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->users:[I

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    move-result v3

    add-int v1, v2, v3

    .line 343
    return v1

    .line 338
    .end local v1    # "result":I
    :cond_0
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 340
    .restart local v1    # "result":I
    :cond_1
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Keyphrase [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", recognitionModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->recognitionModes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", locale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 377
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 377
    const-string/jumbo v1, ", text="

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 377
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 377
    const-string/jumbo v1, ", users="

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 377
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->users:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 377
    const-string/jumbo v1, "]"

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 317
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->recognitionModes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->users:[I

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->users:[I

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->users:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 316
    :goto_0
    return-void

    .line 325
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
