.class public Landroid/text/style/SuggestionSpan;
.super Landroid/text/style/CharacterStyle;
.source "SuggestionSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/style/SuggestionSpan$1;
    }
.end annotation


# static fields
.field public static final ACTION_SUGGESTION_PICKED:Ljava/lang/String; = "android.text.style.SUGGESTION_PICKED"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/text/style/SuggestionSpan;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_AUTO_CORRECTION:I = 0x4

.field public static final FLAG_EASY_CORRECT:I = 0x1

.field public static final FLAG_MISSPELLED:I = 0x2

.field public static final SUGGESTIONS_MAX_SIZE:I = 0x5

.field public static final SUGGESTION_SPAN_PICKED_AFTER:Ljava/lang/String; = "after"

.field public static final SUGGESTION_SPAN_PICKED_BEFORE:Ljava/lang/String; = "before"

.field public static final SUGGESTION_SPAN_PICKED_HASHCODE:Ljava/lang/String; = "hashcode"

.field private static final TAG:Ljava/lang/String; = "SuggestionSpan"


# instance fields
.field private mAutoCorrectionUnderlineColor:I

.field private mAutoCorrectionUnderlineThickness:F

.field private mEasyCorrectUnderlineColor:I

.field private mEasyCorrectUnderlineThickness:F

.field private mFlags:I

.field private final mHashCode:I

.field private final mLanguageTag:Ljava/lang/String;

.field private final mLocaleStringForCompatibility:Ljava/lang/String;

.field private mMisspelledUnderlineColor:I

.field private mMisspelledUnderlineThickness:F

.field private final mNotificationTargetClassName:Ljava/lang/String;

.field private final mNotificationTargetPackageName:Ljava/lang/String;

