.class public final Landroid/telecom/TelecomAnalytics;
.super Ljava/lang/Object;
.source "TelecomAnalytics.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/TelecomAnalytics$1;,
        Landroid/telecom/TelecomAnalytics$SessionTiming;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/TelecomAnalytics;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallAnalytics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ParcelableCallAnalytics;",
            ">;"
        }
    .end annotation
.end field

.field private mSessionTimings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/TelecomAnalytics$SessionTiming;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Landroid/telecom/TelecomAnalytics$1;

    invoke-direct {v0}, Landroid/telecom/TelecomAnalytics$1;-><init>()V

    .line 31
    sput-object v0, Landroid/telecom/TelecomAnalytics;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/TelecomAnalytics;->mSessionTimings:Ljava/util/List;

    .line 125
    iget-object v0, p0, Landroid/telecom/TelecomAnalytics;->mSessionTimings:Ljava/util/List;

    sget-object v1, Landroid/telecom/TelecomAnalytics$SessionTiming;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/TelecomAnalytics;->mCallAnalytics:Ljava/util/List;

    .line 127
    iget-object v0, p0, Landroid/telecom/TelecomAnalytics;->mCallAnalytics:Ljava/util/List;

    sget-object v1, Landroid/telecom/ParcelableCallAnalytics;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 123
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telecom/TelecomAnalytics;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/TelecomAnalytics;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/TelecomAnalytics$SessionTiming;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ParcelableCallAnalytics;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "sessionTimings":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/TelecomAnalytics$SessionTiming;>;"
    .local p2, "callAnalytics":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ParcelableCallAnalytics;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Landroid/telecom/TelecomAnalytics;->mSessionTimings:Ljava/util/List;

    .line 120
    iput-object p2, p0, Landroid/telecom/TelecomAnalytics;->mCallAnalytics:Ljava/util/List;

    .line 118
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public getCallAnalytics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ParcelableCallAnalytics;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Landroid/telecom/TelecomAnalytics;->mCallAnalytics:Ljava/util/List;

    return-object v0
.end method

.method public getSessionTimings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/TelecomAnalytics$SessionTiming;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Landroid/telecom/TelecomAnalytics;->mSessionTimings:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 145
    iget-object v0, p0, Landroid/telecom/TelecomAnalytics;->mSessionTimings:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 146
    iget-object v0, p0, Landroid/telecom/TelecomAnalytics;->mCallAnalytics:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 144
    return-void
.end method
