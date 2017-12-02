.class final Landroid/telecom/TelecomAnalytics$SessionTiming$1;
.super Ljava/lang/Object;
.source "TelecomAnalytics.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/TelecomAnalytics$SessionTiming;
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
        "Landroid/telecom/TelecomAnalytics$SessionTiming;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telecom/TelecomAnalytics$SessionTiming;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 51
    new-instance v0, Landroid/telecom/TelecomAnalytics$SessionTiming;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telecom/TelecomAnalytics$SessionTiming;-><init>(Landroid/os/Parcel;Landroid/telecom/TelecomAnalytics$SessionTiming;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Landroid/telecom/TelecomAnalytics$SessionTiming$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telecom/TelecomAnalytics$SessionTiming;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telecom/TelecomAnalytics$SessionTiming;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 56
    new-array v0, p1, [Landroid/telecom/TelecomAnalytics$SessionTiming;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Landroid/telecom/TelecomAnalytics$SessionTiming$1;->newArray(I)[Landroid/telecom/TelecomAnalytics$SessionTiming;

    move-result-object v0

    return-object v0
.end method
