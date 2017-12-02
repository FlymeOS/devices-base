.class final Landroid/telecom/ParcelableCallAnalytics$EventTiming$1;
.super Ljava/lang/Object;
.source "ParcelableCallAnalytics.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/ParcelableCallAnalytics$EventTiming;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/telecom/ParcelableCallAnalytics$EventTiming;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableCallAnalytics$EventTiming;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 206
    new-instance v0, Landroid/telecom/ParcelableCallAnalytics$EventTiming;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telecom/ParcelableCallAnalytics$EventTiming;-><init>(Landroid/os/Parcel;Landroid/telecom/ParcelableCallAnalytics$EventTiming;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 205
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableCallAnalytics$EventTiming$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/ParcelableCallAnalytics$EventTiming;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telecom/ParcelableCallAnalytics$EventTiming;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 211
    new-array v0, p1, [Landroid/telecom/ParcelableCallAnalytics$EventTiming;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 210
    invoke-virtual {p0, p1}, Landroid/telecom/ParcelableCallAnalytics$EventTiming$1;->newArray(I)[Landroid/telecom/ParcelableCallAnalytics$EventTiming;

    move-result-object v0

    return-object v0
.end method
