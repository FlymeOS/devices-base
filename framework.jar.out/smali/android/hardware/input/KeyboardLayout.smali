.class public final Landroid/hardware/input/KeyboardLayout;
.super Ljava/lang/Object;
.source "KeyboardLayout.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/KeyboardLayout$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/hardware/input/KeyboardLayout;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/input/KeyboardLayout;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCollection:Ljava/lang/String;

.field private final mDescriptor:Ljava/lang/String;

.field private final mLabel:Ljava/lang/String;

.field private final mLocales:Landroid/os/LocaleList;

.field private final mPriority:I

.field private final mProductId:I

.field private final mVendorId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Landroid/hardware/input/KeyboardLayout$1;

    invoke-direct {v0}, Landroid/hardware/input/KeyboardLayout$1;-><init>()V

    .line 42
    sput-object v0, Landroid/hardware/input/KeyboardLayout;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mDescriptor:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/KeyboardLayout;->mPriority:I

    .line 68
    sget-object v0, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLocales:Landroid/os/LocaleList;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/KeyboardLayout;->mVendorId:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/input/KeyboardLayout;->mProductId:I

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/input/KeyboardLayout;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/input/KeyboardLayout;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/LocaleList;II)V
    .locals 0
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "collection"    # Ljava/lang/String;
    .param p4, "priority"    # I
    .param p5, "locales"    # Landroid/os/LocaleList;
    .param p6, "vid"    # I
    .param p7, "pid"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Landroid/hardware/input/KeyboardLayout;->mDescriptor:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    .line 57
    iput p4, p0, Landroid/hardware/input/KeyboardLayout;->mPriority:I

    .line 58
    iput-object p5, p0, Landroid/hardware/input/KeyboardLayout;->mLocales:Landroid/os/LocaleList;

    .line 59
    iput p6, p0, Landroid/hardware/input/KeyboardLayout;->mVendorId:I

    .line 60
    iput p7, p0, Landroid/hardware/input/KeyboardLayout;->mProductId:I

    .line 53
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/hardware/input/KeyboardLayout;)I
    .locals 3
    .param p1, "another"    # Landroid/hardware/input/KeyboardLayout;

    .prologue
    .line 148
    iget v1, p1, Landroid/hardware/input/KeyboardLayout;->mPriority:I

    iget v2, p0, Landroid/hardware/input/KeyboardLayout;->mPriority:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 149
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 150
    iget-object v1, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    iget-object v2, p1, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 152
    :cond_0
    if-nez v0, :cond_1

    .line 153
    iget-object v1, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    iget-object v2, p1, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 155
    :cond_1
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    .prologue
    .line 145
    check-cast p1, Landroid/hardware/input/KeyboardLayout;

    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/hardware/input/KeyboardLayout;->compareTo(Landroid/hardware/input/KeyboardLayout;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public getCollection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getLocales()Landroid/os/LocaleList;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public getProductId()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Landroid/hardware/input/KeyboardLayout;->mProductId:I

    return v0
.end method

.method public getVendorId()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Landroid/hardware/input/KeyboardLayout;->mVendorId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    return-object v0

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 135
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mDescriptor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mCollection:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget v0, p0, Landroid/hardware/input/KeyboardLayout;->mPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object v0, p0, Landroid/hardware/input/KeyboardLayout;->mLocales:Landroid/os/LocaleList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/LocaleList;->writeToParcel(Landroid/os/Parcel;I)V

    .line 140
    iget v0, p0, Landroid/hardware/input/KeyboardLayout;->mVendorId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget v0, p0, Landroid/hardware/input/KeyboardLayout;->mProductId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    return-void
.end method
