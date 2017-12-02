.class public final Landroid/print/PrintJobInfo;
.super Ljava/lang/Object;
.source "PrintJobInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintJobInfo$1;,
        Landroid/print/PrintJobInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_ANY:I = -0x1

.field public static final STATE_ANY_ACTIVE:I = -0x3

.field public static final STATE_ANY_SCHEDULED:I = -0x4

.field public static final STATE_ANY_VISIBLE_TO_CLIENTS:I = -0x2

.field public static final STATE_BLOCKED:I = 0x4

.field public static final STATE_CANCELED:I = 0x7

.field public static final STATE_COMPLETED:I = 0x5

.field public static final STATE_CREATED:I = 0x1

.field public static final STATE_FAILED:I = 0x6

.field public static final STATE_QUEUED:I = 0x2

.field public static final STATE_STARTED:I = 0x3


# instance fields
.field private mAdvancedOptions:Landroid/os/Bundle;

.field private mAppId:I

.field private mAttributes:Landroid/print/PrintAttributes;

.field private mCanceling:Z

.field private mCopies:I

.field private mCreationTime:J

.field private mDocumentInfo:Landroid/print/PrintDocumentInfo;

.field private mId:Landroid/print/PrintJobId;

.field private mLabel:Ljava/lang/String;

