.class Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker$AbstractDatePickerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCurrentView:I

.field private final mListPosition:I

.field private final mListPositionOffset:I

.field private final mMaxDate:J

.field private final mMinDate:J

.field private final mSelectedDay:I

.field private final mSelectedMonth:I

.field private final mSelectedYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 673
    new-instance v0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState$1;

    invoke-direct {v0}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState$1;-><init>()V

    sput-object v0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 580
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 615
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 616
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedYear:I

    .line 617
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedMonth:I

    .line 618
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedDay:I

    .line 619
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMinDate:J

    .line 620
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMaxDate:J

    .line 621
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mCurrentView:I

    .line 622
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPosition:I

    .line 623
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPositionOffset:I

    .line 614
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;IIIJJ)V
    .locals 13
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "minDate"    # J
    .param p7, "maxDate"    # J

    .prologue
    .line 592
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v12}, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IIIJJIII)V

    .line 591
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;IIIJJIII)V
    .locals 1
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "minDate"    # J
    .param p7, "maxDate"    # J
    .param p9, "currentView"    # I
    .param p10, "listPosition"    # I
    .param p11, "listPositionOffset"    # I

    .prologue
    .line 600
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 601
    iput p2, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedYear:I

    .line 602
    iput p3, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedMonth:I

    .line 603
    iput p4, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedDay:I

    .line 604
    iput-wide p5, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMinDate:J

    .line 605
    iput-wide p7, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMaxDate:J

    .line 606
    iput p9, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mCurrentView:I

    .line 607
    iput p10, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPosition:I

    .line 608
    iput p11, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPositionOffset:I

    .line 599
    return-void
.end method


# virtual methods
.method public getCurrentView()I
    .locals 1

    .prologue
    .line 660
    iget v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mCurrentView:I

    return v0
.end method

.method public getListPosition()I
    .locals 1

    .prologue
    .line 664
    iget v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPosition:I

    return v0
.end method

.method public getListPositionOffset()I
    .locals 1

    .prologue
    .line 668
    iget v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPositionOffset:I

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 656
    iget-wide v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMaxDate:J

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 652
    iget-wide v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMinDate:J

    return-wide v0
.end method

.method public getSelectedDay()I
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedDay:I

    return v0
.end method

.method public getSelectedMonth()I
    .locals 1

    .prologue
    .line 644
    iget v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedMonth:I

    return v0
.end method

.method public getSelectedYear()I
    .locals 1

    .prologue
    .line 648
    iget v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedYear:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 628
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 629
    iget v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    iget v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 631
    iget v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mSelectedDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    iget-wide v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMinDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 633
    iget-wide v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mMaxDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 634
    iget v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mCurrentView:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    iget v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 636
    iget v0, p0, Landroid/widget/DatePicker$AbstractDatePickerDelegate$SavedState;->mListPositionOffset:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    return-void
.end method