.field private final mSuggestions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 336
    new-instance v0, Landroid/text/style/SuggestionSpan$1;

    invoke-direct {v0}, Landroid/text/style/SuggestionSpan$1;-><init>()V

    .line 335
    sput-object v0, Landroid/text/style/SuggestionSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "suggestions"    # [Ljava/lang/String;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Locale;",
            "[",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p5, "notificationTargetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 138
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 140
    array-length v2, p3

    const/4 v3, 0x5

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 141
    .local v0, "N":I
    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    .line 142
    iput p4, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    .line 144
    if-eqz p2, :cond_0

    .line 145
    move-object v1, p2

    .line 153
    :goto_0
    if-nez v1, :cond_2

    const-string/jumbo v2, ""

    :goto_1
    iput-object v2, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    .line 154
    if-nez v1, :cond_3

    const-string/jumbo v2, ""

    :goto_2
    iput-object v2, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    .line 156
    if-eqz p1, :cond_4

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetPackageName:Ljava/lang/String;

    .line 162
    :goto_3
    if-eqz p5, :cond_5

    .line 163
    invoke-virtual {p5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    .line 167
    :goto_4
    iget-object v2, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    iget-object v3, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    iget-object v4, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    .line 168
    iget-object v5, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    .line 167
    invoke-static {v2, v3, v4, v5}, Landroid/text/style/SuggestionSpan;->hashCodeInternal([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    .line 170
    invoke-direct {p0, p1}, Landroid/text/style/SuggestionSpan;->initStyle(Landroid/content/Context;)V

    .line 139
    return-void

    .line 146
    :cond_0
    if-eqz p1, :cond_1

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .local v1, "sourceLocale":Ljava/util/Locale;
    goto :goto_0

    .line 150
    .end local v1    # "sourceLocale":Ljava/util/Locale;
    :cond_1
    const-string/jumbo v2, "SuggestionSpan"

    const-string/jumbo v3, "No locale or context specified in SuggestionSpan constructor"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v1, 0x0

    .local v1, "sourceLocale":Ljava/util/Locale;
    goto :goto_0

    .line 153
    .end local v1    # "sourceLocale":Ljava/util/Locale;
    :cond_2
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 154
    :cond_3
    invoke-virtual {v1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 159
    :cond_4
    iput-object v4, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetPackageName:Ljava/lang/String;

    goto :goto_3

    .line 165
    :cond_5
    const-string/jumbo v2, ""

    iput-object v2, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    goto :goto_4
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "suggestions"    # [Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v2

    .line 117
    invoke-direct/range {v0 .. v5}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 209
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetPackageName:Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    .line 209
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;[Ljava/lang/String;I)V
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "suggestions"    # [Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, v1

    .line 126
    invoke-direct/range {v0 .. v5}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;Ljava/util/Locale;[Ljava/lang/String;ILjava/lang/Class;)V

    .line 125
    return-void
.end method

.method private static hashCodeInternal([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "suggestions"    # [Ljava/lang/String;
    .param p1, "languageTag"    # Ljava/lang/String;
    .param p2, "localeStringForCompatibility"    # Ljava/lang/String;
    .param p3, "notificationTargetClassName"    # Ljava/lang/String;

    .prologue
    .line 331
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 332
    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const/4 v1, 0x4

    aput-object p3, v0, v1

    .line 331
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private initStyle(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v4, -0x1000000

    const/4 v3, 0x0

    .line 174
    if-nez p1, :cond_0

    .line 175
    iput v3, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    .line 176
    iput v3, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    .line 177
    iput v3, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    .line 178
    iput v4, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    .line 179
    iput v4, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    .line 180
    iput v4, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    .line 181
    return-void

    .line 184
    :cond_0
    const v0, 0x1160006

    .line 186
    .local v0, "defStyleAttr":I
    sget-object v2, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    .line 185
    invoke-virtual {p1, v6, v2, v0, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 187
    .local v1, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v7, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    .line 189
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    .line 192
    const v0, 0x1160005

    .line 194
    sget-object v2, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    .line 193
    invoke-virtual {p1, v6, v2, v0, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 195
    invoke-virtual {v1, v7, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    .line 197
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    .line 200
    const v0, 0x1160007

    .line 202
    sget-object v2, Lcom/android/internal/R$styleable;->SuggestionSpan:[I

    .line 201
    invoke-virtual {p1, v6, v2, v0, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 203
    invoke-virtual {v1, v7, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    .line 205
    invoke-virtual {v1, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    .line 173
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 318
    instance-of v1, p1, Landroid/text/style/SuggestionSpan;

    if-eqz v1, :cond_1

    .line 319
    check-cast p1, Landroid/text/style/SuggestionSpan;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->hashCode()I

    move-result v1

    iget v2, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 321
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    return v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    return-object v0
.end method

.method public getLocaleObject()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    goto :goto_0
.end method

.method public getNotificationTargetClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    .line 308
    invoke-virtual {p0}, Landroid/text/style/SuggestionSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    .prologue
    .line 313
    const/16 v0, 0x13

    return v0
.end method

.method public getSuggestions()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    return-object v0
.end method

.method public getUnderlineColor()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 373
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 374
    .local v2, "misspelled":Z
    :goto_0
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 375
    .local v1, "easy":Z
    :goto_1
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    .line 376
    .local v0, "autoCorrection":Z
    :goto_2
    if-eqz v1, :cond_4

    .line 377
    if-nez v2, :cond_3

    .line 378
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    return v3

    .line 373
    .end local v0    # "autoCorrection":Z
    .end local v1    # "easy":Z
    .end local v2    # "misspelled":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "misspelled":Z
    goto :goto_0

    .line 374
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "easy":Z
    goto :goto_1

    .line 375
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "autoCorrection":Z
    goto :goto_2

    .line 380
    :cond_3
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    return v3

    .line 382
    :cond_4
    if-eqz v0, :cond_5

    .line 383
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    return v3

    .line 385
    :cond_5
    return v4
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    return v0
.end method

.method public notifySelection(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "original"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 394
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 396
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 397
    :cond_0
    return-void

    .line 401
    :cond_1
    iget-object v2, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    if-eqz v2, :cond_2

    if-gez p3, :cond_3

    .line 402
    :cond_2
    const-string/jumbo v2, "SuggestionSpan"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to notify the suggestion as the index is out of range index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 403
    const-string/jumbo v4, " length="

    .line 402
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 403
    iget-object v4, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    array-length v4, v4

    .line 402
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-void

    .line 401
    :cond_3
    iget-object v2, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    array-length v2, v2

    if-ge p3, v2, :cond_2

    .line 409
    iget-object v2, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetPackageName:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 410
    iget-object v2, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    const-string/jumbo v2, "android.text.style.SUGGESTION_PICKED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 412
    const-string/jumbo v2, "before"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    const-string/jumbo v2, "after"

    iget-object v3, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    aget-object v3, v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    const-string/jumbo v2, "hashcode"

    invoke-virtual {p0}, Landroid/text/style/SuggestionSpan;->hashCode()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 415
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 393
    :cond_4
    :goto_0
    return-void

    .line 417
    :cond_5
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 418
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_4

    .line 419
    invoke-virtual {v0, p0, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->notifySuggestionPicked(Landroid/text/style/SuggestionSpan;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setFlags(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 276
    iput p1, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    .line 275
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 5
    .param p1, "tp"    # Landroid/text/TextPaint;

    .prologue
    .line 350
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 351
    .local v2, "misspelled":Z
    :goto_0
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    .line 352
    .local v1, "easy":Z
    :goto_1
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    .line 353
    .local v0, "autoCorrection":Z
    :goto_2
    if-eqz v1, :cond_5

    .line 354
    if-nez v2, :cond_4

    .line 355
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    iget v4, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    invoke-virtual {p1, v3, v4}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    .line 349
    :cond_0
    :goto_3
    return-void

    .line 350
    .end local v0    # "autoCorrection":Z
    .end local v1    # "easy":Z
    .end local v2    # "misspelled":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "misspelled":Z
    goto :goto_0

    .line 351
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "easy":Z
    goto :goto_1

    .line 352
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "autoCorrection":Z
    goto :goto_2

    .line 356
    :cond_4
    iget v3, p1, Landroid/text/TextPaint;->underlineColor:I

    if-nez v3, :cond_0

    .line 359
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    iget v4, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    invoke-virtual {p1, v3, v4}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_3

    .line 361
    :cond_5
    if-eqz v0, :cond_0

    .line 362
    iget v3, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    iget v4, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    invoke-virtual {p1, v3, v4}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 286
    invoke-virtual {p0, p1, p2}, Landroid/text/style/SuggestionSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 285
    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 291
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mSuggestions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 292
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLocaleStringForCompatibility:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mLanguageTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Landroid/text/style/SuggestionSpan;->mNotificationTargetPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mHashCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mEasyCorrectUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 300
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mMisspelledUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 302
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget v0, p0, Landroid/text/style/SuggestionSpan;->mAutoCorrectionUnderlineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 290
    return-void
.end method
