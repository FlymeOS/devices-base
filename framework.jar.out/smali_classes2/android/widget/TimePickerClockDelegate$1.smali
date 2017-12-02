.class Landroid/widget/TimePickerClockDelegate$1;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/widget/RadialTimePickerView$OnValueSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePickerClockDelegate;


# direct methods
.method constructor <init>(Landroid/widget/TimePickerClockDelegate;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TimePickerClockDelegate;

    .prologue
    .line 699
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueSelected(IIZ)V
    .locals 6
    .param p1, "pickerType"    # I
    .param p2, "newValue"    # I
    .param p3, "autoAdvance"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 702
    packed-switch p1, :pswitch_data_0

    .line 718
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object v2, v2, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v2, :cond_1

    .line 719
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object v2, v2, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v3, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object v3, v3, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    iget-object v4, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-virtual {v4}, Landroid/widget/TimePickerClockDelegate;->getHour()I

    move-result v4

    iget-object v5, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-virtual {v5}, Landroid/widget/TimePickerClockDelegate;->getMinute()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 701
    :cond_1
    return-void

    .line 704
    :pswitch_0
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v2}, Landroid/widget/TimePickerClockDelegate;->-get0(Landroid/widget/TimePickerClockDelegate;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, p3

    .line 705
    :goto_1
    iget-object v5, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    if-eqz v0, :cond_3

    move v2, v3

    :goto_2
    invoke-static {v5, p2, v4, v2}, Landroid/widget/TimePickerClockDelegate;->-wrap3(Landroid/widget/TimePickerClockDelegate;IZZ)V

    .line 706
    if-eqz v0, :cond_0

    .line 707
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v2, v4, v4, v3}, Landroid/widget/TimePickerClockDelegate;->-wrap2(Landroid/widget/TimePickerClockDelegate;IZZ)V

    .line 709
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v2, p2}, Landroid/widget/TimePickerClockDelegate;->-wrap0(Landroid/widget/TimePickerClockDelegate;I)I

    move-result v1

    .line 710
    .local v1, "localizedHour":I
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    iget-object v2, v2, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->mDelegator:Landroid/widget/TimePicker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v4}, Landroid/widget/TimePickerClockDelegate;->-get5(Landroid/widget/TimePickerClockDelegate;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 704
    .end local v1    # "localizedHour":I
    :cond_2
    const/4 v0, 0x0

    .local v0, "isTransition":Z
    goto :goto_1

    .end local v0    # "isTransition":Z
    :cond_3
    move v2, v4

    .line 705
    goto :goto_2

    .line 714
    :pswitch_1
    iget-object v2, p0, Landroid/widget/TimePickerClockDelegate$1;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v2, p2, v4}, Landroid/widget/TimePickerClockDelegate;->-wrap4(Landroid/widget/TimePickerClockDelegate;IZ)V

    goto :goto_0

    .line 702
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
