.class public Landroid/accessibilityservice/GestureDescription$GestureStep;
.super Ljava/lang/Object;
.source "GestureDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/GestureDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GestureStep"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accessibilityservice/GestureDescription$GestureStep$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public numTouchPoints:I

.field public timeSinceGestureStart:J

.field public touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 417
    new-instance v0, Landroid/accessibilityservice/GestureDescription$GestureStep$1;

    invoke-direct {v0}, Landroid/accessibilityservice/GestureDescription$GestureStep$1;-><init>()V

    .line 416
    sput-object v0, Landroid/accessibilityservice/GestureDescription$GestureStep;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 379
    return-void
.end method

.method public constructor <init>(JI[Landroid/accessibilityservice/GestureDescription$TouchPoint;)V
    .locals 5
    .param p1, "timeSinceGestureStart"    # J
    .param p3, "numTouchPoints"    # I
    .param p4, "touchPointsToCopy"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .prologue
    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput-wide p1, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    .line 387
    iput p3, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    .line 388
    new-array v1, p3, [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iput-object v1, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 389
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 390
    iget-object v1, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    new-instance v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v3, p4, v0

    invoke-direct {v2, v3}, Landroid/accessibilityservice/GestureDescription$TouchPoint;-><init>(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    aput-object v2, v1, v0

    .line 389
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 385
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    .line 397
    const-class v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 398
    .local v1, "parcelables":[Landroid/os/Parcelable;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    iput v2, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    .line 399
    iget v2, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    new-array v2, v2, [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iput-object v2, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 400
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v2, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    if-ge v0, v2, :cond_1

    .line 401
    iget-object v3, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v2, v1, v0

    check-cast v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aput-object v2, v3, v0

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 398
    .end local v0    # "i":I
    :cond_0
    array-length v2, v1

    goto :goto_0

    .line 394
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 412
    iget-wide v0, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 413
    iget-object v0, p0, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 411
    return-void
.end method
