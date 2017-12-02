.class Lcom/android/server/job/controllers/TimeController$1;
.super Ljava/lang/Object;
.source "TimeController.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/TimeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/TimeController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/TimeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/controllers/TimeController;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController$1;->this$0:Lcom/android/server/job/controllers/TimeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController$1;->this$0:Lcom/android/server/job/controllers/TimeController;

    invoke-static {v0}, Lcom/android/server/job/controllers/TimeController;->-wrap0(Lcom/android/server/job/controllers/TimeController;)V

    .line 270
    return-void
.end method