.field private mPageRanges:[Landroid/print/PageRange;

.field private mPrinterId:Landroid/print/PrinterId;

.field private mPrinterName:Ljava/lang/String;

.field private mProgress:F

.field private mState:I

.field private mStatus:Ljava/lang/CharSequence;

.field private mStatusRes:I

.field private mStatusResAppPackageName:Ljava/lang/CharSequence;

.field private mTag:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/print/PrintJobInfo;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -set0(Landroid/print/PrintJobInfo;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic -set1(Landroid/print/PrintJobInfo;Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes;
    .locals 0

    iput-object p1, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    return-object p1
.end method

.method static synthetic -set2(Landroid/print/PrintJobInfo;I)I
    .locals 0

    iput p1, p0, Landroid/print/PrintJobInfo;->mCopies:I

    return p1
.end method

.method static synthetic -set3(Landroid/print/PrintJobInfo;[Landroid/print/PageRange;)[Landroid/print/PageRange;
    .locals 0

    iput-object p1, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    return-object p1
.end method

.method static synthetic -set4(Landroid/print/PrintJobInfo;F)F
    .locals 0

    iput p1, p0, Landroid/print/PrintJobInfo;->mProgress:F

    return p1
.end method

.method static synthetic -set5(Landroid/print/PrintJobInfo;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Landroid/print/PrintJobInfo;->mStatus:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 873
    new-instance v0, Landroid/print/PrintJobInfo$1;

    invoke-direct {v0}, Landroid/print/PrintJobInfo$1;-><init>()V

    .line 872
    sput-object v0, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/print/PrintJobInfo;->mProgress:F

    .line 200
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v8, 0x0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/print/PrintJobId;

    iput-object v2, p0, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    .line 229
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/print/PrinterId;

    iput-object v2, p0, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/print/PrintJobInfo;->mPrinterName:Ljava/lang/String;

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/print/PrintJobInfo;->mState:I

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/print/PrintJobInfo;->mAppId:I

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/print/PrintJobInfo;->mCreationTime:J

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/print/PrintJobInfo;->mCopies:I

    .line 236
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 237
    .local v1, "parcelables":[Landroid/os/Parcelable;
    if-eqz v1, :cond_0

    .line 238
    array-length v2, v1

    new-array v2, v2, [Landroid/print/PageRange;

    iput-object v2, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    .line 239
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 240
    iget-object v5, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    aget-object v2, v1, v0

    check-cast v2, Landroid/print/PageRange;

    aput-object v2, v5, v0

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 243
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/print/PrintAttributes;

    iput-object v2, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    .line 244
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/print/PrintDocumentInfo;

    iput-object v2, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/print/PrintJobInfo;->mProgress:F

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/print/PrintJobInfo;->mStatus:Ljava/lang/CharSequence;

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/print/PrintJobInfo;->mStatusRes:I

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/print/PrintJobInfo;->mStatusResAppPackageName:Ljava/lang/CharSequence;

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Landroid/print/PrintJobInfo;->mCanceling:Z

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    .line 252
    iget-object v2, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 253
    iget-object v2, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 226
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 249
    goto :goto_1

    :cond_3
    move v4, v3

    .line 253
    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/print/PrintJobInfo;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/print/PrintJobInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/print/PrintJobInfo;)V
    .locals 2
    .param p1, "other"    # Landroid/print/PrintJobInfo;

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    .line 207
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    .line 208
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    .line 209
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mPrinterName:Ljava/lang/String;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mPrinterName:Ljava/lang/String;

    .line 210
    iget v0, p1, Landroid/print/PrintJobInfo;->mState:I

    iput v0, p0, Landroid/print/PrintJobInfo;->mState:I

    .line 211
    iget v0, p1, Landroid/print/PrintJobInfo;->mAppId:I

    iput v0, p0, Landroid/print/PrintJobInfo;->mAppId:I

    .line 212
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    .line 213
    iget-wide v0, p1, Landroid/print/PrintJobInfo;->mCreationTime:J

    iput-wide v0, p0, Landroid/print/PrintJobInfo;->mCreationTime:J

    .line 214
    iget v0, p1, Landroid/print/PrintJobInfo;->mCopies:I

    iput v0, p0, Landroid/print/PrintJobInfo;->mCopies:I

    .line 215
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    .line 216
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    .line 217
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    .line 218
    iget v0, p1, Landroid/print/PrintJobInfo;->mProgress:F

    iput v0, p0, Landroid/print/PrintJobInfo;->mProgress:F

    .line 219
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mStatus:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mStatus:Ljava/lang/CharSequence;

    .line 220
    iget v0, p1, Landroid/print/PrintJobInfo;->mStatusRes:I

    iput v0, p0, Landroid/print/PrintJobInfo;->mStatusRes:I

    .line 221
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mStatusResAppPackageName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mStatusResAppPackageName:Ljava/lang/CharSequence;

    .line 222
    iget-boolean v0, p1, Landroid/print/PrintJobInfo;->mCanceling:Z

    iput-boolean v0, p0, Landroid/print/PrintJobInfo;->mCanceling:Z

    .line 223
    iget-object v0, p1, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    .line 205
    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 706
    packed-switch p0, :pswitch_data_0

    .line 729
    const-string/jumbo v0, "STATE_UNKNOWN"

    return-object v0

    .line 708
    :pswitch_0
    const-string/jumbo v0, "STATE_CREATED"

    return-object v0

    .line 711
    :pswitch_1
    const-string/jumbo v0, "STATE_QUEUED"

    return-object v0

    .line 714
    :pswitch_2
    const-string/jumbo v0, "STATE_STARTED"

    return-object v0

    .line 717
    :pswitch_3
    const-string/jumbo v0, "STATE_BLOCKED"

    return-object v0

    .line 720
    :pswitch_4
    const-string/jumbo v0, "STATE_FAILED"

    return-object v0

    .line 723
    :pswitch_5
    const-string/jumbo v0, "STATE_COMPLETED"

    return-object v0

    .line 726
    :pswitch_6
    const-string/jumbo v0, "STATE_CANCELED"

    return-object v0

    .line 706
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 650
    const/4 v0, 0x0

    return v0
.end method

.method public getAdvancedIntOption(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 620
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 623
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAdvancedOptions()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    return-object v0
.end method

.method public getAdvancedStringOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 605
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 608
    :cond_0
    return-object v1
.end method

.method public getAppId()I
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Landroid/print/PrintJobInfo;->mAppId:I

    return v0
.end method

.method public getAttributes()Landroid/print/PrintAttributes;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    return-object v0
.end method

.method public getCopies()I
    .locals 1

    .prologue
    .line 482
    iget v0, p0, Landroid/print/PrintJobInfo;->mCopies:I

    return v0
.end method

.method public getCreationTime()J
    .locals 2

    .prologue
    .line 459
    iget-wide v0, p0, Landroid/print/PrintJobInfo;->mCreationTime:J

    return-wide v0
.end method

.method public getDocumentInfo()Landroid/print/PrintDocumentInfo;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    return-object v0
.end method

.method public getId()Landroid/print/PrintJobId;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getPages()[Landroid/print/PageRange;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    return-object v0
.end method

.method public getPrinterId()Landroid/print/PrinterId;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    return-object v0
.end method

.method public getPrinterName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mPrinterName:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .prologue
    .line 742
    iget v0, p0, Landroid/print/PrintJobInfo;->mProgress:F

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Landroid/print/PrintJobInfo;->mState:I

    return v0
.end method

.method public getStatus(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 755
    iget v1, p0, Landroid/print/PrintJobInfo;->mStatusRes:I

    if-nez v1, :cond_0

    .line 756
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mStatus:Ljava/lang/CharSequence;

    return-object v1

    .line 759
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mStatusResAppPackageName:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 760
    iget v2, p0, Landroid/print/PrintJobInfo;->mStatusRes:I

    .line 759
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 761
    :catch_0
    move-exception v0

    .line 762
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public hasAdvancedOption(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 593
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCancelling()Z
    .locals 1

    .prologue
    .line 569
    iget-boolean v0, p0, Landroid/print/PrintJobInfo;->mCanceling:Z

    return v0
.end method

.method public setAdvancedOptions(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 645
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    .line 644
    return-void
.end method

.method public setAppId(I)V
    .locals 0
    .param p1, "appId"    # I

    .prologue
    .line 428
    iput p1, p0, Landroid/print/PrintJobInfo;->mAppId:I

    .line 427
    return-void
.end method

.method public setAttributes(Landroid/print/PrintAttributes;)V
    .locals 0
    .param p1, "attributes"    # Landroid/print/PrintAttributes;

    .prologue
    .line 536
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    .line 535
    return-void
.end method

.method public setCancelling(Z)V
    .locals 0
    .param p1, "cancelling"    # Z

    .prologue
    .line 580
    iput-boolean p1, p0, Landroid/print/PrintJobInfo;->mCanceling:Z

    .line 579
    return-void
.end method

.method public setCopies(I)V
    .locals 2
    .param p1, "copyCount"    # I

    .prologue
    .line 493
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 494
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Copies must be more than one."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_0
    iput p1, p0, Landroid/print/PrintJobInfo;->mCopies:I

    .line 492
    return-void
.end method

.method public setCreationTime(J)V
    .locals 3
    .param p1, "creationTime"    # J

    .prologue
    .line 470
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 471
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "creationTime must be non-negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_0
    iput-wide p1, p0, Landroid/print/PrintJobInfo;->mCreationTime:J

    .line 469
    return-void
.end method

.method public setDocumentInfo(Landroid/print/PrintDocumentInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/print/PrintDocumentInfo;

    .prologue
    .line 558
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    .line 557
    return-void
.end method

.method public setId(Landroid/print/PrintJobId;)V
    .locals 0
    .param p1, "id"    # Landroid/print/PrintJobId;

    .prologue
    .line 274
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    .line 273
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 294
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public setPages([Landroid/print/PageRange;)V
    .locals 0
    .param p1, "pageRanges"    # [Landroid/print/PageRange;

    .prologue
    .line 516
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    .line 515
    return-void
.end method

.method public setPrinterId(Landroid/print/PrinterId;)V
    .locals 0
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .prologue
    .line 314
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    .line 313
    return-void
.end method

.method public setPrinterName(Ljava/lang/String;)V
    .locals 0
    .param p1, "printerName"    # Ljava/lang/String;

    .prologue
    .line 336
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mPrinterName:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public setProgress(F)V
    .locals 3
    .param p1, "progress"    # F

    .prologue
    .line 375
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const-string/jumbo v2, "progress"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(FFFLjava/lang/String;)F

    .line 377
    iput p1, p0, Landroid/print/PrintJobInfo;->mProgress:F

    .line 374
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 364
    iput p1, p0, Landroid/print/PrintJobInfo;->mState:I

    .line 363
    return-void
.end method

.method public setStatus(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "appPackageName"    # Ljava/lang/CharSequence;

    .prologue
    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mStatus:Ljava/lang/CharSequence;

    .line 405
    iput p1, p0, Landroid/print/PrintJobInfo;->mStatusRes:I

    .line 406
    iput-object p2, p0, Landroid/print/PrintJobInfo;->mStatusResAppPackageName:Ljava/lang/CharSequence;

    .line 402
    return-void
.end method

.method public setStatus(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/CharSequence;

    .prologue
    .line 388
    const/4 v0, 0x0

    iput v0, p0, Landroid/print/PrintJobInfo;->mStatusRes:I

    .line 389
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/print/PrintJobInfo;->mStatusResAppPackageName:Ljava/lang/CharSequence;

    .line 391
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mStatus:Ljava/lang/CharSequence;

    .line 387
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 450
    iput-object p1, p0, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    .line 449
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 678
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "PrintJobInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    const-string/jumbo v1, "label: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    const-string/jumbo v1, ", id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 681
    const-string/jumbo v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/print/PrintJobInfo;->mState:I

    invoke-static {v3}, Landroid/print/PrintJobInfo;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    const-string/jumbo v1, ", printer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 683
    const-string/jumbo v1, ", tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    const-string/jumbo v1, ", creationTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Landroid/print/PrintJobInfo;->mCreationTime:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 685
    const-string/jumbo v1, ", copies: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/print/PrintJobInfo;->mCopies:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 686
    const-string/jumbo v1, ", attributes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    if-eqz v1, :cond_1

    .line 687
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {v1}, Landroid/print/PrintAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    .line 686
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    const-string/jumbo v1, ", documentInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    if-eqz v1, :cond_2

    .line 689
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    invoke-virtual {v1}, Landroid/print/PrintDocumentInfo;->toString()Ljava/lang/String;

    move-result-object v1

    .line 688
    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    const-string/jumbo v1, ", cancelling: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Landroid/print/PrintJobInfo;->mCanceling:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 691
    const-string/jumbo v1, ", pages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    if-eqz v1, :cond_3

    .line 692
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 691
    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    const-string/jumbo v1, ", hasAdvancedOptions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 694
    const-string/jumbo v1, ", progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/print/PrintJobInfo;->mProgress:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 695
    const-string/jumbo v1, ", status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Landroid/print/PrintJobInfo;->mStatus:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    .line 696
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mStatus:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 695
    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    const-string/jumbo v1, ", statusRes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/print/PrintJobInfo;->mStatusRes:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 698
    const-string/jumbo v1, ", statusResAppPackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/print/PrintJobInfo;->mStatusResAppPackageName:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    .line 699
    iget-object v2, p0, Landroid/print/PrintJobInfo;->mStatusResAppPackageName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 698
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    move-object v1, v2

    .line 687
    goto/16 :goto_0

    :cond_2
    move-object v1, v2

    .line 689
    goto/16 :goto_1

    :cond_3
    move-object v1, v2

    .line 692
    goto :goto_2

    .line 693
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    move-object v1, v2

    .line 696
    goto :goto_4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 655
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mId:Landroid/print/PrintJobId;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 656
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 657
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mPrinterId:Landroid/print/PrinterId;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 658
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mPrinterName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 659
    iget v1, p0, Landroid/print/PrintJobInfo;->mState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 660
    iget v1, p0, Landroid/print/PrintJobInfo;->mAppId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 662
    iget-wide v2, p0, Landroid/print/PrintJobInfo;->mCreationTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 663
    iget v1, p0, Landroid/print/PrintJobInfo;->mCopies:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mPageRanges:[Landroid/print/PageRange;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 665
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mAttributes:Landroid/print/PrintAttributes;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 666
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mDocumentInfo:Landroid/print/PrintDocumentInfo;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 667
    iget v1, p0, Landroid/print/PrintJobInfo;->mProgress:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 668
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mStatus:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 669
    iget v1, p0, Landroid/print/PrintJobInfo;->mStatusRes:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    iget-object v1, p0, Landroid/print/PrintJobInfo;->mStatusResAppPackageName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 671
    iget-boolean v1, p0, Landroid/print/PrintJobInfo;->mCanceling:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 672
    iget-object v0, p0, Landroid/print/PrintJobInfo;->mAdvancedOptions:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 654
    return-void
.end method
