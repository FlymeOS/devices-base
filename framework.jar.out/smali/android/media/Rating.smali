.class public final Landroid/media/Rating;
.super Ljava/lang/Object;
.source "Rating.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Rating$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/Rating;",
            ">;"
        }
    .end annotation
.end field

.field public static final RATING_3_STARS:I = 0x3

.field public static final RATING_4_STARS:I = 0x4

.field public static final RATING_5_STARS:I = 0x5

.field public static final RATING_HEART:I = 0x1

.field public static final RATING_NONE:I = 0x0

.field private static final RATING_NOT_RATED:F = -1.0f

.field public static final RATING_PERCENTAGE:I = 0x6

.field public static final RATING_THUMB_UP_DOWN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Rating"


# instance fields
.field private final mRatingStyle:I

.field private final mRatingValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    new-instance v0, Landroid/media/Rating$1;

    invoke-direct {v0}, Landroid/media/Rating$1;-><init>()V

    .line 119
    sput-object v0, Landroid/media/Rating;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 35
    return-void
.end method

.method private constructor <init>(IF)V
    .locals 0
    .param p1, "ratingStyle"    # I
    .param p2, "rating"    # F

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p1, p0, Landroid/media/Rating;->mRatingStyle:I

    .line 99
    iput p2, p0, Landroid/media/Rating;->mRatingValue:F

    .line 97
    return-void
.end method

.method synthetic constructor <init>(IFLandroid/media/Rating;)V
    .locals 0
    .param p1, "ratingStyle"    # I
    .param p2, "rating"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/Rating;-><init>(IF)V

    return-void
.end method

.method public static newHeartRating(Z)Landroid/media/Rating;
    .locals 3
    .param p0, "hasHeart"    # Z

    .prologue
    .line 168
    new-instance v1, Landroid/media/Rating;

    if-eqz p0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Landroid/media/Rating;-><init>(IF)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newPercentageRating(F)Landroid/media/Rating;
    .locals 2
    .param p0, "percent"    # F

    .prologue
    .line 225
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    .line 226
    :cond_0
    const-string/jumbo v0, "Rating"

    const-string/jumbo v1, "Invalid percentage-based rating value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v0, 0x0

    return-object v0

    .line 229
    :cond_1
    new-instance v0, Landroid/media/Rating;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/media/Rating;-><init>(IF)V

    return-object v0
.end method

.method public static newStarRating(IF)Landroid/media/Rating;
    .locals 5
    .param p0, "starRatingStyle"    # I
    .param p1, "starRating"    # F

    .prologue
    const/4 v4, 0x0

    .line 195
    const/high16 v0, -0x40800000    # -1.0f

    .line 196
    .local v0, "maxRating":F
    packed-switch p0, :pswitch_data_0

    .line 207
    const-string/jumbo v1, "Rating"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid rating style ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") for a star rating"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-object v4

    .line 198
    :pswitch_0
    const/high16 v0, 0x40400000    # 3.0f

    .line 210
    :goto_0
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    .line 211
    :cond_0
    const-string/jumbo v1, "Rating"

    const-string/jumbo v2, "Trying to set out of range star-based rating"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-object v4

    .line 201
    :pswitch_1
    const/high16 v0, 0x40800000    # 4.0f

    .line 202
    goto :goto_0

    .line 204
    :pswitch_2
    const/high16 v0, 0x40a00000    # 5.0f

    .line 205
    goto :goto_0

    .line 214
    :cond_1
    new-instance v1, Landroid/media/Rating;

    invoke-direct {v1, p0, p1}, Landroid/media/Rating;-><init>(IF)V

    return-object v1

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static newThumbRating(Z)Landroid/media/Rating;
    .locals 3
    .param p0, "thumbIsUp"    # Z

    .prologue
    .line 179
    new-instance v1, Landroid/media/Rating;

    if-eqz p0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Landroid/media/Rating;-><init>(IF)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newUnratedRating(I)Landroid/media/Rating;
    .locals 2
    .param p0, "ratingStyle"    # I

    .prologue
    .line 147
    packed-switch p0, :pswitch_data_0

    .line 156
    const/4 v0, 0x0

    return-object v0

    .line 154
    :pswitch_0
    new-instance v0, Landroid/media/Rating;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, p0, v1}, Landroid/media/Rating;-><init>(IF)V

    return-object v0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    return v0
.end method

.method public getPercentRating()F
    .locals 2

    .prologue
    .line 302
    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/media/Rating;->isRated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    return v0

    .line 303
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getRatingStyle()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    return v0
.end method

.method public getStarRating()F
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    packed-switch v0, :pswitch_data_0

    .line 292
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 288
    :pswitch_0
    invoke-virtual {p0}, Landroid/media/Rating;->isRated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    return v0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public hasHeart()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 258
    iget v2, p0, Landroid/media/Rating;->mRatingStyle:I

    if-eq v2, v0, :cond_0

    .line 259
    return v1

    .line 261
    :cond_0
    iget v2, p0, Landroid/media/Rating;->mRatingValue:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isRated()Z
    .locals 2

    .prologue
    .line 238
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isThumbUp()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 271
    iget v1, p0, Landroid/media/Rating;->mRatingStyle:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 272
    return v0

    .line 274
    :cond_0
    iget v1, p0, Landroid/media/Rating;->mRatingValue:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Rating:style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/Rating;->mRatingStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 105
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    const-string/jumbo v0, "unrated"

    .line 104
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 105
    :cond_0
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 115
    iget v0, p0, Landroid/media/Rating;->mRatingStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget v0, p0, Landroid/media/Rating;->mRatingValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 114
    return-void
.end method
