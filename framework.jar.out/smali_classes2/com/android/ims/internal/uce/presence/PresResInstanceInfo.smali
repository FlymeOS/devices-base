.class public Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;
.super Ljava/lang/Object;
.source "PresResInstanceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/presence/PresResInstanceInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final UCE_PRES_RES_INSTANCE_STATE_ACTIVE:I = 0x0

.field public static final UCE_PRES_RES_INSTANCE_STATE_PENDING:I = 0x1

.field public static final UCE_PRES_RES_INSTANCE_STATE_TERMINATED:I = 0x2

.field public static final UCE_PRES_RES_INSTANCE_STATE_UNKNOWN:I = 0x3

.field public static final UCE_PRES_RES_INSTANCE_UNKNOWN:I = 0x4


# instance fields
.field private mId:Ljava/lang/String;

.field private mPresentityUri:Ljava/lang/String;

.field private mReason:Ljava/lang/String;

.field private mResInstanceState:I

.field private mTupleInfoArray:[Lcom/android/ims/internal/uce/presence/PresTupleInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo$1;-><init>()V

    .line 158
    sput-object v0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mId:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mReason:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mPresentityUri:Ljava/lang/String;

    .line 138
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mId:Ljava/lang/String;

    .line 45
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mReason:Ljava/lang/String;

    .line 46
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mPresentityUri:Ljava/lang/String;

    .line 174
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 173
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public getPresentityUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mPresentityUri:Ljava/lang/String;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public getResId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getResInstanceState()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mResInstanceState:I

    return v0
.end method

.method public getTupleInfo()[Lcom/android/ims/internal/uce/presence/PresTupleInfo;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mTupleInfoArray:[Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mId:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mReason:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mResInstanceState:I

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mPresentityUri:Ljava/lang/String;

    .line 184
    const-class v1, Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 183
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 185
    .local v0, "tempParcelableArray":[Landroid/os/Parcelable;
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    iput-object v1, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mTupleInfoArray:[Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    .line 186
    if-eqz v0, :cond_0

    .line 187
    array-length v1, v0

    .line 188
    const-class v2, [Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    .line 187
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    iput-object v1, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mTupleInfoArray:[Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    .line 178
    :cond_0
    return-void
.end method

.method public setPresentityUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "presentityUri"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mPresentityUri:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mReason:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setResId(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceId"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mId:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setResInstanceState(I)V
    .locals 0
    .param p1, "nResInstanceState"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mResInstanceState:I

    .line 62
    return-void
.end method

.method public setTupleInfo([Lcom/android/ims/internal/uce/presence/PresTupleInfo;)V
    .locals 1
    .param p1, "tupleInfo"    # [Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    .prologue
    .line 129
    array-length v0, p1

    new-array v0, v0, [Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    iput-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mTupleInfoArray:[Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    .line 130
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mTupleInfoArray:[Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    .line 128
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mResInstanceState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mPresentityUri:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/PresResInstanceInfo;->mTupleInfoArray:[Lcom/android/ims/internal/uce/presence/PresTupleInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 149
    return-void
.end method
