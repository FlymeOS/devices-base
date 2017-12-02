.class public Lcom/android/ims/ImsExternalCallState;
.super Ljava/lang/Object;
.source "ImsExternalCallState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/ImsExternalCallState$1;
    }
.end annotation


# static fields
.field public static final CALL_STATE_CONFIRMED:I = 0x1

.field public static final CALL_STATE_TERMINATED:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/ImsExternalCallState;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ImsExternalCallState"


# instance fields
.field private mAddress:Landroid/net/Uri;

.field private mCallId:I

.field private mCallState:I

.field private mCallType:I

.field private mIsHeld:Z

.field private mIsPullable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/android/ims/ImsExternalCallState$1;

    invoke-direct {v0}, Lcom/android/ims/ImsExternalCallState$1;-><init>()V

    .line 94
    sput-object v0, Lcom/android/ims/ImsExternalCallState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILandroid/net/Uri;ZIIZ)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "isPullable"    # Z
    .param p4, "callState"    # I
    .param p5, "callType"    # I
    .param p6, "isCallheld"    # Z

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput p1, p0, Lcom/android/ims/ImsExternalCallState;->mCallId:I

    .line 59
    iput-object p2, p0, Lcom/android/ims/ImsExternalCallState;->mAddress:Landroid/net/Uri;

    .line 60
    iput-boolean p3, p0, Lcom/android/ims/ImsExternalCallState;->mIsPullable:Z

    .line 61
    iput p4, p0, Lcom/android/ims/ImsExternalCallState;->mCallState:I

    .line 62
    iput p5, p0, Lcom/android/ims/ImsExternalCallState;->mCallType:I

    .line 63
    iput-boolean p6, p0, Lcom/android/ims/ImsExternalCallState;->mIsHeld:Z

    .line 64
    const-string/jumbo v0, "ImsExternalCallState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ImsExternalCallState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/ims/ImsExternalCallState;->mCallId:I

    .line 69
    const-class v1, Lcom/android/ims/ImsExternalCallState;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 70
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/ims/ImsExternalCallState;->mAddress:Landroid/net/Uri;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/ims/ImsExternalCallState;->mIsPullable:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/ims/ImsExternalCallState;->mCallState:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/ims/ImsExternalCallState;->mCallType:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/ims/ImsExternalCallState;->mIsHeld:Z

    .line 75
    const-string/jumbo v1, "ImsExternalCallState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ImsExternalCallState const = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void

    :cond_0
    move v1, v3

    .line 71
    goto :goto_0

    :cond_1
    move v2, v3

    .line 74
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/ims/ImsExternalCallState;->mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public getCallId()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/android/ims/ImsExternalCallState;->mCallId:I

    return v0
.end method

.method public getCallState()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/android/ims/ImsExternalCallState;->mCallState:I

    return v0
.end method

.method public getCallType()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/android/ims/ImsExternalCallState;->mCallType:I

    return v0
.end method

.method public isCallHeld()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/ims/ImsExternalCallState;->mIsHeld:Z

    return v0
.end method

.method public isCallPullable()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/ims/ImsExternalCallState;->mIsPullable:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ImsExternalCallState { mCallId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/ims/ImsExternalCallState;->mCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    const-string/jumbo v1, ", mAddress = "

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/android/ims/ImsExternalCallState;->mAddress:Landroid/net/Uri;

    invoke-static {v1}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    const-string/jumbo v1, ", mIsPullable = "

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    iget-boolean v1, p0, Lcom/android/ims/ImsExternalCallState;->mIsPullable:Z

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    const-string/jumbo v1, ", mCallState = "

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    iget v1, p0, Lcom/android/ims/ImsExternalCallState;->mCallState:I

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    const-string/jumbo v1, ", mCallType = "

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    iget v1, p0, Lcom/android/ims/ImsExternalCallState;->mCallType:I

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    const-string/jumbo v1, ", mIsHeld = "

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    iget-boolean v1, p0, Lcom/android/ims/ImsExternalCallState;->mIsHeld:Z

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    const-string/jumbo v1, "}"

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 85
    iget v0, p0, Lcom/android/ims/ImsExternalCallState;->mCallId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-object v0, p0, Lcom/android/ims/ImsExternalCallState;->mAddress:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 87
    iget-boolean v0, p0, Lcom/android/ims/ImsExternalCallState;->mIsPullable:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget v0, p0, Lcom/android/ims/ImsExternalCallState;->mCallState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget v0, p0, Lcom/android/ims/ImsExternalCallState;->mCallType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget-boolean v0, p0, Lcom/android/ims/ImsExternalCallState;->mIsHeld:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    const-string/jumbo v0, "ImsExternalCallState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ImsExternalCallState writeToParcel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void

    :cond_0
    move v0, v2

    .line 87
    goto :goto_0

    :cond_1
    move v1, v2

    .line 90
    goto :goto_1
.end method
