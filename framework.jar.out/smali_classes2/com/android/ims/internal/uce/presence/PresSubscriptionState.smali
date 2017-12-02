.class public Lcom/android/ims/internal/uce/presence/PresSubscriptionState;
.super Ljava/lang/Object;
.source "PresSubscriptionState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/internal/uce/presence/PresSubscriptionState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/ims/internal/uce/presence/PresSubscriptionState;",
            ">;"
        }
    .end annotation
.end field

.field public static final UCE_PRES_SUBSCRIPTION_STATE_ACTIVE:I = 0x0

.field public static final UCE_PRES_SUBSCRIPTION_STATE_PENDING:I = 0x1

.field public static final UCE_PRES_SUBSCRIPTION_STATE_TERMINATED:I = 0x2

.field public static final UCE_PRES_SUBSCRIPTION_STATE_UNKNOWN:I = 0x3


# instance fields
.field private mPresSubscriptionState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Lcom/android/ims/internal/uce/presence/PresSubscriptionState$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/presence/PresSubscriptionState$1;-><init>()V

    .line 54
    sput-object v0, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;->mPresSubscriptionState:I

    .line 80
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;->mPresSubscriptionState:I

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;->readFromParcel(Landroid/os/Parcel;)V

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/presence/PresSubscriptionState;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public getPresSubscriptionStateValue()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;->mPresSubscriptionState:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;->mPresSubscriptionState:I

    .line 72
    return-void
.end method

.method public setPresSubscriptionState(I)V
    .locals 0
    .param p1, "nPresSubscriptionState"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;->mPresSubscriptionState:I

    .line 95
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 50
    iget v0, p0, Lcom/android/ims/internal/uce/presence/PresSubscriptionState;->mPresSubscriptionState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    return-void
.end method
