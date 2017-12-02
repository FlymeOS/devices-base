.class Landroid/widget/DatePickerSpinnerDelegate$2;
.super Ljava/lang/Object;
.source "DatePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/widget/CalendarView$OnDateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DatePickerSpinnerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DatePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/widget/DatePickerSpinnerDelegate;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/DatePickerSpinnerDelegate;

    .prologue
    .line 163
    iput-object p1, p0, Landroid/widget/DatePickerSpinnerDelegate$2;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectedDayChange(Landroid/widget/CalendarView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/CalendarView;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "monthDay"    # I

    .prologue
    .line 165
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$2;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v0, p2, p3, p4}, Landroid/widget/DatePickerSpinnerDelegate;->-wrap1(Landroid/widget/DatePickerSpinnerDelegate;III)V

    .line 166
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$2;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->-wrap4(Landroid/widget/DatePickerSpinnerDelegate;)V

    .line 167
    iget-object v0, p0, Landroid/widget/DatePickerSpinnerDelegate$2;->this$0:Landroid/widget/DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePickerSpinnerDelegate;->-wrap0(Landroid/widget/DatePickerSpinnerDelegate;)V

    .line 164
    return-void
.end method
