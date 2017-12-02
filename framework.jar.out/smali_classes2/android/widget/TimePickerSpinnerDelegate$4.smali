.class Landroid/widget/TimePickerSpinnerDelegate$4;
.super Ljava/lang/Object;
.source "TimePickerSpinnerDelegate.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePickerSpinnerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/widget/TimePickerSpinnerDelegate;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 165
    iput-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate$4;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 2
    .param p1, "picker"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 167
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$4;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->-wrap2(Landroid/widget/TimePickerSpinnerDelegate;)V

    .line 168
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 169
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate$4;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$4;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->-get1(Landroid/widget/TimePickerSpinnerDelegate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Landroid/widget/TimePickerSpinnerDelegate;->-set0(Landroid/widget/TimePickerSpinnerDelegate;Z)Z

    .line 170
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$4;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->-wrap1(Landroid/widget/TimePickerSpinnerDelegate;)V

    .line 171
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate$4;->this$0:Landroid/widget/TimePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerSpinnerDelegate;->-wrap0(Landroid/widget/TimePickerSpinnerDelegate;)V

    .line 166
    return-void

    .line 169
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
